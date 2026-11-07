.class public Landroid/view/ScrollCaptureSession;
.super Ljava/lang/Object;
.source "ScrollCaptureSession.java"


# instance fields
.field private final blacklist mPositionInWindow:Landroid/graphics/Point;

.field private final blacklist mScrollBounds:Landroid/graphics/Rect;

.field private final blacklist mSurface:Landroid/view/Surface;


# direct methods
.method public constructor whitelist <init>(Landroid/view/Surface;Landroid/graphics/Rect;Landroid/graphics/Point;)V
    .registers 5
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "scrollBounds"    # Landroid/graphics/Rect;
    .param p3, "positionInWindow"    # Landroid/graphics/Point;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    iput-object v0, p0, Landroid/view/ScrollCaptureSession;->mSurface:Landroid/view/Surface;

    .line 45
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/ScrollCaptureSession;->mScrollBounds:Landroid/graphics/Rect;

    .line 46
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iput-object v0, p0, Landroid/view/ScrollCaptureSession;->mPositionInWindow:Landroid/graphics/Point;

    .line 47
    return-void
.end method


# virtual methods
.method public whitelist getPositionInWindow()Landroid/graphics/Point;
    .registers 2

    .line 83
    iget-object v0, p0, Landroid/view/ScrollCaptureSession;->mPositionInWindow:Landroid/graphics/Point;

    return-object v0
.end method

.method public whitelist getScrollBounds()Landroid/graphics/Rect;
    .registers 2

    .line 73
    iget-object v0, p0, Landroid/view/ScrollCaptureSession;->mScrollBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public whitelist getSurface()Landroid/view/Surface;
    .registers 2

    .line 62
    iget-object v0, p0, Landroid/view/ScrollCaptureSession;->mSurface:Landroid/view/Surface;

    return-object v0
.end method
