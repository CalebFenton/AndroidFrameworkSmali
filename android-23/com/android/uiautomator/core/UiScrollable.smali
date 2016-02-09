.class public Lcom/android/uiautomator/core/UiScrollable;
.super Lcom/android/uiautomator/core/UiCollection;
.source "UiScrollable.java"


# static fields
.field private static final DEFAULT_SWIPE_DEADZONE_PCT:D = 0.1

.field private static final FLING_STEPS:I = 0x5

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final SCROLL_STEPS:I = 0x37

.field private static mMaxSearchSwipes:I


# instance fields
.field private mIsVerticalList:Z

.field private mSwipeDeadZonePercentage:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 29
    const-class v0, Lcom/android/uiautomator/core/UiScrollable;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/uiautomator/core/UiScrollable;->LOG_TAG:Ljava/lang/String;

    #@8
    .line 40
    const/16 v0, 0x1e

    #@a
    sput v0, Lcom/android/uiautomator/core/UiScrollable;->mMaxSearchSwipes:I

    #@c
    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/android/uiautomator/core/UiSelector;)V
    .locals 2
    .param p1, "container"    # Lcom/android/uiautomator/core/UiSelector;

    #@0
    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/uiautomator/core/UiCollection;-><init>(Lcom/android/uiautomator/core/UiSelector;)V

    #@3
    .line 43
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lcom/android/uiautomator/core/UiScrollable;->mIsVerticalList:Z

    #@6
    .line 45
    const-wide v0, 0x3fb999999999999aL    # 0.1

    #@b
    iput-wide v0, p0, Lcom/android/uiautomator/core/UiScrollable;->mSwipeDeadZonePercentage:D

    #@d
    .line 54
    return-void
.end method


# virtual methods
.method public ensureFullyVisible(Lcom/android/uiautomator/core/UiObject;)Z
    .locals 7
    .param p1, "childObject"    # Lcom/android/uiautomator/core/UiObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v6, 0xa

    #@2
    .line 293
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiObject;->getBounds()Landroid/graphics/Rect;

    #@5
    move-result-object v0

    #@6
    .line 294
    .local v0, "actual":Landroid/graphics/Rect;
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds()Landroid/graphics/Rect;

    #@9
    move-result-object v2

    #@a
    .line 295
    .local v2, "visible":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    #@d
    move-result v3

    #@e
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    #@11
    move-result v4

    #@12
    mul-int/2addr v3, v4

    #@13
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    #@16
    move-result v4

    #@17
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    #@1a
    move-result v5

    #@1b
    mul-int/2addr v4, v5

    #@1c
    if-ne v3, v4, :cond_0

    #@1e
    .line 297
    const/4 v3, 0x1

    #@1f
    return v3

    #@20
    .line 299
    :cond_0
    const/4 v1, 0x0

    #@21
    .line 300
    .local v1, "shouldSwipeForward":Z
    iget-boolean v3, p0, Lcom/android/uiautomator/core/UiScrollable;->mIsVerticalList:Z

    #@23
    if-eqz v3, :cond_2

    #@25
    .line 303
    iget v3, v0, Landroid/graphics/Rect;->top:I

    #@27
    iget v4, v2, Landroid/graphics/Rect;->top:I

    #@29
    if-ne v3, v4, :cond_1

    #@2b
    const/4 v1, 0x1

    #@2c
    .line 309
    :goto_0
    iget-boolean v3, p0, Lcom/android/uiautomator/core/UiScrollable;->mIsVerticalList:Z

    #@2e
    if-eqz v3, :cond_5

    #@30
    .line 310
    if-eqz v1, :cond_4

    #@32
    .line 311
    invoke-virtual {p0, v6}, Lcom/android/uiautomator/core/UiScrollable;->swipeUp(I)Z

    #@35
    move-result v3

    #@36
    return v3

    #@37
    .line 303
    :cond_1
    const/4 v1, 0x0

    #@38
    goto :goto_0

    #@39
    .line 307
    :cond_2
    iget v3, v0, Landroid/graphics/Rect;->left:I

    #@3b
    iget v4, v2, Landroid/graphics/Rect;->left:I

    #@3d
    if-ne v3, v4, :cond_3

    #@3f
    const/4 v1, 0x1

    #@40
    goto :goto_0

    #@41
    :cond_3
    const/4 v1, 0x0

    #@42
    goto :goto_0

    #@43
    .line 313
    :cond_4
    invoke-virtual {p0, v6}, Lcom/android/uiautomator/core/UiScrollable;->swipeDown(I)Z

    #@46
    move-result v3

    #@47
    return v3

    #@48
    .line 316
    :cond_5
    if-eqz v1, :cond_6

    #@4a
    .line 317
    invoke-virtual {p0, v6}, Lcom/android/uiautomator/core/UiScrollable;->swipeLeft(I)Z

    #@4d
    move-result v3

    #@4e
    return v3

    #@4f
    .line 319
    :cond_6
    invoke-virtual {p0, v6}, Lcom/android/uiautomator/core/UiScrollable;->swipeRight(I)Z

    #@52
    move-result v3

    #@53
    return v3
.end method

.method protected exists(Lcom/android/uiautomator/core/UiSelector;)Z
    .locals 1
    .param p1, "selector"    # Lcom/android/uiautomator/core/UiSelector;

    #@0
    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiScrollable;->getQueryController()Lcom/android/uiautomator/core/QueryController;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Lcom/android/uiautomator/core/QueryController;->findAccessibilityNodeInfo(Lcom/android/uiautomator/core/UiSelector;)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 92
    const/4 v0, 0x1

    #@b
    return v0

    #@c
    .line 94
    :cond_0
    const/4 v0, 0x0

    #@d
    return v0
.end method

.method public flingBackward()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 459
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 460
    const/4 v0, 0x5

    #@7
    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiScrollable;->scrollBackward(I)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public flingForward()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 380
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 381
    const/4 v0, 0x5

    #@7
    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiScrollable;->scrollForward(I)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public flingToBeginning(I)Z
    .locals 3
    .param p1, "maxSwipes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 576
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@d
    .line 577
    const/4 v0, 0x5

    #@e
    invoke-virtual {p0, p1, v0}, Lcom/android/uiautomator/core/UiScrollable;->scrollToBeginning(II)Z

    #@11
    move-result v0

    #@12
    return v0
.end method

.method public flingToEnd(I)Z
    .locals 3
    .param p1, "maxSwipes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 627
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@d
    .line 628
    const/4 v0, 0x5

    #@e
    invoke-virtual {p0, p1, v0}, Lcom/android/uiautomator/core/UiScrollable;->scrollToEnd(II)Z

    #@11
    move-result v0

    #@12
    return v0
.end method

.method public getChildByDescription(Lcom/android/uiautomator/core/UiSelector;Ljava/lang/String;)Lcom/android/uiautomator/core/UiObject;
    .locals 3
    .param p1, "childPattern"    # Lcom/android/uiautomator/core/UiSelector;
    .param p2, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 117
    const/4 v0, 0x2

    #@2
    new-array v0, v0, [Ljava/lang/Object;

    #@4
    const/4 v1, 0x0

    #@5
    aput-object p1, v0, v1

    #@7
    aput-object p2, v0, v2

    #@9
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@c
    .line 118
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/uiautomator/core/UiScrollable;->getChildByDescription(Lcom/android/uiautomator/core/UiSelector;Ljava/lang/String;Z)Lcom/android/uiautomator/core/UiObject;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method public getChildByDescription(Lcom/android/uiautomator/core/UiSelector;Ljava/lang/String;Z)Lcom/android/uiautomator/core/UiObject;
    .locals 3
    .param p1, "childPattern"    # Lcom/android/uiautomator/core/UiSelector;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "allowScrollSearch"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 139
    const/4 v0, 0x3

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    const/4 v1, 0x0

    #@4
    aput-object p1, v0, v1

    #@6
    const/4 v1, 0x1

    #@7
    aput-object p2, v0, v1

    #@9
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@c
    move-result-object v1

    #@d
    const/4 v2, 0x2

    #@e
    aput-object v1, v0, v2

    #@10
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@13
    .line 140
    if-eqz p2, :cond_1

    #@15
    .line 141
    if-eqz p3, :cond_0

    #@17
    .line 142
    new-instance v0, Lcom/android/uiautomator/core/UiSelector;

    #@19
    invoke-direct {v0}, Lcom/android/uiautomator/core/UiSelector;-><init>()V

    #@1c
    invoke-virtual {v0, p2}, Lcom/android/uiautomator/core/UiSelector;->descriptionContains(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiScrollable;->scrollIntoView(Lcom/android/uiautomator/core/UiSelector;)Z

    #@23
    .line 144
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/uiautomator/core/UiCollection;->getChildByDescription(Lcom/android/uiautomator/core/UiSelector;Ljava/lang/String;)Lcom/android/uiautomator/core/UiObject;

    #@26
    move-result-object v0

    #@27
    return-object v0

    #@28
    .line 146
    :cond_1
    new-instance v0, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    #@2a
    new-instance v1, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v2, "for description= \""

    #@32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    const-string/jumbo v2, "\""

    #@3d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v1

    #@45
    invoke-direct {v0, v1}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    #@48
    throw v0
.end method

.method public getChildByInstance(Lcom/android/uiautomator/core/UiSelector;I)Lcom/android/uiautomator/core/UiObject;
    .locals 4
    .param p1, "childPattern"    # Lcom/android/uiautomator/core/UiSelector;
    .param p2, "instance"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 163
    const/4 v1, 0x2

    #@1
    new-array v1, v1, [Ljava/lang/Object;

    #@3
    const/4 v2, 0x0

    #@4
    aput-object p1, v1, v2

    #@6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v2

    #@a
    const/4 v3, 0x1

    #@b
    aput-object v2, v1, v3

    #@d
    invoke-static {v1}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@10
    .line 164
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiScrollable;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    #@13
    move-result-object v1

    #@14
    .line 165
    invoke-static {p1}, Lcom/android/uiautomator/core/UiSelector;->patternBuilder(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiSelector;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, p2}, Lcom/android/uiautomator/core/UiSelector;->instance(I)Lcom/android/uiautomator/core/UiSelector;

    #@1b
    move-result-object v2

    #@1c
    .line 164
    invoke-static {v1, v2}, Lcom/android/uiautomator/core/UiSelector;->patternBuilder(Lcom/android/uiautomator/core/UiSelector;Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiSelector;

    #@1f
    move-result-object v0

    #@20
    .line 166
    .local v0, "patternSelector":Lcom/android/uiautomator/core/UiSelector;
    new-instance v1, Lcom/android/uiautomator/core/UiObject;

    #@22
    invoke-direct {v1, v0}, Lcom/android/uiautomator/core/UiObject;-><init>(Lcom/android/uiautomator/core/UiSelector;)V

    #@25
    return-object v1
.end method

.method public getChildByText(Lcom/android/uiautomator/core/UiSelector;Ljava/lang/String;)Lcom/android/uiautomator/core/UiObject;
    .locals 3
    .param p1, "childPattern"    # Lcom/android/uiautomator/core/UiSelector;
    .param p2, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 188
    const/4 v0, 0x2

    #@2
    new-array v0, v0, [Ljava/lang/Object;

    #@4
    const/4 v1, 0x0

    #@5
    aput-object p1, v0, v1

    #@7
    aput-object p2, v0, v2

    #@9
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@c
    .line 189
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/uiautomator/core/UiScrollable;->getChildByText(Lcom/android/uiautomator/core/UiSelector;Ljava/lang/String;Z)Lcom/android/uiautomator/core/UiObject;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method public getChildByText(Lcom/android/uiautomator/core/UiSelector;Ljava/lang/String;Z)Lcom/android/uiautomator/core/UiObject;
    .locals 3
    .param p1, "childPattern"    # Lcom/android/uiautomator/core/UiSelector;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "allowScrollSearch"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 209
    const/4 v0, 0x3

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    const/4 v1, 0x0

    #@4
    aput-object p1, v0, v1

    #@6
    const/4 v1, 0x1

    #@7
    aput-object p2, v0, v1

    #@9
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@c
    move-result-object v1

    #@d
    const/4 v2, 0x2

    #@e
    aput-object v1, v0, v2

    #@10
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@13
    .line 210
    if-eqz p2, :cond_1

    #@15
    .line 211
    if-eqz p3, :cond_0

    #@17
    .line 212
    new-instance v0, Lcom/android/uiautomator/core/UiSelector;

    #@19
    invoke-direct {v0}, Lcom/android/uiautomator/core/UiSelector;-><init>()V

    #@1c
    invoke-virtual {v0, p2}, Lcom/android/uiautomator/core/UiSelector;->text(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiScrollable;->scrollIntoView(Lcom/android/uiautomator/core/UiSelector;)Z

    #@23
    .line 214
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/uiautomator/core/UiCollection;->getChildByText(Lcom/android/uiautomator/core/UiSelector;Ljava/lang/String;)Lcom/android/uiautomator/core/UiObject;

    #@26
    move-result-object v0

    #@27
    return-object v0

    #@28
    .line 216
    :cond_1
    new-instance v0, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    #@2a
    new-instance v1, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v2, "for text= \""

    #@32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    const-string/jumbo v2, "\""

    #@3d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v1

    #@45
    invoke-direct {v0, v1}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    #@48
    throw v0
.end method

.method public getMaxSearchSwipes()I
    .locals 1

    #@0
    .prologue
    .line 364
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 365
    sget v0, Lcom/android/uiautomator/core/UiScrollable;->mMaxSearchSwipes:I

    #@8
    return v0
.end method

.method public getSwipeDeadZonePercentage()D
    .locals 2

    #@0
    .prologue
    .line 643
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 644
    iget-wide v0, p0, Lcom/android/uiautomator/core/UiScrollable;->mSwipeDeadZonePercentage:D

    #@8
    return-wide v0
.end method

.method public scrollBackward()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 475
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 476
    const/16 v0, 0x37

    #@8
    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiScrollable;->scrollBackward(I)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public scrollBackward(I)Z
    .locals 14
    .param p1, "steps"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 491
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v5

    #@7
    const/4 v9, 0x0

    #@8
    aput-object v5, v0, v9

    #@a
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@d
    .line 492
    sget-object v0, Lcom/android/uiautomator/core/UiScrollable;->LOG_TAG:Ljava/lang/String;

    #@f
    new-instance v5, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v9, "scrollBackward() on selector = "

    #@17
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v5

    #@1b
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiScrollable;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    #@1e
    move-result-object v9

    #@1f
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v5

    #@23
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v5

    #@27
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 493
    const-wide/16 v10, 0x2710

    #@2c
    invoke-virtual {p0, v10, v11}, Lcom/android/uiautomator/core/UiScrollable;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2f
    move-result-object v6

    #@30
    .line 494
    .local v6, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v6, :cond_0

    #@32
    .line 495
    new-instance v0, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    #@34
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiScrollable;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    #@37
    move-result-object v5

    #@38
    invoke-virtual {v5}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    #@3b
    move-result-object v5

    #@3c
    invoke-direct {v0, v5}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v0

    #@40
    .line 497
    :cond_0
    new-instance v7, Landroid/graphics/Rect;

    #@42
    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    #@45
    .line 498
    .local v7, "rect":Landroid/graphics/Rect;
    invoke-virtual {v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    #@48
    .line 500
    const/4 v1, 0x0

    #@49
    .line 501
    .local v1, "downX":I
    const/4 v2, 0x0

    #@4a
    .line 502
    .local v2, "downY":I
    const/4 v3, 0x0

    #@4b
    .line 503
    .local v3, "upX":I
    const/4 v4, 0x0

    #@4c
    .line 507
    .local v4, "upY":I
    iget-boolean v0, p0, Lcom/android/uiautomator/core/UiScrollable;->mIsVerticalList:Z

    #@4e
    if-eqz v0, :cond_1

    #@50
    .line 508
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    #@53
    move-result v0

    #@54
    int-to-double v10, v0

    #@55
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiScrollable;->getSwipeDeadZonePercentage()D

    #@58
    move-result-wide v12

    #@59
    mul-double/2addr v10, v12

    #@5a
    double-to-int v8, v10

    #@5b
    .line 509
    .local v8, "swipeAreaAdjust":I
    sget-object v0, Lcom/android/uiautomator/core/UiScrollable;->LOG_TAG:Ljava/lang/String;

    #@5d
    const-string/jumbo v5, "scrollToBegining() using vertical scroll"

    #@60
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@63
    .line 511
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    #@66
    move-result v1

    #@67
    .line 512
    iget v0, v7, Landroid/graphics/Rect;->top:I

    #@69
    add-int v2, v0, v8

    #@6b
    .line 513
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    #@6e
    move-result v3

    #@6f
    .line 514
    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    #@71
    sub-int v4, v0, v8

    #@73
    .line 525
    :goto_0
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiScrollable;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    #@76
    move-result-object v0

    #@77
    move v5, p1

    #@78
    invoke-virtual/range {v0 .. v5}, Lcom/android/uiautomator/core/InteractionController;->scrollSwipe(IIIII)Z

    #@7b
    move-result v0

    #@7c
    return v0

    #@7d
    .line 516
    .end local v8    # "swipeAreaAdjust":I
    :cond_1
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    #@80
    move-result v0

    #@81
    int-to-double v10, v0

    #@82
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiScrollable;->getSwipeDeadZonePercentage()D

    #@85
    move-result-wide v12

    #@86
    mul-double/2addr v10, v12

    #@87
    double-to-int v8, v10

    #@88
    .line 517
    .restart local v8    # "swipeAreaAdjust":I
    sget-object v0, Lcom/android/uiautomator/core/UiScrollable;->LOG_TAG:Ljava/lang/String;

    #@8a
    const-string/jumbo v5, "scrollToBegining() using hotizontal scroll"

    #@8d
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@90
    .line 520
    iget v0, v7, Landroid/graphics/Rect;->left:I

    #@92
    add-int v1, v0, v8

    #@94
    .line 521
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    #@97
    move-result v2

    #@98
    .line 522
    iget v0, v7, Landroid/graphics/Rect;->right:I

    #@9a
    sub-int v3, v0, v8

    #@9c
    .line 523
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    #@9f
    move-result v4

    #@a0
    goto :goto_0
.end method

.method public scrollDescriptionIntoView(Ljava/lang/String;)Z
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 229
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    const/4 v1, 0x0

    #@4
    aput-object p1, v0, v1

    #@6
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@9
    .line 230
    new-instance v0, Lcom/android/uiautomator/core/UiSelector;

    #@b
    invoke-direct {v0}, Lcom/android/uiautomator/core/UiSelector;-><init>()V

    #@e
    invoke-virtual {v0, p1}, Lcom/android/uiautomator/core/UiSelector;->description(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiScrollable;->scrollIntoView(Lcom/android/uiautomator/core/UiSelector;)Z

    #@15
    move-result v0

    #@16
    return v0
.end method

.method public scrollForward()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 396
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 397
    const/16 v0, 0x37

    #@8
    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiScrollable;->scrollForward(I)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public scrollForward(I)Z
    .locals 14
    .param p1, "steps"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 412
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v5

    #@7
    const/4 v9, 0x0

    #@8
    aput-object v5, v0, v9

    #@a
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@d
    .line 413
    sget-object v0, Lcom/android/uiautomator/core/UiScrollable;->LOG_TAG:Ljava/lang/String;

    #@f
    new-instance v5, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v9, "scrollForward() on selector = "

    #@17
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v5

    #@1b
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiScrollable;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    #@1e
    move-result-object v9

    #@1f
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v5

    #@23
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v5

    #@27
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 414
    const-wide/16 v10, 0x2710

    #@2c
    invoke-virtual {p0, v10, v11}, Lcom/android/uiautomator/core/UiScrollable;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2f
    move-result-object v6

    #@30
    .line 415
    .local v6, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v6, :cond_0

    #@32
    .line 416
    new-instance v0, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    #@34
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiScrollable;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    #@37
    move-result-object v5

    #@38
    invoke-virtual {v5}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    #@3b
    move-result-object v5

    #@3c
    invoke-direct {v0, v5}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v0

    #@40
    .line 418
    :cond_0
    new-instance v7, Landroid/graphics/Rect;

    #@42
    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    #@45
    .line 419
    .local v7, "rect":Landroid/graphics/Rect;
    invoke-virtual {v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    #@48
    .line 421
    const/4 v1, 0x0

    #@49
    .line 422
    .local v1, "downX":I
    const/4 v2, 0x0

    #@4a
    .line 423
    .local v2, "downY":I
    const/4 v3, 0x0

    #@4b
    .line 424
    .local v3, "upX":I
    const/4 v4, 0x0

    #@4c
    .line 428
    .local v4, "upY":I
    iget-boolean v0, p0, Lcom/android/uiautomator/core/UiScrollable;->mIsVerticalList:Z

    #@4e
    if-eqz v0, :cond_1

    #@50
    .line 429
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    #@53
    move-result v0

    #@54
    int-to-double v10, v0

    #@55
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiScrollable;->getSwipeDeadZonePercentage()D

    #@58
    move-result-wide v12

    #@59
    mul-double/2addr v10, v12

    #@5a
    double-to-int v8, v10

    #@5b
    .line 431
    .local v8, "swipeAreaAdjust":I
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    #@5e
    move-result v1

    #@5f
    .line 432
    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    #@61
    sub-int v2, v0, v8

    #@63
    .line 433
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    #@66
    move-result v3

    #@67
    .line 434
    iget v0, v7, Landroid/graphics/Rect;->top:I

    #@69
    add-int v4, v0, v8

    #@6b
    .line 444
    :goto_0
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiScrollable;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    #@6e
    move-result-object v0

    #@6f
    move v5, p1

    #@70
    invoke-virtual/range {v0 .. v5}, Lcom/android/uiautomator/core/InteractionController;->scrollSwipe(IIIII)Z

    #@73
    move-result v0

    #@74
    return v0

    #@75
    .line 436
    .end local v8    # "swipeAreaAdjust":I
    :cond_1
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    #@78
    move-result v0

    #@79
    int-to-double v10, v0

    #@7a
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiScrollable;->getSwipeDeadZonePercentage()D

    #@7d
    move-result-wide v12

    #@7e
    mul-double/2addr v10, v12

    #@7f
    double-to-int v8, v10

    #@80
    .line 439
    .restart local v8    # "swipeAreaAdjust":I
    iget v0, v7, Landroid/graphics/Rect;->right:I

    #@82
    sub-int v1, v0, v8

    #@84
    .line 440
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    #@87
    move-result v2

    #@88
    .line 441
    iget v0, v7, Landroid/graphics/Rect;->left:I

    #@8a
    add-int v3, v0, v8

    #@8c
    .line 442
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    #@8f
    move-result v4

    #@90
    goto :goto_0
.end method

.method public scrollIntoView(Lcom/android/uiautomator/core/UiObject;)Z
    .locals 3
    .param p1, "obj"    # Lcom/android/uiautomator/core/UiObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 242
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@d
    .line 243
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiScrollable;->scrollIntoView(Lcom/android/uiautomator/core/UiSelector;)Z

    #@14
    move-result v0

    #@15
    return v0
.end method

.method public scrollIntoView(Lcom/android/uiautomator/core/UiSelector;)Z
    .locals 6
    .param p1, "selector"    # Lcom/android/uiautomator/core/UiSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    .line 257
    new-array v3, v4, [Ljava/lang/Object;

    #@4
    aput-object p1, v3, v5

    #@6
    invoke-static {v3}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@9
    .line 259
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiScrollable;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    #@c
    move-result-object v3

    #@d
    invoke-virtual {v3, p1}, Lcom/android/uiautomator/core/UiSelector;->childSelector(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiSelector;

    #@10
    move-result-object v0

    #@11
    .line 260
    .local v0, "childSelector":Lcom/android/uiautomator/core/UiSelector;
    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiScrollable;->exists(Lcom/android/uiautomator/core/UiSelector;)Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_0

    #@17
    .line 261
    return v4

    #@18
    .line 264
    :cond_0
    sget v3, Lcom/android/uiautomator/core/UiScrollable;->mMaxSearchSwipes:I

    #@1a
    invoke-virtual {p0, v3}, Lcom/android/uiautomator/core/UiScrollable;->scrollToBeginning(I)Z

    #@1d
    .line 265
    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiScrollable;->exists(Lcom/android/uiautomator/core/UiSelector;)Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_1

    #@23
    .line 266
    return v4

    #@24
    .line 268
    :cond_1
    const/4 v2, 0x0

    #@25
    .local v2, "x":I
    :goto_0
    sget v3, Lcom/android/uiautomator/core/UiScrollable;->mMaxSearchSwipes:I

    #@27
    if-ge v2, v3, :cond_4

    #@29
    .line 269
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiScrollable;->scrollForward()Z

    #@2c
    move-result v1

    #@2d
    .line 270
    .local v1, "scrolled":Z
    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiScrollable;->exists(Lcom/android/uiautomator/core/UiSelector;)Z

    #@30
    move-result v3

    #@31
    if-eqz v3, :cond_2

    #@33
    .line 271
    return v4

    #@34
    .line 273
    :cond_2
    if-nez v1, :cond_3

    #@36
    .line 274
    return v5

    #@37
    .line 268
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 278
    .end local v1    # "scrolled":Z
    :cond_4
    return v5
.end method

.method public scrollTextIntoView(Ljava/lang/String;)Z
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 334
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    const/4 v1, 0x0

    #@4
    aput-object p1, v0, v1

    #@6
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@9
    .line 335
    new-instance v0, Lcom/android/uiautomator/core/UiSelector;

    #@b
    invoke-direct {v0}, Lcom/android/uiautomator/core/UiSelector;-><init>()V

    #@e
    invoke-virtual {v0, p1}, Lcom/android/uiautomator/core/UiSelector;->text(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiScrollable;->scrollIntoView(Lcom/android/uiautomator/core/UiSelector;)Z

    #@15
    move-result v0

    #@16
    return v0
.end method

.method public scrollToBeginning(I)Z
    .locals 3
    .param p1, "maxSwipes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 561
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@d
    .line 562
    const/16 v0, 0x37

    #@f
    invoke-virtual {p0, p1, v0}, Lcom/android/uiautomator/core/UiScrollable;->scrollToBeginning(II)Z

    #@12
    move-result v0

    #@13
    return v0
.end method

.method public scrollToBeginning(II)Z
    .locals 5
    .param p1, "maxSwipes"    # I
    .param p2, "steps"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 539
    const/4 v1, 0x2

    #@2
    new-array v1, v1, [Ljava/lang/Object;

    #@4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7
    move-result-object v2

    #@8
    const/4 v3, 0x0

    #@9
    aput-object v2, v1, v3

    #@b
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object v2

    #@f
    aput-object v2, v1, v4

    #@11
    invoke-static {v1}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@14
    .line 540
    sget-object v1, Lcom/android/uiautomator/core/UiScrollable;->LOG_TAG:Ljava/lang/String;

    #@16
    new-instance v2, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v3, "scrollToBeginning() on selector = "

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiScrollable;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    .line 542
    const/4 v0, 0x0

    #@32
    .local v0, "x":I
    :goto_0
    if-ge v0, p1, :cond_0

    #@34
    .line 543
    invoke-virtual {p0, p2}, Lcom/android/uiautomator/core/UiScrollable;->scrollBackward(I)Z

    #@37
    move-result v1

    #@38
    if-nez v1, :cond_1

    #@3a
    .line 547
    :cond_0
    return v4

    #@3b
    .line 542
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@3d
    goto :goto_0
.end method

.method public scrollToEnd(I)Z
    .locals 3
    .param p1, "maxSwipes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 612
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@d
    .line 613
    const/16 v0, 0x37

    #@f
    invoke-virtual {p0, p1, v0}, Lcom/android/uiautomator/core/UiScrollable;->scrollToEnd(II)Z

    #@12
    move-result v0

    #@13
    return v0
.end method

.method public scrollToEnd(II)Z
    .locals 5
    .param p1, "maxSwipes"    # I
    .param p2, "steps"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 591
    const/4 v1, 0x2

    #@2
    new-array v1, v1, [Ljava/lang/Object;

    #@4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7
    move-result-object v2

    #@8
    const/4 v3, 0x0

    #@9
    aput-object v2, v1, v3

    #@b
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object v2

    #@f
    aput-object v2, v1, v4

    #@11
    invoke-static {v1}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@14
    .line 593
    const/4 v0, 0x0

    #@15
    .local v0, "x":I
    :goto_0
    if-ge v0, p1, :cond_0

    #@17
    .line 594
    invoke-virtual {p0, p2}, Lcom/android/uiautomator/core/UiScrollable;->scrollForward(I)Z

    #@1a
    move-result v1

    #@1b
    if-nez v1, :cond_1

    #@1d
    .line 598
    :cond_0
    return v4

    #@1e
    .line 593
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_0
.end method

.method public setAsHorizontalList()Lcom/android/uiautomator/core/UiScrollable;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 77
    new-array v0, v1, [Ljava/lang/Object;

    #@3
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 78
    iput-boolean v1, p0, Lcom/android/uiautomator/core/UiScrollable;->mIsVerticalList:Z

    #@8
    .line 79
    return-object p0
.end method

.method public setAsVerticalList()Lcom/android/uiautomator/core/UiScrollable;
    .locals 1

    #@0
    .prologue
    .line 66
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 67
    const/4 v0, 0x1

    #@7
    iput-boolean v0, p0, Lcom/android/uiautomator/core/UiScrollable;->mIsVerticalList:Z

    #@9
    .line 68
    return-object p0
.end method

.method public setMaxSearchSwipes(I)Lcom/android/uiautomator/core/UiScrollable;
    .locals 3
    .param p1, "swipes"    # I

    #@0
    .prologue
    .line 349
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@d
    .line 350
    sput p1, Lcom/android/uiautomator/core/UiScrollable;->mMaxSearchSwipes:I

    #@f
    .line 351
    return-object p0
.end method

.method public setSwipeDeadZonePercentage(D)Lcom/android/uiautomator/core/UiScrollable;
    .locals 3
    .param p1, "swipeDeadZonePercentage"    # D

    #@0
    .prologue
    .line 661
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@d
    .line 662
    iput-wide p1, p0, Lcom/android/uiautomator/core/UiScrollable;->mSwipeDeadZonePercentage:D

    #@f
    .line 663
    return-object p0
.end method
