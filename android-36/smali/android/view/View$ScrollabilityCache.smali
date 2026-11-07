.class Landroid/view/View$ScrollabilityCache;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScrollabilityCache"
.end annotation


# static fields
.field public static final greylist-max-o DRAGGING_HORIZONTAL_SCROLL_BAR:I = 0x2

.field public static final greylist-max-o DRAGGING_VERTICAL_SCROLL_BAR:I = 0x1

.field public static final greylist-max-o FADING:I = 0x2

.field public static final greylist-max-o NOT_DRAGGING:I = 0x0

.field public static final greylist-max-o OFF:I = 0x0

.field public static final greylist-max-o ON:I = 0x1

.field private static final greylist-max-o OPAQUE:[F

.field private static final greylist-max-o TRANSPARENT:[F


# instance fields
.field public greylist-max-o fadeScrollBars:Z

.field public greylist-max-o fadeStartTime:J

.field public greylist-max-o fadingEdgeLength:I

.field public greylist host:Landroid/view/View;

.field public greylist-max-o interpolatorValues:[F

.field private greylist-max-o mLastColor:I

.field public final greylist-max-o mScrollBarBounds:Landroid/graphics/Rect;

.field public greylist-max-o mScrollBarDraggingPos:F

.field public greylist-max-o mScrollBarDraggingState:I

.field public final greylist-max-o mScrollBarTouchBounds:Landroid/graphics/Rect;

.field public final greylist-max-o matrix:Landroid/graphics/Matrix;

.field public final greylist-max-o paint:Landroid/graphics/Paint;

.field public greylist scrollBar:Landroid/widget/ScrollBarDrawable;

.field public greylist-max-o scrollBarDefaultDelayBeforeFade:I

.field public greylist-max-o scrollBarFadeDuration:I

.field public final greylist-max-o scrollBarInterpolator:Landroid/graphics/Interpolator;

.field public greylist-max-o scrollBarMinTouchTarget:I

.field public greylist-max-o scrollBarSize:I

.field public greylist-max-o shader:Landroid/graphics/Shader;

.field public greylist-max-r state:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 32637
    const/4 v0, 0x1

    new-array v1, v0, [F

    const/4 v2, 0x0

    const/high16 v3, 0x437f0000    # 255.0f

    aput v3, v1, v2

    sput-object v1, Landroid/view/View$ScrollabilityCache;->OPAQUE:[F

    .line 32638
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput v1, v0, v2

    sput-object v0, Landroid/view/View$ScrollabilityCache;->TRANSPARENT:[F

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/view/ViewConfiguration;Landroid/view/View;)V
    .registers 12
    .param p1, "configuration"    # Landroid/view/ViewConfiguration;
    .param p2, "host"    # Landroid/view/View;

    .line 32665
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32635
    new-instance v0, Landroid/graphics/Interpolator;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Interpolator;-><init>(II)V

    iput-object v0, p0, Landroid/view/View$ScrollabilityCache;->scrollBarInterpolator:Landroid/graphics/Interpolator;

    .line 32650
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/View$ScrollabilityCache;->state:I

    .line 32655
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/View$ScrollabilityCache;->mScrollBarBounds:Landroid/graphics/Rect;

    .line 32656
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/View$ScrollabilityCache;->mScrollBarTouchBounds:Landroid/graphics/Rect;

    .line 32661
    iput v0, p0, Landroid/view/View$ScrollabilityCache;->mScrollBarDraggingState:I

    .line 32663
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/View$ScrollabilityCache;->mScrollBarDraggingPos:F

    .line 32666
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v0

    iput v0, p0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    .line 32667
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledScrollBarSize()I

    move-result v0

    iput v0, p0, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    .line 32668
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinScrollbarTouchTarget()I

    move-result v0

    iput v0, p0, Landroid/view/View$ScrollabilityCache;->scrollBarMinTouchTarget:I

    .line 32669
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v0

    iput v0, p0, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    .line 32670
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v0

    iput v0, p0, Landroid/view/View$ScrollabilityCache;->scrollBarFadeDuration:I

    .line 32672
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    .line 32673
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/View$ScrollabilityCache;->matrix:Landroid/graphics/Matrix;

    .line 32676
    new-instance v1, Landroid/graphics/LinearGradient;

    const/4 v7, 0x0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, -0x1000000

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Landroid/view/View$ScrollabilityCache;->shader:Landroid/graphics/Shader;

    .line 32677
    iget-object v0, p0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/view/View$ScrollabilityCache;->shader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 32678
    iget-object v0, p0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 32680
    iput-object p2, p0, Landroid/view/View$ScrollabilityCache;->host:Landroid/view/View;

    .line 32681
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 8

    .line 32702
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 32703
    .local v0, "now":J
    iget-wide v2, p0, Landroid/view/View$ScrollabilityCache;->fadeStartTime:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_26

    .line 32708
    long-to-int v2, v0

    .line 32709
    .local v2, "nextFrame":I
    const/4 v3, 0x0

    .line 32711
    .local v3, "framesCount":I
    iget-object v4, p0, Landroid/view/View$ScrollabilityCache;->scrollBarInterpolator:Landroid/graphics/Interpolator;

    .line 32714
    .local v4, "interpolator":Landroid/graphics/Interpolator;
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "framesCount":I
    .local v5, "framesCount":I
    sget-object v6, Landroid/view/View$ScrollabilityCache;->OPAQUE:[F

    invoke-virtual {v4, v3, v2, v6}, Landroid/graphics/Interpolator;->setKeyFrame(II[F)V

    .line 32717
    iget v3, p0, Landroid/view/View$ScrollabilityCache;->scrollBarFadeDuration:I

    add-int/2addr v2, v3

    .line 32718
    sget-object v3, Landroid/view/View$ScrollabilityCache;->TRANSPARENT:[F

    invoke-virtual {v4, v5, v2, v3}, Landroid/graphics/Interpolator;->setKeyFrame(II[F)V

    .line 32720
    const/4 v3, 0x2

    iput v3, p0, Landroid/view/View$ScrollabilityCache;->state:I

    .line 32723
    iget-object v3, p0, Landroid/view/View$ScrollabilityCache;->host:Landroid/view/View;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/view/View;->invalidate(Z)V

    .line 32725
    .end local v2    # "nextFrame":I
    .end local v4    # "interpolator":Landroid/graphics/Interpolator;
    .end local v5    # "framesCount":I
    :cond_26
    return-void
.end method

.method public greylist-max-o setFadeColor(I)V
    .registers 12
    .param p1, "color"    # I

    .line 32684
    iget v0, p0, Landroid/view/View$ScrollabilityCache;->mLastColor:I

    if-eq p1, v0, :cond_51

    .line 32685
    iput p1, p0, Landroid/view/View$ScrollabilityCache;->mLastColor:I

    .line 32687
    if-eqz p1, :cond_2d

    .line 32688
    new-instance v1, Landroid/graphics/LinearGradient;

    const/high16 v0, -0x1000000

    or-int v6, p1, v0

    const v0, 0xffffff

    and-int v7, p1, v0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Landroid/view/View$ScrollabilityCache;->shader:Landroid/graphics/Shader;

    .line 32690
    iget-object v0, p0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/view/View$ScrollabilityCache;->shader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 32692
    iget-object v0, p0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_51

    .line 32694
    :cond_2d
    new-instance v2, Landroid/graphics/LinearGradient;

    const/4 v8, 0x0

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, -0x1000000

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v2, p0, Landroid/view/View$ScrollabilityCache;->shader:Landroid/graphics/Shader;

    .line 32695
    iget-object v0, p0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/view/View$ScrollabilityCache;->shader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 32696
    iget-object v0, p0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 32699
    :cond_51
    :goto_51
    return-void
.end method
