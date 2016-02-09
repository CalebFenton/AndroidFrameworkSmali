.class public Landroid/webkit/WebView;
.super Landroid/widget/AbsoluteLayout;
.source "WebView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;
.implements Landroid/view/ViewDebug$HierarchyHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebView$WebViewTransport;,
        Landroid/webkit/WebView$FindListener;,
        Landroid/webkit/WebView$VisualStateCallback;,
        Landroid/webkit/WebView$PictureListener;,
        Landroid/webkit/WebView$HitTestResult;,
        Landroid/webkit/WebView$PrivateAccess;,
        Landroid/webkit/WebView$FindListenerDistributor;
    }
.end annotation


# static fields
.field public static final DATA_REDUCTION_PROXY_SETTING_CHANGED:Ljava/lang/String; = "android.webkit.DATA_REDUCTION_PROXY_SETTING_CHANGED"

.field private static final LOGTAG:Ljava/lang/String; = "WebView"

.field public static final SCHEME_GEO:Ljava/lang/String; = "geo:0,0?q="

.field public static final SCHEME_MAILTO:Ljava/lang/String; = "mailto:"

.field public static final SCHEME_TEL:Ljava/lang/String; = "tel:"

.field private static volatile sEnforceThreadChecking:Z


# instance fields
.field private mFindListener:Landroid/webkit/WebView$FindListenerDistributor;

.field private mProvider:Landroid/webkit/WebViewProvider;

.field private final mWebViewThread:Landroid/os/Looper;


# direct methods
.method static synthetic -set0(Landroid/webkit/WebView;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/webkit/WebView;->mScrollX:I

    #@2
    return p1
.end method

.method static synthetic -set1(Landroid/webkit/WebView;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/webkit/WebView;->mScrollY:I

    #@2
    return p1
.end method

.method static synthetic -wrap0(Landroid/webkit/WebView;IZ)Z
    .locals 1
    .param p1, "startDelay"    # I
    .param p2, "invalidate"    # Z

    #@0
    .prologue
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->awakenScrollBars(IZ)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Landroid/webkit/WebView;I)Z
    .locals 1
    .param p1, "startDelay"    # I

    #@0
    .prologue
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->awakenScrollBars(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap10(Landroid/webkit/WebView;)F
    .locals 1

    #@0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHorizontalScrollFactor()F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap11(Landroid/webkit/WebView;)F
    .locals 1

    #@0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getVerticalScrollFactor()F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap12(Landroid/webkit/WebView;)I
    .locals 1

    #@0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHorizontalScrollbarHeight()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap13(Landroid/webkit/WebView;)I
    .locals 1

    #@0
    invoke-super {p0}, Landroid/webkit/WebView;->getScrollBarStyle()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap14(Landroid/webkit/WebView;)V
    .locals 0

    #@0
    invoke-super {p0}, Landroid/webkit/WebView;->computeScroll()V

    #@3
    return-void
.end method

.method static synthetic -wrap15(Landroid/webkit/WebView;Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "scrollBar"    # Landroid/graphics/drawable/Drawable;
    .param p3, "l"    # I
    .param p4, "t"    # I
    .param p5, "r"    # I
    .param p6, "b"    # I

    #@0
    .prologue
    invoke-super/range {p0 .. p6}, Landroid/webkit/WebView;->onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    #@3
    return-void
.end method

.method static synthetic -wrap16(Landroid/webkit/WebView;II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    #@0
    .prologue
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->scrollTo(II)V

    #@3
    return-void
.end method

.method static synthetic -wrap17(Landroid/webkit/WebView;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "params"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@3
    return-void
.end method

.method static synthetic -wrap18(Landroid/webkit/WebView;II)V
    .locals 0
    .param p1, "measuredWidth"    # I
    .param p2, "measuredHeight"    # I

    #@0
    .prologue
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->setMeasuredDimension(II)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    invoke-super {p0, p1}, Landroid/webkit/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Landroid/webkit/WebView;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap4(Landroid/webkit/WebView;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap5(Landroid/webkit/WebView;IIIIIIIIZ)Z
    .locals 1
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "scrollX"    # I
    .param p4, "scrollY"    # I
    .param p5, "scrollRangeX"    # I
    .param p6, "scrollRangeY"    # I
    .param p7, "maxOverScrollX"    # I
    .param p8, "maxOverScrollY"    # I
    .param p9, "isTouchEvent"    # Z

    #@0
    .prologue
    invoke-virtual/range {p0 .. p9}, Landroid/webkit/WebView;->overScrollBy(IIIIIIIIZ)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap6(Landroid/webkit/WebView;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    #@0
    .prologue
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap7(Landroid/webkit/WebView;)Z
    .locals 1

    #@0
    invoke-super {p0}, Landroid/webkit/WebView;->performLongClick()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap8(Landroid/webkit/WebView;ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->requestFocus(ILandroid/graphics/Rect;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap9(Landroid/webkit/WebView;IIII)Z
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    #@0
    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->setFrame(IIII)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 309
    const/4 v0, 0x0

    #@1
    sput-boolean v0, Landroid/webkit/WebView;->sEnforceThreadChecking:Z

    #@3
    .line 290
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 502
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 501
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 512
    const v0, 0x1010085

    #@3
    invoke-direct {p0, p1, p2, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 511
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 525
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 524
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    .line 542
    const/4 v5, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move-object v2, p2

    #@5
    move v3, p3

    #@6
    move v4, p4

    #@7
    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/util/Map;Z)V

    #@a
    .line 541
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/util/Map;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .param p6, "privateBrowsing"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "II",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 597
    .local p5, "javaScriptInterfaces":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 2280
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/webkit/WebView;->mWebViewThread:Landroid/os/Looper;

    #@9
    .line 598
    if-nez p1, :cond_0

    #@b
    .line 599
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    const-string/jumbo v1, "Invalid context argument"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 601
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@17
    move-result-object v0

    #@18
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@1a
    .line 602
    const/16 v1, 0x12

    #@1c
    .line 601
    if-lt v0, v1, :cond_1

    #@1e
    const/4 v0, 0x1

    #@1f
    :goto_0
    sput-boolean v0, Landroid/webkit/WebView;->sEnforceThreadChecking:Z

    #@21
    .line 603
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@24
    .line 605
    invoke-direct {p0}, Landroid/webkit/WebView;->ensureProviderCreated()V

    #@27
    .line 606
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@29
    invoke-interface {v0, p5, p6}, Landroid/webkit/WebViewProvider;->init(Ljava/util/Map;Z)V

    #@2c
    .line 608
    invoke-static {}, Landroid/webkit/CookieSyncManager;->setGetInstanceIsAllowed()V

    #@2f
    .line 596
    return-void

    #@30
    .line 601
    :cond_1
    const/4 v0, 0x0

    #@31
    goto :goto_0
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/Map;Z)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p5, "privateBrowsing"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 588
    .local p4, "javaScriptInterfaces":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v4, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move v3, p3

    #@5
    move-object v5, p4

    #@6
    move v6, p5

    #@7
    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/util/Map;Z)V

    #@a
    .line 587
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "privateBrowsing"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 564
    const/4 v4, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move-object v2, p2

    #@5
    move v3, p3

    #@6
    move v6, p4

    #@7
    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/util/Map;Z)V

    #@a
    .line 563
    return-void
.end method

.method private checkThread()V
    .locals 3

    #@0
    .prologue
    .line 2285
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewThread:Landroid/os/Looper;

    #@2
    if-eqz v1, :cond_0

    #@4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@7
    move-result-object v1

    #@8
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewThread:Landroid/os/Looper;

    #@a
    if-eq v1, v2, :cond_0

    #@c
    .line 2286
    new-instance v0, Ljava/lang/Throwable;

    #@e
    .line 2287
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v2, "A WebView method was called on thread \'"

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    .line 2288
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    .line 2287
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    .line 2288
    const-string/jumbo v2, "\'. "

    #@29
    .line 2287
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    .line 2289
    const-string/jumbo v2, "All WebView methods must be called on the same thread. "

    #@30
    .line 2287
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    .line 2290
    const-string/jumbo v2, "(Expected Looper "

    #@37
    .line 2287
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    .line 2290
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewThread:Landroid/os/Looper;

    #@3d
    .line 2287
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    .line 2290
    const-string/jumbo v2, " called on "

    #@44
    .line 2287
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    .line 2290
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@4b
    move-result-object v2

    #@4c
    .line 2287
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    .line 2291
    const-string/jumbo v2, ", FYI main Looper is "

    #@53
    .line 2287
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v1

    #@57
    .line 2291
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@5a
    move-result-object v2

    #@5b
    .line 2287
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v1

    #@5f
    .line 2291
    const-string/jumbo v2, ")"

    #@62
    .line 2287
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v1

    #@66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v1

    #@6a
    .line 2286
    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    #@6d
    .line 2292
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v1, "WebView"

    #@70
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@73
    move-result-object v2

    #@74
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@77
    .line 2293
    invoke-static {v0}, Landroid/os/StrictMode;->onWebViewMethodCalledOnWrongThread(Ljava/lang/Throwable;)V

    #@7a
    .line 2295
    sget-boolean v1, Landroid/webkit/WebView;->sEnforceThreadChecking:Z

    #@7c
    if-eqz v1, :cond_0

    #@7e
    .line 2296
    new-instance v1, Ljava/lang/RuntimeException;

    #@80
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@83
    throw v1

    #@84
    .line 2282
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :cond_0
    return-void
.end method

.method public static clearClientCertPreferences(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "onCleared"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 1565
    invoke-static {}, Landroid/webkit/WebView;->getFactory()Landroid/webkit/WebViewFactoryProvider;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider;->getStatics()Landroid/webkit/WebViewFactoryProvider$Statics;

    #@7
    move-result-object v0

    #@8
    invoke-interface {v0, p0}, Landroid/webkit/WebViewFactoryProvider$Statics;->clearClientCertPreferences(Ljava/lang/Runnable;)V

    #@b
    .line 1564
    return-void
.end method

.method public static disablePlatformNotifications()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 780
    return-void
.end method

.method public static enablePlatformNotifications()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 768
    return-void
.end method

.method public static enableSlowWholeDocumentDraw()V
    .locals 1

    #@0
    .prologue
    .line 1702
    invoke-static {}, Landroid/webkit/WebView;->getFactory()Landroid/webkit/WebViewFactoryProvider;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider;->getStatics()Landroid/webkit/WebViewFactoryProvider$Statics;

    #@7
    move-result-object v0

    #@8
    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider$Statics;->enableSlowWholeDocumentDraw()V

    #@b
    .line 1701
    return-void
.end method

.method private ensureProviderCreated()V
    .locals 2

    #@0
    .prologue
    .line 2268
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 2269
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 2272
    invoke-static {}, Landroid/webkit/WebView;->getFactory()Landroid/webkit/WebViewFactoryProvider;

    #@a
    move-result-object v0

    #@b
    new-instance v1, Landroid/webkit/WebView$PrivateAccess;

    #@d
    invoke-direct {v1, p0}, Landroid/webkit/WebView$PrivateAccess;-><init>(Landroid/webkit/WebView;)V

    #@10
    invoke-interface {v0, p0, v1}, Landroid/webkit/WebViewFactoryProvider;->createWebView(Landroid/webkit/WebView;Landroid/webkit/WebView$PrivateAccess;)Landroid/webkit/WebViewProvider;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@16
    .line 2267
    :cond_0
    return-void
.end method

.method public static findAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "addr"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1683
    invoke-static {}, Landroid/webkit/WebView;->getFactory()Landroid/webkit/WebViewFactoryProvider;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider;->getStatics()Landroid/webkit/WebViewFactoryProvider$Statics;

    #@7
    move-result-object v0

    #@8
    invoke-interface {v0, p0}, Landroid/webkit/WebViewFactoryProvider$Statics;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static freeMemoryForTests()V
    .locals 1

    #@0
    .prologue
    .line 790
    invoke-static {}, Landroid/webkit/WebView;->getFactory()Landroid/webkit/WebViewFactoryProvider;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider;->getStatics()Landroid/webkit/WebViewFactoryProvider$Statics;

    #@7
    move-result-object v0

    #@8
    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider$Statics;->freeMemoryForTests()V

    #@b
    .line 789
    return-void
.end method

.method private static declared-synchronized getFactory()Landroid/webkit/WebViewFactoryProvider;
    .locals 2

    #@0
    .prologue
    const-class v0, Landroid/webkit/WebView;

    #@2
    monitor-enter v0

    #@3
    .line 2277
    :try_start_0
    invoke-static {}, Landroid/webkit/WebViewFactory;->getProvider()Landroid/webkit/WebViewFactoryProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result-object v1

    #@7
    monitor-exit v0

    #@8
    return-object v1

    #@9
    :catchall_0
    move-exception v1

    #@a
    monitor-exit v0

    #@b
    throw v1
.end method

.method public static declared-synchronized getPluginList()Landroid/webkit/PluginList;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const-class v1, Landroid/webkit/WebView;

    #@2
    monitor-enter v1

    #@3
    .line 1911
    :try_start_0
    new-instance v0, Landroid/webkit/PluginList;

    #@5
    invoke-direct {v0}, Landroid/webkit/PluginList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    return-object v0

    #@a
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public static setWebContentsDebuggingEnabled(Z)V
    .locals 1
    .param p0, "enabled"    # Z

    #@0
    .prologue
    .line 1899
    invoke-static {}, Landroid/webkit/WebView;->getFactory()Landroid/webkit/WebViewFactoryProvider;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider;->getStatics()Landroid/webkit/WebViewFactoryProvider$Statics;

    #@7
    move-result-object v0

    #@8
    invoke-interface {v0, p0}, Landroid/webkit/WebViewFactoryProvider$Statics;->setWebContentsDebuggingEnabled(Z)V

    #@b
    .line 1898
    return-void
.end method

.method private setupFindListenerIfNeeded()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2261
    iget-object v0, p0, Landroid/webkit/WebView;->mFindListener:Landroid/webkit/WebView$FindListenerDistributor;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 2262
    new-instance v0, Landroid/webkit/WebView$FindListenerDistributor;

    #@7
    invoke-direct {v0, p0, v1}, Landroid/webkit/WebView$FindListenerDistributor;-><init>(Landroid/webkit/WebView;Landroid/webkit/WebView$FindListenerDistributor;)V

    #@a
    iput-object v0, p0, Landroid/webkit/WebView;->mFindListener:Landroid/webkit/WebView$FindListenerDistributor;

    #@c
    .line 2263
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@e
    iget-object v1, p0, Landroid/webkit/WebView;->mFindListener:Landroid/webkit/WebView$FindListenerDistributor;

    #@10
    invoke-interface {v0, v1}, Landroid/webkit/WebViewProvider;->setFindListener(Landroid/webkit/WebView$FindListener;)V

    #@13
    .line 2260
    :cond_0
    return-void
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1826
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 1827
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    #@8
    .line 1825
    return-void
.end method

.method public canGoBack()Z
    .locals 1

    #@0
    .prologue
    .line 1046
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 1047
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->canGoBack()Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public canGoBackOrForward(I)Z
    .locals 1
    .param p1, "steps"    # I

    #@0
    .prologue
    .line 1084
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 1085
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->canGoBackOrForward(I)Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public canGoForward()Z
    .locals 1

    #@0
    .prologue
    .line 1064
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 1065
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->canGoForward()Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public canZoomIn()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2007
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 2008
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->canZoomIn()Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public canZoomOut()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2022
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 2023
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->canZoomOut()Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public capturePicture()Landroid/graphics/Picture;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1225
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 1226
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->capturePicture()Landroid/graphics/Picture;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public clearCache(Z)V
    .locals 1
    .param p1, "includeDiskFiles"    # Z

    #@0
    .prologue
    .line 1521
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 1522
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->clearCache(Z)V

    #@8
    .line 1520
    return-void
.end method

.method public clearFormData()V
    .locals 1

    #@0
    .prologue
    .line 1532
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 1533
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->clearFormData()V

    #@8
    .line 1531
    return-void
.end method

.method public clearHistory()V
    .locals 1

    #@0
    .prologue
    .line 1540
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 1541
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->clearHistory()V

    #@8
    .line 1539
    return-void
.end method

.method public clearMatches()V
    .locals 1

    #@0
    .prologue
    .line 1710
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 1711
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->clearMatches()V

    #@8
    .line 1709
    return-void
.end method

.method public clearSslPreferences()V
    .locals 1

    #@0
    .prologue
    .line 1549
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 1550
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->clearSslPreferences()V

    #@8
    .line 1548
    return-void
.end method

.method public clearView()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1195
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 1196
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->clearView()V

    #@8
    .line 1194
    return-void
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    #@0
    .prologue
    .line 2348
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@2
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getScrollDelegate()Landroid/webkit/WebViewProvider$ScrollDelegate;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ScrollDelegate;->computeHorizontalScrollOffset()I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    #@0
    .prologue
    .line 2343
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@2
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getScrollDelegate()Landroid/webkit/WebViewProvider$ScrollDelegate;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ScrollDelegate;->computeHorizontalScrollRange()I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public computeScroll()V
    .locals 1

    #@0
    .prologue
    .line 2368
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@2
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getScrollDelegate()Landroid/webkit/WebViewProvider$ScrollDelegate;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ScrollDelegate;->computeScroll()V

    #@9
    .line 2367
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    #@0
    .prologue
    .line 2363
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@2
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getScrollDelegate()Landroid/webkit/WebViewProvider$ScrollDelegate;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ScrollDelegate;->computeVerticalScrollExtent()I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 1

    #@0
    .prologue
    .line 2358
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@2
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getScrollDelegate()Landroid/webkit/WebViewProvider$ScrollDelegate;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ScrollDelegate;->computeVerticalScrollOffset()I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    #@0
    .prologue
    .line 2353
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@2
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getScrollDelegate()Landroid/webkit/WebViewProvider$ScrollDelegate;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ScrollDelegate;->computeVerticalScrollRange()I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public copyBackForwardList()Landroid/webkit/WebBackForwardList;
    .locals 1

    #@0
    .prologue
    .line 1577
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 1578
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public createPrintDocumentAdapter()Landroid/print/PrintDocumentAdapter;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1235
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 1236
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    const-string/jumbo v1, "default"

    #@8
    invoke-interface {v0, v1}, Landroid/webkit/WebViewProvider;->createPrintDocumentAdapter(Ljava/lang/String;)Landroid/print/PrintDocumentAdapter;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public createPrintDocumentAdapter(Ljava/lang/String;)Landroid/print/PrintDocumentAdapter;
    .locals 1
    .param p1, "documentName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1253
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 1254
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->createPrintDocumentAdapter(Ljava/lang/String;)Landroid/print/PrintDocumentAdapter;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public createWebMessageChannel()[Landroid/webkit/WebMessagePort;
    .locals 1

    #@0
    .prologue
    .line 1854
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 1855
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->createWebMessageChannel()[Landroid/webkit/WebMessagePort;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public debugDump()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2067
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 2066
    return-void
.end method

.method public destroy()V
    .locals 1

    #@0
    .prologue
    .line 756
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 757
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->destroy()V

    #@8
    .line 755
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 2577
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@2
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->preDispatchDraw(Landroid/graphics/Canvas;)V

    #@9
    .line 2578
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    #@c
    .line 2576
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 2545
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@2
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public documentHasImages(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1722
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 1723
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->documentHasImages(Landroid/os/Message;)V

    #@8
    .line 1721
    return-void
.end method

.method public dumpViewHierarchyWithProperties(Ljava/io/BufferedWriter;I)V
    .locals 1
    .param p1, "out"    # Ljava/io/BufferedWriter;
    .param p2, "level"    # I

    #@0
    .prologue
    .line 2076
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@2
    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->dumpViewHierarchyWithProperties(Ljava/io/BufferedWriter;I)V

    #@5
    .line 2075
    return-void
.end method

.method public emulateShiftHeld()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1932
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 1931
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    #@0
    .prologue
    .line 2596
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    #@3
    .line 2598
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@6
    .line 2599
    const-string/jumbo v0, "webview:contentHeight"

    #@9
    iget-object v1, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@b
    invoke-interface {v1}, Landroid/webkit/WebViewProvider;->getContentHeight()I

    #@e
    move-result v1

    #@f
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@12
    .line 2600
    const-string/jumbo v0, "webview:contentWidth"

    #@15
    iget-object v1, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@17
    invoke-interface {v1}, Landroid/webkit/WebViewProvider;->getContentWidth()I

    #@1a
    move-result v1

    #@1b
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@1e
    .line 2601
    const-string/jumbo v0, "webview:scale"

    #@21
    iget-object v1, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@23
    invoke-interface {v1}, Landroid/webkit/WebViewProvider;->getScale()F

    #@26
    move-result v1

    #@27
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    #@2a
    .line 2602
    const-string/jumbo v0, "webview:title"

    #@2d
    iget-object v1, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@2f
    invoke-interface {v1}, Landroid/webkit/WebViewProvider;->getTitle()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@36
    .line 2603
    const-string/jumbo v0, "webview:url"

    #@39
    iget-object v1, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@3b
    invoke-interface {v1}, Landroid/webkit/WebViewProvider;->getUrl()Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@42
    .line 2604
    const-string/jumbo v0, "webview:originalUrl"

    #@45
    iget-object v1, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@47
    invoke-interface {v1}, Landroid/webkit/WebViewProvider;->getOriginalUrl()Ljava/lang/String;

    #@4a
    move-result-object v1

    #@4b
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@4e
    .line 2595
    return-void
.end method

.method public evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 1
    .param p1, "script"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 993
    .local p2, "resultCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 994
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->evaluateJavaScript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    #@8
    .line 992
    return-void
.end method

.method public findAll(Ljava/lang/String;)I
    .locals 1
    .param p1, "find"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1620
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 1621
    const-string/jumbo v0, "findAll blocks UI: prefer findAllAsync"

    #@6
    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    #@9
    .line 1622
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@b
    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->findAll(Ljava/lang/String;)I

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public findAllAsync(Ljava/lang/String;)V
    .locals 1
    .param p1, "find"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1634
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 1635
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->findAllAsync(Ljava/lang/String;)V

    #@8
    .line 1633
    return-void
.end method

.method public findHierarchyView(Ljava/lang/String;I)Landroid/view/View;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "hashCode"    # I

    #@0
    .prologue
    .line 2085
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@2
    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->findHierarchyView(Ljava/lang/String;I)Landroid/view/View;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public findNext(Z)V
    .locals 1
    .param p1, "forward"    # Z

    #@0
    .prologue
    .line 1605
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 1606
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->findNext(Z)V

    #@8
    .line 1604
    return-void
.end method

.method public flingScroll(II)V
    .locals 1
    .param p1, "vx"    # I
    .param p2, "vy"    # I

    #@0
    .prologue
    .line 1974
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 1975
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->flingScroll(II)V

    #@8
    .line 1973
    return-void
.end method

.method public freeMemory()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1510
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 1511
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->freeMemory()V

    #@8
    .line 1509
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 2438
    const-class v0, Landroid/webkit/WebView;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 2

    #@0
    .prologue
    .line 2427
    iget-object v1, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@2
    invoke-interface {v1}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v1}, Landroid/webkit/WebViewProvider$ViewDelegate;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    #@9
    move-result-object v0

    #@a
    .line 2428
    .local v0, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-nez v0, :cond_0

    #@c
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    #@f
    move-result-object v0

    #@10
    .end local v0    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_0
    return-object v0
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .locals 1

    #@0
    .prologue
    .line 673
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 674
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getCertificate()Landroid/net/http/SslCertificate;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public getContentHeight()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "webview"
    .end annotation

    #@0
    .prologue
    .line 1438
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 1439
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getContentHeight()I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public getContentWidth()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "webview"
    .end annotation

    #@0
    .prologue
    .line 1450
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@2
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getContentWidth()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 1

    #@0
    .prologue
    .line 1406
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 1407
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getFavicon()Landroid/graphics/Bitmap;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public getHitTestResult()Landroid/webkit/WebView$HitTestResult;
    .locals 1

    #@0
    .prologue
    .line 1325
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 1326
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "realm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 746
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 747
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "webview"
    .end annotation

    #@0
    .prologue
    .line 1383
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 1384
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getOriginalUrl()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public getProgress()I
    .locals 1

    #@0
    .prologue
    .line 1427
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 1428
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getProgress()I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public getScale()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "webview"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1269
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 1270
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getScale()F

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public getSettings()Landroid/webkit/WebSettings;
    .locals 1

    #@0
    .prologue
    .line 1883
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 1884
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getSettings()Landroid/webkit/WebSettings;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "webview"
    .end annotation

    #@0
    .prologue
    .line 1395
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 1396
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getTitle()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public getTouchIconUrl()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1418
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@2
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getTouchIconUrl()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "webview"
    .end annotation

    #@0
    .prologue
    .line 1368
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 1369
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getUrl()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public getVisibleTitleHeight()I
    .locals 1

    #@0
    .prologue
    .line 662
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 663
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getVisibleTitleHeight()I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public getWebViewProvider()Landroid/webkit/WebViewProvider;
    .locals 1

    #@0
    .prologue
    .line 2101
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@2
    return-object v0
.end method

.method public getZoomControls()Landroid/view/View;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1992
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 1993
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getZoomControls()Landroid/view/View;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public goBack()V
    .locals 1

    #@0
    .prologue
    .line 1054
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 1055
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->goBack()V

    #@8
    .line 1053
    return-void
.end method

.method public goBackOrForward(I)V
    .locals 1
    .param p1, "steps"    # I

    #@0
    .prologue
    .line 1097
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 1098
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->goBackOrForward(I)V

    #@8
    .line 1096
    return-void
.end method

.method public goForward()V
    .locals 1

    #@0
    .prologue
    .line 1072
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 1073
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->goForward()V

    #@8
    .line 1071
    return-void
.end method

.method public invokeZoomPicker()V
    .locals 1

    #@0
    .prologue
    .line 1302
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 1303
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->invokeZoomPicker()V

    #@8
    .line 1301
    return-void
.end method

.method public isPaused()Z
    .locals 1

    #@0
    .prologue
    .line 1499
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@2
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->isPaused()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isPrivateBrowsingEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 1105
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 1106
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->isPrivateBrowsingEnabled()Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;

    #@0
    .prologue
    .line 945
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 946
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/WebViewProvider;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@8
    .line 944
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "encoding"    # Ljava/lang/String;
    .param p5, "historyUrl"    # Ljava/lang/String;

    #@0
    .prologue
    .line 977
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 978
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    move-object v1, p1

    #@6
    move-object v2, p2

    #@7
    move-object v3, p3

    #@8
    move-object v4, p4

    #@9
    move-object v5, p5

    #@a
    invoke-interface/range {v0 .. v5}, Landroid/webkit/WebViewProvider;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@d
    .line 976
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    #@0
    .prologue
    .line 893
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 894
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->loadUrl(Ljava/lang/String;)V

    #@8
    .line 892
    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 883
    .local p2, "additionalHttpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 884
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    #@8
    .line 882
    return-void
.end method

.method notifyFindDialogDismissed()V
    .locals 1

    #@0
    .prologue
    .line 2225
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 2226
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->notifyFindDialogDismissed()V

    #@8
    .line 2224
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    #@0
    .prologue
    .line 2310
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->onAttachedToWindow()V

    #@3
    .line 2311
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    #@8
    move-result-object v0

    #@9
    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ViewDelegate;->onAttachedToWindow()V

    #@c
    .line 2309
    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1942
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "p"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1951
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 2496
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@2
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    #@9
    .line 2495
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    #@0
    .prologue
    .line 2501
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@2
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method protected onDetachedFromWindowInternal()V
    .locals 1

    #@0
    .prologue
    .line 2317
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@2
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ViewDelegate;->onDetachedFromWindow()V

    #@9
    .line 2318
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->onDetachedFromWindowInternal()V

    #@c
    .line 2316
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 2486
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@2
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onDraw(Landroid/graphics/Canvas;)V

    #@9
    .line 2485
    return-void
.end method

.method protected onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "scrollBar"    # Landroid/graphics/drawable/Drawable;
    .param p3, "l"    # I
    .param p4, "t"    # I
    .param p5, "r"    # I
    .param p6, "b"    # I

    #@0
    .prologue
    .line 2470
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@2
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    #@5
    move-result-object v0

    #@6
    move-object v1, p1

    #@7
    move-object v2, p2

    #@8
    move v3, p3

    #@9
    move v4, p4

    #@a
    move v5, p5

    #@b
    move v6, p6

    #@c
    invoke-interface/range {v0 .. v6}, Landroid/webkit/WebViewProvider$ViewDelegate;->onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    #@f
    .line 2469
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 1

    #@0
    .prologue
    .line 2589
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->onFinishTemporaryDetach()V

    #@3
    .line 2590
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    #@8
    move-result-object v0

    #@9
    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ViewDelegate;->onFinishTemporaryDetach()V

    #@c
    .line 2588
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 2521
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@2
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/WebViewProvider$ViewDelegate;->onFocusChanged(ZILandroid/graphics/Rect;)V

    #@9
    .line 2522
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsoluteLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    #@c
    .line 2520
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 2383
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@2
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "oldFocus"    # Landroid/view/View;
    .param p2, "newFocus"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1960
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 2373
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@2
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onHoverEvent(Landroid/view/MotionEvent;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 2456
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    #@3
    .line 2457
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    #@8
    move-result-object v0

    #@9
    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@c
    .line 2455
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    #@0
    .prologue
    .line 2449
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@3
    .line 2450
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    #@8
    move-result-object v0

    #@9
    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@c
    .line 2448
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 2393
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@2
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider$ViewDelegate;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 2403
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@2
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/WebViewProvider$ViewDelegate;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 2398
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@2
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider$ViewDelegate;->onKeyUp(ILandroid/view/KeyEvent;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 2555
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->onMeasure(II)V

    #@3
    .line 2556
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    #@8
    move-result-object v0

    #@9
    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider$ViewDelegate;->onMeasure(II)V

    #@c
    .line 2554
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 1
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    #@0
    .prologue
    .line 2475
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@2
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewProvider$ViewDelegate;->onOverScrolled(IIZZ)V

    #@9
    .line 2474
    return-void
.end method

.method public onPause()V
    .locals 1

    #@0
    .prologue
    .line 1480
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 1481
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->onPause()V

    #@8
    .line 1479
    return-void
.end method

.method public onProvideVirtualStructure(Landroid/view/ViewStructure;)V
    .locals 1
    .param p1, "structure"    # Landroid/view/ViewStructure;

    #@0
    .prologue
    .line 2443
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@2
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onProvideVirtualStructure(Landroid/view/ViewStructure;)V

    #@9
    .line 2442
    return-void
.end method

.method public onResume()V
    .locals 1

    #@0
    .prologue
    .line 1488
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 1489
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->onResume()V

    #@8
    .line 1487
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    #@0
    .prologue
    .line 2539
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->onScrollChanged(IIII)V

    #@3
    .line 2540
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    #@8
    move-result-object v0

    #@9
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewProvider$ViewDelegate;->onScrollChanged(IIII)V

    #@c
    .line 2538
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "ow"    # I
    .param p4, "oh"    # I

    #@0
    .prologue
    .line 2533
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->onSizeChanged(IIII)V

    #@3
    .line 2534
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    #@8
    move-result-object v0

    #@9
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewProvider$ViewDelegate;->onSizeChanged(IIII)V

    #@c
    .line 2532
    return-void
.end method

.method public onStartTemporaryDetach()V
    .locals 1

    #@0
    .prologue
    .line 2583
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->onStartTemporaryDetach()V

    #@3
    .line 2584
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    #@8
    move-result-object v0

    #@9
    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ViewDelegate;->onStartTemporaryDetach()V

    #@c
    .line 2582
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 2378
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@2
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 2388
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@2
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    #@0
    .prologue
    .line 2506
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->onVisibilityChanged(Landroid/view/View;I)V

    #@3
    .line 2509
    invoke-direct {p0}, Landroid/webkit/WebView;->ensureProviderCreated()V

    #@6
    .line 2510
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@8
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    #@b
    move-result-object v0

    #@c
    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider$ViewDelegate;->onVisibilityChanged(Landroid/view/View;I)V

    #@f
    .line 2505
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    #@0
    .prologue
    .line 2515
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@2
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onWindowFocusChanged(Z)V

    #@9
    .line 2516
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onWindowFocusChanged(Z)V

    #@c
    .line 2514
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    #@0
    .prologue
    .line 2480
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onWindowVisibilityChanged(I)V

    #@3
    .line 2481
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    #@8
    move-result-object v0

    #@9
    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onWindowVisibilityChanged(I)V

    #@c
    .line 2479
    return-void
.end method

.method public overlayHorizontalScrollbar()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 640
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public overlayVerticalScrollbar()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 652
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public pageDown(Z)Z
    .locals 1
    .param p1, "bottom"    # Z

    #@0
    .prologue
    .line 1127
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 1128
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->pageDown(Z)Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public pageUp(Z)Z
    .locals 1
    .param p1, "top"    # Z

    #@0
    .prologue
    .line 1116
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 1117
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->pageUp(Z)Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public pauseTimers()V
    .locals 1

    #@0
    .prologue
    .line 1459
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 1460
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->pauseTimers()V

    #@8
    .line 1458
    return-void
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 2463
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@2
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider$ViewDelegate;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public performLongClick()Z
    .locals 1

    #@0
    .prologue
    .line 2491
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@2
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ViewDelegate;->performLongClick()Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "postData"    # [B

    #@0
    .prologue
    .line 907
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 908
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 909
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@b
    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->postUrl(Ljava/lang/String;[B)V

    #@e
    .line 906
    :goto_0
    return-void

    #@f
    .line 911
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@11
    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->loadUrl(Ljava/lang/String;)V

    #@14
    goto :goto_0
.end method

.method public postVisualStateCallback(JLandroid/webkit/WebView$VisualStateCallback;)V
    .locals 1
    .param p1, "requestId"    # J
    .param p3, "callback"    # Landroid/webkit/WebView$VisualStateCallback;

    #@0
    .prologue
    .line 1183
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 1184
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/WebViewProvider;->insertVisualStateCallback(JLandroid/webkit/WebView$VisualStateCallback;)V

    #@8
    .line 1182
    return-void
.end method

.method public postWebMessage(Landroid/webkit/WebMessage;Landroid/net/Uri;)V
    .locals 1
    .param p1, "message"    # Landroid/webkit/WebMessage;
    .param p2, "targetOrigin"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 1871
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 1872
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->postMessageToMainFrame(Landroid/webkit/WebMessage;Landroid/net/Uri;)V

    #@8
    .line 1870
    return-void
.end method

.method public refreshPlugins(Z)V
    .locals 0
    .param p1, "reloadOpenPages"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1920
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 1919
    return-void
.end method

.method public reload()V
    .locals 1

    #@0
    .prologue
    .line 1036
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 1037
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->reload()V

    #@8
    .line 1035
    return-void
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1838
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 1839
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->removeJavascriptInterface(Ljava/lang/String;)V

    #@8
    .line 1837
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    #@0
    .prologue
    .line 2561
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@2
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/WebViewProvider$ViewDelegate;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 2550
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@2
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider$ViewDelegate;->requestFocus(ILandroid/graphics/Rect;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public requestFocusNodeHref(Landroid/os/Message;)V
    .locals 1
    .param p1, "hrefMsg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1343
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 1344
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->requestFocusNodeHref(Landroid/os/Message;)V

    #@8
    .line 1342
    return-void
.end method

.method public requestImageRef(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1355
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 1356
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->requestImageRef(Landroid/os/Message;)V

    #@8
    .line 1354
    return-void
.end method

.method public restorePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .locals 1
    .param p1, "b"    # Landroid/os/Bundle;
    .param p2, "src"    # Ljava/io/File;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 850
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 851
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->restorePicture(Landroid/os/Bundle;Ljava/io/File;)Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .locals 1
    .param p1, "inState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 867
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 868
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public resumeTimers()V
    .locals 1

    #@0
    .prologue
    .line 1468
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 1469
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->resumeTimers()V

    #@8
    .line 1467
    return-void
.end method

.method public savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 708
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 709
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/WebViewProvider;->savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@8
    .line 707
    return-void
.end method

.method public savePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .locals 1
    .param p1, "b"    # Landroid/os/Bundle;
    .param p2, "dest"    # Ljava/io/File;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 833
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 834
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->savePicture(Landroid/os/Bundle;Ljava/io/File;)Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 817
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 818
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public saveWebArchive(Ljava/lang/String;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1003
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 1004
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->saveWebArchive(Ljava/lang/String;)V

    #@8
    .line 1002
    return-void
.end method

.method public saveWebArchive(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V
    .locals 1
    .param p1, "basename"    # Ljava/lang/String;
    .param p2, "autoname"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1020
    .local p3, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 1021
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/WebViewProvider;->saveWebArchive(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V

    #@8
    .line 1019
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    #@0
    .prologue
    .line 2566
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@2
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->setBackgroundColor(I)V

    #@9
    .line 2565
    return-void
.end method

.method public setCertificate(Landroid/net/http/SslCertificate;)V
    .locals 1
    .param p1, "certificate"    # Landroid/net/http/SslCertificate;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 685
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 686
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->setCertificate(Landroid/net/http/SslCertificate;)V

    #@8
    .line 684
    return-void
.end method

.method public setDownloadListener(Landroid/webkit/DownloadListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/webkit/DownloadListener;

    #@0
    .prologue
    .line 1745
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 1746
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    #@8
    .line 1744
    return-void
.end method

.method setFindDialogFindListener(Landroid/webkit/WebView$FindListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/webkit/WebView$FindListener;

    #@0
    .prologue
    .line 2218
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 2219
    invoke-direct {p0}, Landroid/webkit/WebView;->setupFindListenerIfNeeded()V

    #@6
    .line 2220
    iget-object v0, p0, Landroid/webkit/WebView;->mFindListener:Landroid/webkit/WebView$FindListenerDistributor;

    #@8
    invoke-static {v0, p1}, Landroid/webkit/WebView$FindListenerDistributor;->-set0(Landroid/webkit/WebView$FindListenerDistributor;Landroid/webkit/WebView$FindListener;)Landroid/webkit/WebView$FindListener;

    #@b
    .line 2217
    return-void
.end method

.method public setFindListener(Landroid/webkit/WebView$FindListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/webkit/WebView$FindListener;

    #@0
    .prologue
    .line 1589
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 1590
    invoke-direct {p0}, Landroid/webkit/WebView;->setupFindListenerIfNeeded()V

    #@6
    .line 1591
    iget-object v0, p0, Landroid/webkit/WebView;->mFindListener:Landroid/webkit/WebView$FindListenerDistributor;

    #@8
    invoke-static {v0, p1}, Landroid/webkit/WebView$FindListenerDistributor;->-set1(Landroid/webkit/WebView$FindListenerDistributor;Landroid/webkit/WebView$FindListener;)Landroid/webkit/WebView$FindListener;

    #@b
    .line 1588
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    #@0
    .prologue
    .line 2528
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@2
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewProvider$ViewDelegate;->setFrame(IIII)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public setHorizontalScrollbarOverlay(Z)V
    .locals 0
    .param p1, "overlay"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 618
    return-void
.end method

.method public setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "realm"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;

    #@0
    .prologue
    .line 727
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 728
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewProvider;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@8
    .line 726
    return-void
.end method

.method public setInitialScale(I)V
    .locals 1
    .param p1, "scaleInPercent"    # I

    #@0
    .prologue
    .line 1292
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 1293
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->setInitialScale(I)V

    #@8
    .line 1291
    return-void
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 1
    .param p1, "layerType"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 2571
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->setLayerType(ILandroid/graphics/Paint;)V

    #@3
    .line 2572
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    #@8
    move-result-object v0

    #@9
    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider$ViewDelegate;->setLayerType(ILandroid/graphics/Paint;)V

    #@c
    .line 2570
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "params"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 2323
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@2
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@9
    .line 2322
    return-void
.end method

.method public setMapTrackballToArrowKeys(Z)V
    .locals 1
    .param p1, "setMap"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1968
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 1969
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->setMapTrackballToArrowKeys(Z)V

    #@8
    .line 1967
    return-void
.end method

.method public setNetworkAvailable(Z)V
    .locals 1
    .param p1, "networkUp"    # Z

    #@0
    .prologue
    .line 801
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 802
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->setNetworkAvailable(Z)V

    #@8
    .line 800
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 1
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 2328
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->setOverScrollMode(I)V

    #@3
    .line 2331
    invoke-direct {p0}, Landroid/webkit/WebView;->ensureProviderCreated()V

    #@6
    .line 2332
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@8
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    #@b
    move-result-object v0

    #@c
    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->setOverScrollMode(I)V

    #@f
    .line 2327
    return-void
.end method

.method public setPictureListener(Landroid/webkit/WebView$PictureListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/webkit/WebView$PictureListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1770
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 1771
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    #@8
    .line 1769
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1
    .param p1, "style"    # I

    #@0
    .prologue
    .line 2337
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@2
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->setScrollBarStyle(I)V

    #@9
    .line 2338
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->setScrollBarStyle(I)V

    #@c
    .line 2336
    return-void
.end method

.method public setVerticalScrollbarOverlay(Z)V
    .locals 0
    .param p1, "overlay"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 628
    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 1
    .param p1, "client"    # Landroid/webkit/WebChromeClient;

    #@0
    .prologue
    .line 1757
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 1758
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    #@8
    .line 1756
    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1
    .param p1, "client"    # Landroid/webkit/WebViewClient;

    #@0
    .prologue
    .line 1733
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 1734
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    #@8
    .line 1732
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2434
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@2
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ViewDelegate;->shouldDelayChildPressedState()Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public showFindDialog(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "showIme"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1654
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 1655
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->showFindDialog(Ljava/lang/String;Z)Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public stopLoading()V
    .locals 1

    #@0
    .prologue
    .line 1028
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 1029
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->stopLoading()V

    #@8
    .line 1027
    return-void
.end method

.method public zoomBy(F)V
    .locals 4
    .param p1, "zoomFactor"    # F

    #@0
    .prologue
    .line 2033
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 2034
    float-to-double v0, p1

    #@4
    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    #@9
    cmpg-double v0, v0, v2

    #@b
    if-gez v0, :cond_0

    #@d
    .line 2035
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v1, "zoomFactor must be greater than 0.01."

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 2036
    :cond_0
    float-to-double v0, p1

    #@17
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    #@19
    cmpl-double v0, v0, v2

    #@1b
    if-lez v0, :cond_1

    #@1d
    .line 2037
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1f
    const-string/jumbo v1, "zoomFactor must be less than 100."

    #@22
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0

    #@26
    .line 2038
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@28
    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->zoomBy(F)Z

    #@2b
    .line 2032
    return-void
.end method

.method public zoomIn()Z
    .locals 1

    #@0
    .prologue
    .line 2047
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 2048
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->zoomIn()Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public zoomOut()Z
    .locals 1

    #@0
    .prologue
    .line 2057
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    #@3
    .line 2058
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    #@5
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->zoomOut()Z

    #@8
    move-result v0

    #@9
    return v0
.end method
