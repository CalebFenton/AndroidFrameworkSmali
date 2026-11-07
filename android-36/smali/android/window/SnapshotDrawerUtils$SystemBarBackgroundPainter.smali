.class public Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;
.super Ljava/lang/Object;
.source "SnapshotDrawerUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/SnapshotDrawerUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemBarBackgroundPainter"
.end annotation


# instance fields
.field private final blacklist mNavigationBarColor:I

.field private final blacklist mNavigationBarPaint:Landroid/graphics/Paint;

.field private final blacklist mRequestedVisibleTypes:I

.field private final blacklist mScale:F

.field private final blacklist mStatusBarColor:I

.field private final blacklist mStatusBarPaint:Landroid/graphics/Paint;

.field private final blacklist mSystemBarInsets:Landroid/graphics/Rect;

.field private final blacklist mWindowFlags:I

.field private final blacklist mWindowPrivateFlags:I


# direct methods
.method public constructor blacklist <init>(IIILandroid/app/ActivityManager$TaskDescription;FI)V
    .registers 17
    .param p1, "windowFlags"    # I
    .param p2, "windowPrivateFlags"    # I
    .param p3, "appearance"    # I
    .param p4, "taskDescription"    # Landroid/app/ActivityManager$TaskDescription;
    .param p5, "scale"    # F
    .param p6, "requestedVisibleTypes"    # I

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mStatusBarPaint:Landroid/graphics/Paint;

    .line 279
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mNavigationBarPaint:Landroid/graphics/Paint;

    .line 286
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mSystemBarInsets:Landroid/graphics/Rect;

    .line 291
    iput p1, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mWindowFlags:I

    .line 292
    iput p2, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mWindowPrivateFlags:I

    .line 293
    iput p5, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mScale:F

    .line 294
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/content/Context;

    move-result-object v0

    .line 295
    .local v0, "context":Landroid/content/Context;
    const v1, 0x106037b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v4

    .line 297
    .local v4, "semiTransparent":I
    nop

    .line 298
    invoke-virtual {p4}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v5

    .line 300
    invoke-virtual {p4}, Landroid/app/ActivityManager$TaskDescription;->getEnsureStatusBarContrastWhenTransparent()Z

    move-result v8

    .line 297
    const/high16 v3, 0x4000000

    const/16 v7, 0x8

    const/4 v9, 0x0

    move v2, p1

    move v6, p3

    invoke-static/range {v2 .. v9}, Lcom/android/internal/policy/DecorView;->calculateBarColor(IIIIIIZZ)I

    move-result v1

    iput v1, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mStatusBarColor:I

    .line 302
    nop

    .line 304
    invoke-virtual {p4}, Landroid/app/ActivityManager$TaskDescription;->getNavigationBarColor()I

    move-result v5

    .line 306
    invoke-virtual {p4}, Landroid/app/ActivityManager$TaskDescription;->getEnsureNavigationBarContrastWhenTransparent()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_5f

    .line 307
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x11101fa

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_5f

    move v8, v2

    goto :goto_60

    :cond_5f
    move v8, v3

    :goto_60
    and-int/lit16 v1, p2, 0x800

    if-eqz v1, :cond_66

    move v9, v2

    goto :goto_67

    :cond_66
    move v9, v3

    .line 302
    :goto_67
    const/high16 v3, 0x8000000

    const/16 v7, 0x10

    move v2, p1

    move v6, p3

    invoke-static/range {v2 .. v9}, Lcom/android/internal/policy/DecorView;->calculateBarColor(IIIIIIZZ)I

    move-result v1

    iput v1, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mNavigationBarColor:I

    .line 310
    iget-object v1, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mStatusBarPaint:Landroid/graphics/Paint;

    iget v2, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mStatusBarColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 311
    iget-object v1, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mNavigationBarPaint:Landroid/graphics/Paint;

    iget v2, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mNavigationBarColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 312
    move/from16 v1, p6

    iput v1, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mRequestedVisibleTypes:I

    .line 313
    return-void
.end method

.method private blacklist isNavigationBarColorViewVisible()Z
    .registers 6

    .line 335
    iget v0, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mWindowPrivateFlags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 337
    .local v0, "forceBarBackground":Z
    :goto_b
    sget-object v1, Lcom/android/internal/policy/DecorView;->NAVIGATION_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget v2, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mRequestedVisibleTypes:I

    iget v3, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mNavigationBarColor:I

    iget v4, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mWindowFlags:I

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->isVisible(IIIZ)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public blacklist drawDecors(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "alreadyDrawnFrame"    # Landroid/graphics/Rect;

    .line 346
    invoke-virtual {p0}, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->getStatusBarColorViewHeight()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->drawStatusBarBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 347
    invoke-virtual {p0, p1}, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->drawNavigationBarBackground(Landroid/graphics/Canvas;)V

    .line 348
    return-void
.end method

.method blacklist drawNavigationBarBackground(Landroid/graphics/Canvas;)V
    .registers 7
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 362
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 363
    .local v0, "navigationBarRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    iget-object v3, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mSystemBarInsets:Landroid/graphics/Rect;

    iget v4, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mScale:F

    invoke-static {v1, v2, v3, v0, v4}, Lcom/android/internal/policy/DecorView;->getNavigationBarRect(IILandroid/graphics/Rect;Landroid/graphics/Rect;F)V

    .line 365
    invoke-direct {p0}, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->isNavigationBarColorViewVisible()Z

    move-result v1

    .line 366
    .local v1, "visible":Z
    if-eqz v1, :cond_2d

    iget v2, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mNavigationBarColor:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-eqz v2, :cond_2d

    .line 367
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2d

    .line 368
    iget-object v2, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mNavigationBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 370
    :cond_2d
    return-void
.end method

.method blacklist drawStatusBarBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .registers 12
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "alreadyDrawnFrame"    # Landroid/graphics/Rect;
    .param p3, "statusBarHeight"    # I

    .line 352
    if-lez p3, :cond_36

    iget v0, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mStatusBarColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_36

    if-eqz p2, :cond_17

    .line 353
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    iget v1, p2, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_15

    goto :goto_17

    :cond_15
    move-object v2, p1

    goto :goto_37

    .line 354
    :cond_17
    :goto_17
    iget-object v0, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mSystemBarInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v1, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 355
    .local v0, "rightInset":I
    if-eqz p2, :cond_25

    iget v1, p2, Landroid/graphics/Rect;->right:I

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    .line 356
    .local v1, "left":I
    :goto_26
    int-to-float v3, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v5, v2

    int-to-float v6, p3

    iget-object v7, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mStatusBarPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object v2, p1

    .end local p1    # "c":Landroid/graphics/Canvas;
    .local v2, "c":Landroid/graphics/Canvas;
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_37

    .line 352
    .end local v0    # "rightInset":I
    .end local v1    # "left":I
    .end local v2    # "c":Landroid/graphics/Canvas;
    .restart local p1    # "c":Landroid/graphics/Canvas;
    :cond_36
    move-object v2, p1

    .line 359
    .end local p1    # "c":Landroid/graphics/Canvas;
    .restart local v2    # "c":Landroid/graphics/Canvas;
    :goto_37
    return-void
.end method

.method blacklist getStatusBarColorViewHeight()I
    .registers 7

    .line 323
    iget v0, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mWindowPrivateFlags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    move v0, v1

    .line 325
    .local v0, "forceBarBackground":Z
    :goto_c
    sget-object v2, Lcom/android/internal/policy/DecorView;->STATUS_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget v3, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mRequestedVisibleTypes:I

    iget v4, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mStatusBarColor:I

    iget v5, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mWindowFlags:I

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->isVisible(IIIZ)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 328
    iget-object v1, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mSystemBarInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    return v1

    .line 330
    :cond_24
    return v1
.end method

.method public blacklist setInsets(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "systemBarInsets"    # Landroid/graphics/Rect;

    .line 319
    iget-object v0, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mSystemBarInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 320
    return-void
.end method
