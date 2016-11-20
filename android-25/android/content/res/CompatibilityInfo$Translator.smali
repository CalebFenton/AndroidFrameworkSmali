.class public Landroid/content/res/CompatibilityInfo$Translator;
.super Ljava/lang/Object;
.source "CompatibilityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/CompatibilityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Translator"
.end annotation


# instance fields
.field public final applicationInvertedScale:F

.field public final applicationScale:F

.field private mContentInsetsBuffer:Landroid/graphics/Rect;

.field private mTouchableAreaBuffer:Landroid/graphics/Region;

.field private mVisibleInsetsBuffer:Landroid/graphics/Rect;

.field final synthetic this$0:Landroid/content/res/CompatibilityInfo;


# direct methods
.method constructor <init>(Landroid/content/res/CompatibilityInfo;)V
    .locals 2
    .param p1, "this$0"    # Landroid/content/res/CompatibilityInfo;

    #@0
    .prologue
    .line 303
    iget v0, p1, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    #@2
    .line 304
    iget v1, p1, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    #@4
    .line 303
    invoke-direct {p0, p1, v0, v1}, Landroid/content/res/CompatibilityInfo$Translator;-><init>(Landroid/content/res/CompatibilityInfo;FF)V

    #@7
    .line 302
    return-void
.end method

.method constructor <init>(Landroid/content/res/CompatibilityInfo;FF)V
    .locals 1
    .param p1, "this$0"    # Landroid/content/res/CompatibilityInfo;
    .param p2, "applicationScale"    # F
    .param p3, "applicationInvertedScale"    # F

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 297
    iput-object p1, p0, Landroid/content/res/CompatibilityInfo$Translator;->this$0:Landroid/content/res/CompatibilityInfo;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 293
    iput-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mContentInsetsBuffer:Landroid/graphics/Rect;

    #@8
    .line 294
    iput-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mVisibleInsetsBuffer:Landroid/graphics/Rect;

    #@a
    .line 295
    iput-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mTouchableAreaBuffer:Landroid/graphics/Region;

    #@c
    .line 298
    iput p2, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    #@e
    .line 299
    iput p3, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    #@10
    .line 297
    return-void
.end method


# virtual methods
.method public getTranslatedContentInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1
    .param p1, "contentInsets"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 400
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mContentInsetsBuffer:Landroid/graphics/Rect;

    #@2
    if-nez v0, :cond_0

    #@4
    new-instance v0, Landroid/graphics/Rect;

    #@6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mContentInsetsBuffer:Landroid/graphics/Rect;

    #@b
    .line 401
    :cond_0
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mContentInsetsBuffer:Landroid/graphics/Rect;

    #@d
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@10
    .line 402
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mContentInsetsBuffer:Landroid/graphics/Rect;

    #@12
    invoke-virtual {p0, v0}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V

    #@15
    .line 403
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mContentInsetsBuffer:Landroid/graphics/Rect;

    #@17
    return-object v0
.end method

.method public getTranslatedTouchableArea(Landroid/graphics/Region;)Landroid/graphics/Region;
    .locals 2
    .param p1, "touchableArea"    # Landroid/graphics/Region;

    #@0
    .prologue
    .line 422
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mTouchableAreaBuffer:Landroid/graphics/Region;

    #@2
    if-nez v0, :cond_0

    #@4
    new-instance v0, Landroid/graphics/Region;

    #@6
    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mTouchableAreaBuffer:Landroid/graphics/Region;

    #@b
    .line 423
    :cond_0
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mTouchableAreaBuffer:Landroid/graphics/Region;

    #@d
    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    #@10
    .line 424
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mTouchableAreaBuffer:Landroid/graphics/Region;

    #@12
    iget v1, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    #@14
    invoke-virtual {v0, v1}, Landroid/graphics/Region;->scale(F)V

    #@17
    .line 425
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mTouchableAreaBuffer:Landroid/graphics/Region;

    #@19
    return-object v0
.end method

.method public getTranslatedVisibleInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1
    .param p1, "visibleInsets"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 411
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mVisibleInsetsBuffer:Landroid/graphics/Rect;

    #@2
    if-nez v0, :cond_0

    #@4
    new-instance v0, Landroid/graphics/Rect;

    #@6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mVisibleInsetsBuffer:Landroid/graphics/Rect;

    #@b
    .line 412
    :cond_0
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mVisibleInsetsBuffer:Landroid/graphics/Rect;

    #@d
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@10
    .line 413
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mVisibleInsetsBuffer:Landroid/graphics/Rect;

    #@12
    invoke-virtual {p0, v0}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V

    #@15
    .line 414
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mVisibleInsetsBuffer:Landroid/graphics/Rect;

    #@17
    return-object v0
.end method

.method public translateCanvas(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    const v3, 0x3b2b5601

    #@3
    .line 325
    iget v1, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    #@5
    const/high16 v2, 0x3fc00000    # 1.5f

    #@7
    cmpl-float v1, v1, v2

    #@9
    if-nez v1, :cond_0

    #@b
    .line 341
    const v0, 0x3b2b5601

    #@e
    .line 342
    .local v0, "tinyOffset":F
    invoke-virtual {p1, v3, v3}, Landroid/graphics/Canvas;->translate(FF)V

    #@11
    .line 344
    .end local v0    # "tinyOffset":F
    :cond_0
    iget v1, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    #@13
    iget v2, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    #@15
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    #@18
    .line 324
    return-void
.end method

.method public translateEventInScreenToAppWindow(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 351
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    #@2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->scale(F)V

    #@5
    .line 350
    return-void
.end method

.method public translateLayoutParamsInAppWindowToScreen(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    #@0
    .prologue
    .line 392
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    #@2
    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->scale(F)V

    #@5
    .line 391
    return-void
.end method

.method public translatePointInScreenToAppWindow(Landroid/graphics/PointF;)V
    .locals 2
    .param p1, "point"    # Landroid/graphics/PointF;

    #@0
    .prologue
    .line 380
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    #@2
    .line 381
    .local v0, "scale":F
    const/high16 v1, 0x3f800000    # 1.0f

    #@4
    cmpl-float v1, v0, v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 382
    iget v1, p1, Landroid/graphics/PointF;->x:F

    #@a
    mul-float/2addr v1, v0

    #@b
    iput v1, p1, Landroid/graphics/PointF;->x:F

    #@d
    .line 383
    iget v1, p1, Landroid/graphics/PointF;->y:F

    #@f
    mul-float/2addr v1, v0

    #@10
    iput v1, p1, Landroid/graphics/PointF;->y:F

    #@12
    .line 379
    :cond_0
    return-void
.end method

.method public translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 366
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    #@2
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->scale(F)V

    #@5
    .line 365
    return-void
.end method

.method public translateRectInScreenToAppWinFrame(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 311
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    #@2
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->scale(F)V

    #@5
    .line 310
    return-void
.end method

.method public translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 373
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    #@2
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->scale(F)V

    #@5
    .line 372
    return-void
.end method

.method public translateRegionInWindowToScreen(Landroid/graphics/Region;)V
    .locals 1
    .param p1, "transparentRegion"    # Landroid/graphics/Region;

    #@0
    .prologue
    .line 318
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    #@2
    invoke-virtual {p1, v0}, Landroid/graphics/Region;->scale(F)V

    #@5
    .line 317
    return-void
.end method

.method public translateWindowLayout(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    #@0
    .prologue
    .line 359
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    #@2
    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->scale(F)V

    #@5
    .line 358
    return-void
.end method
