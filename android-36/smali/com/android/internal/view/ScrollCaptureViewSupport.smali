.class public Lcom/android/internal/view/ScrollCaptureViewSupport;
.super Ljava/lang/Object;
.source "ScrollCaptureViewSupport.java"

# interfaces
.implements Landroid/view/ScrollCaptureCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/view/ScrollCaptureCallback;"
    }
.end annotation


# static fields
.field private static final blacklist SETTING_CAPTURE_DELAY:Ljava/lang/String; = "screenshot.scroll_capture_delay"

.field private static final blacklist SETTING_CAPTURE_DELAY_DEFAULT:J = 0x3cL

.field private static final blacklist TAG:Ljava/lang/String; = "SCViewSupport"


# instance fields
.field private blacklist mEnded:Z

.field private final blacklist mPostScrollDelayMillis:J

.field private final blacklist mRenderer:Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;

.field private blacklist mStarted:Z

.field private final blacklist mViewHelper:Lcom/android/internal/view/ScrollCaptureViewHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/view/ScrollCaptureViewHelper<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final blacklist mWeakView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$bkb7LirsaKlYBq4Lp_Hg-fYii_4(Lcom/android/internal/view/ScrollCaptureViewSupport;Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;Landroid/view/View;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/view/ScrollCaptureViewSupport;->lambda$onScrollResult$1(Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;Landroid/view/View;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$o74e8lNvTblt_cOdrUr7jfuaPfY(Lcom/android/internal/view/ScrollCaptureViewSupport;Landroid/view/View;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/view/ScrollCaptureViewSupport;->lambda$onScrollCaptureImageRequest$0(Landroid/view/View;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/view/View;Lcom/android/internal/view/ScrollCaptureViewHelper;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Lcom/android/internal/view/ScrollCaptureViewHelper<",
            "TV;>;)V"
        }
    .end annotation

    .line 70
    .local p0, "this":Lcom/android/internal/view/ScrollCaptureViewSupport;, "Lcom/android/internal/view/ScrollCaptureViewSupport<TV;>;"
    .local p1, "containingView":Landroid/view/View;, "TV;"
    .local p2, "viewHelper":Lcom/android/internal/view/ScrollCaptureViewHelper;, "Lcom/android/internal/view/ScrollCaptureViewHelper<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mWeakView:Ljava/lang/ref/WeakReference;

    .line 72
    new-instance v0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;

    invoke-direct {v0}, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mRenderer:Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;

    .line 74
    iput-object p2, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mViewHelper:Lcom/android/internal/view/ScrollCaptureViewHelper;

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 76
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 77
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    const-string/jumbo v2, "screenshot.scroll_capture_delay"

    const-wide/16 v3, 0x3c

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mPostScrollDelayMillis:J

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "screenshot.scroll_capture_delay = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mPostScrollDelayMillis:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SCViewSupport"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void
.end method

.method public static blacklist computeScrollAmount(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 7
    .param p0, "parentVisibleBounds"    # Landroid/graphics/Rect;
    .param p1, "requested"    # Landroid/graphics/Rect;

    .line 136
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 137
    .local v0, "height":I
    iget v1, p0, Landroid/graphics/Rect;->top:I

    .line 138
    .local v1, "top":I
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    .line 139
    .local v2, "bottom":I
    const/4 v3, 0x0

    .line 141
    .local v3, "scrollYDelta":I
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    if-le v4, v2, :cond_21

    iget v4, p1, Landroid/graphics/Rect;->top:I

    if-le v4, v1, :cond_21

    .line 146
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v4, v0, :cond_1c

    .line 148
    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v1

    add-int/2addr v3, v4

    goto :goto_3a

    .line 151
    :cond_1c
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v2

    add-int/2addr v3, v4

    goto :goto_3a

    .line 153
    :cond_21
    iget v4, p1, Landroid/graphics/Rect;->top:I

    if-ge v4, v1, :cond_3a

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v4, v2, :cond_3a

    .line 158
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v4, v0, :cond_35

    .line 160
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v2, v4

    sub-int/2addr v3, v4

    goto :goto_3a

    .line 163
    :cond_35
    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int v4, v1, v4

    sub-int/2addr v3, v4

    .line 166
    :cond_3a
    :goto_3a
    return v3
.end method

.method private blacklist doCapture(Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;Landroid/view/View;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V
    .registers 8
    .param p1, "scrollResult"    # Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;
    .param p3, "viewCaptureArea"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;",
            "TV;",
            "Landroid/graphics/Rect;",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 282
    .local p0, "this":Lcom/android/internal/view/ScrollCaptureViewSupport;, "Lcom/android/internal/view/ScrollCaptureViewSupport<TV;>;"
    .local p2, "view":Landroid/view/View;, "TV;"
    .local p4, "onComplete":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/graphics/Rect;>;"
    iget-object v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mRenderer:Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->renderView(Landroid/view/View;Landroid/graphics/Rect;)I

    move-result v0

    .line 283
    .local v0, "result":I
    if-eqz v0, :cond_2e

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    goto :goto_2e

    .line 289
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "syncAndDraw(): SyncAndDrawResult = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SCViewSupport"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-interface {p4, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_38

    .line 286
    :cond_2e
    :goto_2e
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->availableArea:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {p4, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 292
    :goto_38
    return-void
.end method

.method public static blacklist findScrollingReferenceView(Landroid/view/ViewGroup;I)Landroid/view/View;
    .registers 9
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "expectedScrollDistance"    # I

    .line 180
    const/4 v0, 0x0

    .line 181
    .local v0, "selected":Landroid/view/View;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 182
    .local v1, "parentLocalVisible":Landroid/graphics/Rect;
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 184
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 185
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    if-ge v3, v2, :cond_34

    .line 186
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 187
    .local v4, "child":Landroid/view/View;
    if-nez v0, :cond_18

    .line 188
    move-object v0, v4

    goto :goto_31

    .line 189
    :cond_18
    if-gez p1, :cond_26

    .line 190
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    if-ge v5, v6, :cond_31

    .line 191
    move-object v0, v4

    goto :goto_31

    .line 193
    :cond_26
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v6

    if-le v5, v6, :cond_31

    .line 194
    move-object v0, v4

    .line 185
    .end local v4    # "child":Landroid/view/View;
    :cond_31
    :goto_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 197
    .end local v3    # "i":I
    :cond_34
    return-object v0
.end method

.method private static blacklist getColorMode(Landroid/view/View;)I
    .registers 4
    .param p0, "containingView"    # Landroid/view/View;

    .line 85
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 86
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getColorMode()I

    move-result v1

    .line 87
    .local v1, "colorMode":I
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->isScreenWideColorGamut()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 88
    const/4 v1, 0x0

    .line 90
    :cond_1d
    return v1
.end method

.method private synthetic blacklist lambda$onScrollCaptureImageRequest$0(Landroid/view/View;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "signal"    # Landroid/os/CancellationSignal;
    .param p3, "onComplete"    # Ljava/util/function/Consumer;
    .param p4, "result"    # Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;

    .line 254
    .local p0, "this":Lcom/android/internal/view/ScrollCaptureViewSupport;, "Lcom/android/internal/view/ScrollCaptureViewSupport<TV;>;"
    invoke-direct {p0, p4, p1, p2, p3}, Lcom/android/internal/view/ScrollCaptureViewSupport;->onScrollResult(Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;Landroid/view/View;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic blacklist lambda$onScrollResult$1(Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;Landroid/view/View;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V
    .registers 5
    .param p1, "scrollResult"    # Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewCaptureArea"    # Landroid/graphics/Rect;
    .param p4, "onComplete"    # Ljava/util/function/Consumer;

    .line 276
    .local p0, "this":Lcom/android/internal/view/ScrollCaptureViewSupport;, "Lcom/android/internal/view/ScrollCaptureViewSupport<TV;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/view/ScrollCaptureViewSupport;->doCapture(Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;Landroid/view/View;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private blacklist onScrollResult(Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;Landroid/view/View;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .registers 13
    .param p1, "scrollResult"    # Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;",
            "TV;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 260
    .local p0, "this":Lcom/android/internal/view/ScrollCaptureViewSupport;, "Lcom/android/internal/view/ScrollCaptureViewSupport<TV;>;"
    .local p2, "view":Landroid/view/View;, "TV;"
    .local p4, "onComplete":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/graphics/Rect;>;"
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 261
    const-string v0, "SCViewSupport"

    const-string v1, "onScrollCaptureImageRequest: cancelled! skipping render."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-void

    .line 265
    :cond_e
    iget-object v0, p1, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->availableArea:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 266
    iget-object v0, p1, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->availableArea:Landroid/graphics/Rect;

    invoke-interface {p4, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 267
    return-void

    .line 272
    :cond_1c
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->availableArea:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v6, v0

    .line 273
    .local v6, "viewCaptureArea":Landroid/graphics/Rect;
    iget v0, p1, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->scrollDelta:I

    neg-int v0, v0

    const/4 v1, 0x0

    invoke-virtual {v6, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 275
    new-instance v2, Lcom/android/internal/view/ScrollCaptureViewSupport$$ExternalSyntheticLambda0;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p4

    .end local p1    # "scrollResult":Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;
    .end local p2    # "view":Landroid/view/View;, "TV;"
    .end local p4    # "onComplete":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/graphics/Rect;>;"
    .local v4, "scrollResult":Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;
    .local v5, "view":Landroid/view/View;, "TV;"
    .local v7, "onComplete":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/graphics/Rect;>;"
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/view/ScrollCaptureViewSupport$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/view/ScrollCaptureViewSupport;Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;Landroid/view/View;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    iget-wide p1, v3, Lcom/android/internal/view/ScrollCaptureViewSupport;->mPostScrollDelayMillis:J

    invoke-virtual {v5, v2, p1, p2}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 278
    return-void
.end method

.method public static blacklist transformFromContainerToRequest(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 6
    .param p0, "scrollY"    # I
    .param p1, "requestBounds"    # Landroid/graphics/Rect;
    .param p2, "containerRect"    # Landroid/graphics/Rect;

    .line 121
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 122
    .local v0, "requestRect":Landroid/graphics/Rect;
    iget v1, p1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 123
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Rect;->offset(II)V

    .line 124
    return-object v0
.end method

.method public static blacklist transformFromRequestToContainer(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 6
    .param p0, "scrollY"    # I
    .param p1, "requestBounds"    # Landroid/graphics/Rect;
    .param p2, "requestRect"    # Landroid/graphics/Rect;

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 105
    .local v0, "requestedContainerBounds":Landroid/graphics/Rect;
    const/4 v1, 0x0

    neg-int v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 106
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 107
    return-object v0
.end method


# virtual methods
.method public final whitelist onScrollCaptureEnd(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "onReady"    # Ljava/lang/Runnable;

    .line 296
    .local p0, "this":Lcom/android/internal/view/ScrollCaptureViewSupport;, "Lcom/android/internal/view/ScrollCaptureViewSupport<TV;>;"
    iget-object v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mWeakView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 297
    .local v0, "view":Landroid/view/View;, "TV;"
    iget-boolean v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mStarted:Z

    if-eqz v1, :cond_22

    iget-boolean v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mEnded:Z

    if-nez v1, :cond_22

    .line 298
    if-eqz v0, :cond_1a

    .line 299
    iget-object v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mViewHelper:Lcom/android/internal/view/ScrollCaptureViewHelper;

    invoke-interface {v1, v0}, Lcom/android/internal/view/ScrollCaptureViewHelper;->onPrepareForEnd(Landroid/view/View;)V

    .line 300
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 302
    :cond_1a
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mEnded:Z

    .line 303
    iget-object v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mRenderer:Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;

    invoke-virtual {v1}, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->destroy()V

    .line 305
    :cond_22
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 306
    return-void
.end method

.method public final whitelist onScrollCaptureImageRequest(Landroid/view/ScrollCaptureSession;Landroid/os/CancellationSignal;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V
    .registers 12
    .param p1, "session"    # Landroid/view/ScrollCaptureSession;
    .param p2, "signal"    # Landroid/os/CancellationSignal;
    .param p3, "requestRect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ScrollCaptureSession;",
            "Landroid/os/CancellationSignal;",
            "Landroid/graphics/Rect;",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 240
    .local p0, "this":Lcom/android/internal/view/ScrollCaptureViewSupport;, "Lcom/android/internal/view/ScrollCaptureViewSupport<TV;>;"
    .local p4, "onComplete":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/graphics/Rect;>;"
    invoke-virtual {p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 241
    const-string v0, "SCViewSupport"

    const-string v1, "onScrollCaptureImageRequest: cancelled!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    return-void

    .line 245
    :cond_e
    iget-object v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mWeakView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    .line 246
    .local v2, "view":Landroid/view/View;, "TV;"
    if-eqz v2, :cond_33

    invoke-virtual {v2}, Landroid/view/View;->isVisibleToUser()Z

    move-result v0

    if-nez v0, :cond_22

    move-object v5, p2

    move-object v4, p3

    goto :goto_35

    .line 253
    :cond_22
    iget-object v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mViewHelper:Lcom/android/internal/view/ScrollCaptureViewHelper;

    invoke-virtual {p1}, Landroid/view/ScrollCaptureSession;->getScrollBounds()Landroid/graphics/Rect;

    move-result-object v3

    new-instance v6, Lcom/android/internal/view/ScrollCaptureViewSupport$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0, v2, p2, p4}, Lcom/android/internal/view/ScrollCaptureViewSupport$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/view/ScrollCaptureViewSupport;Landroid/view/View;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V

    move-object v5, p2

    move-object v4, p3

    .end local p2    # "signal":Landroid/os/CancellationSignal;
    .end local p3    # "requestRect":Landroid/graphics/Rect;
    .local v4, "requestRect":Landroid/graphics/Rect;
    .local v5, "signal":Landroid/os/CancellationSignal;
    invoke-interface/range {v1 .. v6}, Lcom/android/internal/view/ScrollCaptureViewHelper;->onScrollRequested(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V

    .line 255
    return-void

    .line 246
    .end local v4    # "requestRect":Landroid/graphics/Rect;
    .end local v5    # "signal":Landroid/os/CancellationSignal;
    .restart local p2    # "signal":Landroid/os/CancellationSignal;
    .restart local p3    # "requestRect":Landroid/graphics/Rect;
    :cond_33
    move-object v5, p2

    move-object v4, p3

    .line 248
    .end local p2    # "signal":Landroid/os/CancellationSignal;
    .end local p3    # "requestRect":Landroid/graphics/Rect;
    .restart local v4    # "requestRect":Landroid/graphics/Rect;
    .restart local v5    # "signal":Landroid/os/CancellationSignal;
    :goto_35
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    invoke-interface {p4, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 249
    return-void
.end method

.method public final whitelist onScrollCaptureSearch(Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .registers 5
    .param p1, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 202
    .local p0, "this":Lcom/android/internal/view/ScrollCaptureViewSupport;, "Lcom/android/internal/view/ScrollCaptureViewSupport<TV;>;"
    .local p2, "onReady":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/graphics/Rect;>;"
    invoke-virtual {p1}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 203
    return-void

    .line 205
    :cond_7
    iget-object v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mWeakView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 206
    .local v0, "view":Landroid/view/View;, "TV;"
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mStarted:Z

    .line 207
    iput-boolean v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mEnded:Z

    .line 209
    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Landroid/view/View;->isVisibleToUser()Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mViewHelper:Lcom/android/internal/view/ScrollCaptureViewHelper;

    invoke-interface {v1, v0}, Lcom/android/internal/view/ScrollCaptureViewHelper;->onAcceptSession(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 210
    iget-object v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mViewHelper:Lcom/android/internal/view/ScrollCaptureViewHelper;

    invoke-interface {v1, v0}, Lcom/android/internal/view/ScrollCaptureViewHelper;->onComputeScrollBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 211
    return-void

    .line 213
    :cond_2e
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 214
    return-void
.end method

.method public final whitelist onScrollCaptureStart(Landroid/view/ScrollCaptureSession;Landroid/os/CancellationSignal;Ljava/lang/Runnable;)V
    .registers 7
    .param p1, "session"    # Landroid/view/ScrollCaptureSession;
    .param p2, "signal"    # Landroid/os/CancellationSignal;
    .param p3, "onReady"    # Ljava/lang/Runnable;

    .line 219
    .local p0, "this":Lcom/android/internal/view/ScrollCaptureViewSupport;, "Lcom/android/internal/view/ScrollCaptureViewSupport<TV;>;"
    invoke-virtual {p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 220
    return-void

    .line 222
    :cond_7
    iget-object v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mWeakView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 224
    .local v0, "view":Landroid/view/View;, "TV;"
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mEnded:Z

    .line 225
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mStarted:Z

    .line 230
    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Landroid/view/View;->isVisibleToUser()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 231
    iget-object v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mRenderer:Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;

    invoke-virtual {p1}, Landroid/view/ScrollCaptureSession;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->setSurface(Landroid/view/Surface;)V

    .line 232
    iget-object v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mViewHelper:Lcom/android/internal/view/ScrollCaptureViewHelper;

    invoke-virtual {p1}, Landroid/view/ScrollCaptureSession;->getScrollBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/view/ScrollCaptureViewHelper;->onPrepareForStart(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 234
    :cond_2f
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 235
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 429
    .local p0, "this":Lcom/android/internal/view/ScrollCaptureViewSupport;, "Lcom/android/internal/view/ScrollCaptureViewSupport<TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScrollCaptureViewSupport{view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mWeakView:Ljava/lang/ref/WeakReference;

    .line 430
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", helper="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mViewHelper:Lcom/android/internal/view/ScrollCaptureViewHelper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 429
    return-object v0
.end method
