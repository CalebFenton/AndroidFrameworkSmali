.class public Lcom/android/internal/view/WebViewCaptureHelper;
.super Ljava/lang/Object;
.source "WebViewCaptureHelper.java"

# interfaces
.implements Lcom/android/internal/view/ScrollCaptureViewHelper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/view/ScrollCaptureViewHelper<",
        "Landroid/webkit/WebView;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "WebViewScrollCapture"


# instance fields
.field private blacklist mOriginScrollX:I

.field private blacklist mOriginScrollY:I

.field private final blacklist mRequestWebViewLocal:Landroid/graphics/Rect;

.field private final blacklist mWebViewBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/WebViewCaptureHelper;->mRequestWebViewLocal:Landroid/graphics/Rect;

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/WebViewCaptureHelper;->mWebViewBounds:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist onAcceptSession(Landroid/view/View;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 34
    check-cast p1, Landroid/webkit/WebView;

    invoke-virtual {p0, p1}, Lcom/android/internal/view/WebViewCaptureHelper;->onAcceptSession(Landroid/webkit/WebView;)Z

    move-result p1

    return p1
.end method

.method public blacklist onAcceptSession(Landroid/webkit/WebView;)Z
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;

    .line 45
    invoke-virtual {p1}, Landroid/webkit/WebView;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 46
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    .line 45
    :goto_1c
    return v0
.end method

.method public bridge synthetic blacklist onPrepareForEnd(Landroid/view/View;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 34
    check-cast p1, Landroid/webkit/WebView;

    invoke-virtual {p0, p1}, Lcom/android/internal/view/WebViewCaptureHelper;->onPrepareForEnd(Landroid/webkit/WebView;)V

    return-void
.end method

.method public blacklist onPrepareForEnd(Landroid/webkit/WebView;)V
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;

    .line 100
    iget v0, p0, Lcom/android/internal/view/WebViewCaptureHelper;->mOriginScrollX:I

    iget v1, p0, Lcom/android/internal/view/WebViewCaptureHelper;->mOriginScrollY:I

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 101
    return-void
.end method

.method public bridge synthetic blacklist onPrepareForStart(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 34
    check-cast p1, Landroid/webkit/WebView;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/view/WebViewCaptureHelper;->onPrepareForStart(Landroid/webkit/WebView;Landroid/graphics/Rect;)V

    return-void
.end method

.method public blacklist onPrepareForStart(Landroid/webkit/WebView;Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "scrollBounds"    # Landroid/graphics/Rect;

    .line 51
    invoke-virtual {p1}, Landroid/webkit/WebView;->getScrollX()I

    move-result v0

    iput v0, p0, Lcom/android/internal/view/WebViewCaptureHelper;->mOriginScrollX:I

    .line 52
    invoke-virtual {p1}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    iput v0, p0, Lcom/android/internal/view/WebViewCaptureHelper;->mOriginScrollY:I

    .line 53
    return-void
.end method

.method public bridge synthetic blacklist onScrollRequested(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 34
    move-object v1, p1

    check-cast v1, Landroid/webkit/WebView;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/WebViewCaptureHelper;->onScrollRequested(Landroid/webkit/WebView;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist onScrollRequested(Landroid/webkit/WebView;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .registers 16
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "scrollBounds"    # Landroid/graphics/Rect;
    .param p3, "requestRect"    # Landroid/graphics/Rect;
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;",
            ">;)V"
        }
    .end annotation

    .line 61
    .local p5, "resultConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;>;"
    invoke-virtual {p1}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    iget v1, p0, Lcom/android/internal/view/WebViewCaptureHelper;->mOriginScrollY:I

    sub-int/2addr v0, v1

    .line 63
    .local v0, "scrollDelta":I
    new-instance v1, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;

    invoke-direct {v1}, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;-><init>()V

    .line 64
    .local v1, "result":Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, v1, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->requestedArea:Landroid/graphics/Rect;

    .line 65
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v1, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->availableArea:Landroid/graphics/Rect;

    .line 66
    iput v0, v1, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->scrollDelta:I

    .line 68
    iget-object v2, p0, Lcom/android/internal/view/WebViewCaptureHelper;->mWebViewBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/webkit/WebView;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 70
    invoke-virtual {p1}, Landroid/webkit/WebView;->isVisibleToUser()Z

    move-result v2

    if-nez v2, :cond_33

    .line 71
    invoke-interface {p5, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 75
    :cond_33
    iget-object v2, p0, Lcom/android/internal/view/WebViewCaptureHelper;->mRequestWebViewLocal:Landroid/graphics/Rect;

    invoke-virtual {v2, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 76
    iget-object v2, p0, Lcom/android/internal/view/WebViewCaptureHelper;->mRequestWebViewLocal:Landroid/graphics/Rect;

    neg-int v3, v0

    invoke-virtual {v2, v5, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 79
    invoke-virtual {p1}, Landroid/webkit/WebView;->getScrollY()I

    move-result v2

    neg-int v2, v2

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 80
    .local v2, "upLimit":I
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/webkit/WebView;->getScale()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 81
    .local v3, "contentHeightPx":I
    invoke-virtual {p1}, Landroid/webkit/WebView;->getHeight()I

    move-result v4

    sub-int v4, v3, v4

    invoke-virtual {p1}, Landroid/webkit/WebView;->getScrollY()I

    move-result v6

    sub-int/2addr v4, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 82
    .local v4, "downLimit":I
    iget-object v6, p0, Lcom/android/internal/view/WebViewCaptureHelper;->mRequestWebViewLocal:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/view/WebViewCaptureHelper;->mWebViewBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    sub-int/2addr v6, v7

    .line 83
    .local v6, "scrollToCenter":I
    invoke-static {v6, v2, v4}, Landroid/util/MathUtils;->constrain(III)I

    move-result v7

    .line 86
    .local v7, "scrollMovement":I
    iget v8, p0, Lcom/android/internal/view/WebViewCaptureHelper;->mOriginScrollX:I

    invoke-virtual {p1, v8, v7}, Landroid/webkit/WebView;->scrollBy(II)V

    .line 87
    invoke-virtual {p1}, Landroid/webkit/WebView;->getScrollY()I

    move-result v8

    iget v9, p0, Lcom/android/internal/view/WebViewCaptureHelper;->mOriginScrollY:I

    sub-int/2addr v8, v9

    .line 88
    .end local v0    # "scrollDelta":I
    .local v8, "scrollDelta":I
    iget-object v0, p0, Lcom/android/internal/view/WebViewCaptureHelper;->mRequestWebViewLocal:Landroid/graphics/Rect;

    neg-int v9, v7

    invoke-virtual {v0, v5, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 89
    iput v8, v1, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->scrollDelta:I

    .line 91
    iget-object v0, p0, Lcom/android/internal/view/WebViewCaptureHelper;->mRequestWebViewLocal:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/android/internal/view/WebViewCaptureHelper;->mWebViewBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v9}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 92
    new-instance v0, Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/android/internal/view/WebViewCaptureHelper;->mRequestWebViewLocal:Landroid/graphics/Rect;

    invoke-direct {v0, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, v1, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->availableArea:Landroid/graphics/Rect;

    .line 93
    iget-object v0, v1, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->availableArea:Landroid/graphics/Rect;

    iget v9, v1, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->scrollDelta:I

    invoke-virtual {v0, v5, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 95
    :cond_a0
    invoke-interface {p5, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 96
    return-void
.end method
