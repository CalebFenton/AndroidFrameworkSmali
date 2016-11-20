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
.field public static final DRAGGING_HORIZONTAL_SCROLL_BAR:I = 0x2

.field public static final DRAGGING_VERTICAL_SCROLL_BAR:I = 0x1

.field public static final FADING:I = 0x2

.field public static final NOT_DRAGGING:I = 0x0

.field public static final OFF:I = 0x0

.field public static final ON:I = 0x1

.field private static final OPAQUE:[F

.field private static final TRANSPARENT:[F


# instance fields
.field public fadeScrollBars:Z

.field public fadeStartTime:J

.field public fadingEdgeLength:I

.field public host:Landroid/view/View;

.field public interpolatorValues:[F

.field private mLastColor:I

.field public final mScrollBarBounds:Landroid/graphics/Rect;

.field public mScrollBarDraggingPos:F

.field public mScrollBarDraggingState:I

.field public final matrix:Landroid/graphics/Matrix;

.field public final paint:Landroid/graphics/Paint;

.field public scrollBar:Landroid/widget/ScrollBarDrawable;

.field public scrollBarDefaultDelayBeforeFade:I

.field public scrollBarFadeDuration:I

.field public final scrollBarInterpolator:Landroid/graphics/Interpolator;

.field public scrollBarSize:I

.field public shader:Landroid/graphics/Shader;

.field public state:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 23257
    new-array v0, v3, [F

    #@4
    const/high16 v1, 0x437f0000    # 255.0f

    #@6
    aput v1, v0, v2

    #@8
    sput-object v0, Landroid/view/View$ScrollabilityCache;->OPAQUE:[F

    #@a
    .line 23258
    new-array v0, v3, [F

    #@c
    const/4 v1, 0x0

    #@d
    aput v1, v0, v2

    #@f
    sput-object v0, Landroid/view/View$ScrollabilityCache;->TRANSPARENT:[F

    #@11
    .line 23223
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewConfiguration;Landroid/view/View;)V
    .locals 8
    .param p1, "configuration"    # Landroid/view/ViewConfiguration;
    .param p2, "host"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 23283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 23255
    new-instance v0, Landroid/graphics/Interpolator;

    #@7
    const/4 v2, 0x1

    #@8
    const/4 v3, 0x2

    #@9
    invoke-direct {v0, v2, v3}, Landroid/graphics/Interpolator;-><init>(II)V

    #@c
    iput-object v0, p0, Landroid/view/View$ScrollabilityCache;->scrollBarInterpolator:Landroid/graphics/Interpolator;

    #@e
    .line 23270
    iput v6, p0, Landroid/view/View$ScrollabilityCache;->state:I

    #@10
    .line 23274
    new-instance v0, Landroid/graphics/Rect;

    #@12
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@15
    iput-object v0, p0, Landroid/view/View$ScrollabilityCache;->mScrollBarBounds:Landroid/graphics/Rect;

    #@17
    .line 23279
    iput v6, p0, Landroid/view/View$ScrollabilityCache;->mScrollBarDraggingState:I

    #@19
    .line 23281
    iput v1, p0, Landroid/view/View$ScrollabilityCache;->mScrollBarDraggingPos:F

    #@1b
    .line 23284
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    #@1e
    move-result v0

    #@1f
    iput v0, p0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    #@21
    .line 23285
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledScrollBarSize()I

    #@24
    move-result v0

    #@25
    iput v0, p0, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    #@27
    .line 23286
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    #@2a
    move-result v0

    #@2b
    iput v0, p0, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    #@2d
    .line 23287
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    #@30
    move-result v0

    #@31
    iput v0, p0, Landroid/view/View$ScrollabilityCache;->scrollBarFadeDuration:I

    #@33
    .line 23289
    new-instance v0, Landroid/graphics/Paint;

    #@35
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@38
    iput-object v0, p0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    #@3a
    .line 23290
    new-instance v0, Landroid/graphics/Matrix;

    #@3c
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@3f
    iput-object v0, p0, Landroid/view/View$ScrollabilityCache;->matrix:Landroid/graphics/Matrix;

    #@41
    .line 23293
    new-instance v0, Landroid/graphics/LinearGradient;

    #@43
    const/high16 v4, 0x3f800000    # 1.0f

    #@45
    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    #@47
    const/high16 v5, -0x1000000

    #@49
    move v2, v1

    #@4a
    move v3, v1

    #@4b
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    #@4e
    iput-object v0, p0, Landroid/view/View$ScrollabilityCache;->shader:Landroid/graphics/Shader;

    #@50
    .line 23294
    iget-object v0, p0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    #@52
    iget-object v1, p0, Landroid/view/View$ScrollabilityCache;->shader:Landroid/graphics/Shader;

    #@54
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@57
    .line 23295
    iget-object v0, p0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    #@59
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    #@5b
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    #@5d
    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    #@60
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    #@63
    .line 23297
    iput-object p2, p0, Landroid/view/View$ScrollabilityCache;->host:Landroid/view/View;

    #@65
    .line 23283
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    #@0
    .prologue
    .line 23319
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@3
    move-result-wide v4

    #@4
    .line 23320
    .local v4, "now":J
    iget-wide v6, p0, Landroid/view/View$ScrollabilityCache;->fadeStartTime:J

    #@6
    cmp-long v3, v4, v6

    #@8
    if-ltz v3, :cond_0

    #@a
    .line 23325
    long-to-int v2, v4

    #@b
    .line 23328
    .local v2, "nextFrame":I
    iget-object v1, p0, Landroid/view/View$ScrollabilityCache;->scrollBarInterpolator:Landroid/graphics/Interpolator;

    #@d
    .line 23326
    .local v1, "interpolator":Landroid/graphics/Interpolator;
    const/4 v3, 0x0

    #@e
    .line 23331
    const/4 v0, 0x1

    #@f
    .local v0, "framesCount":I
    sget-object v6, Landroid/view/View$ScrollabilityCache;->OPAQUE:[F

    #@11
    invoke-virtual {v1, v3, v2, v6}, Landroid/graphics/Interpolator;->setKeyFrame(II[F)V

    #@14
    .line 23334
    iget v3, p0, Landroid/view/View$ScrollabilityCache;->scrollBarFadeDuration:I

    #@16
    add-int/2addr v2, v3

    #@17
    .line 23335
    sget-object v3, Landroid/view/View$ScrollabilityCache;->TRANSPARENT:[F

    #@19
    invoke-virtual {v1, v0, v2, v3}, Landroid/graphics/Interpolator;->setKeyFrame(II[F)V

    #@1c
    .line 23337
    const/4 v3, 0x2

    #@1d
    iput v3, p0, Landroid/view/View$ScrollabilityCache;->state:I

    #@1f
    .line 23340
    iget-object v3, p0, Landroid/view/View$ScrollabilityCache;->host:Landroid/view/View;

    #@21
    const/4 v6, 0x1

    #@22
    invoke-virtual {v3, v6}, Landroid/view/View;->invalidate(Z)V

    #@25
    .line 23318
    .end local v0    # "framesCount":I
    .end local v1    # "interpolator":Landroid/graphics/Interpolator;
    .end local v2    # "nextFrame":I
    :cond_0
    return-void
.end method

.method public setFadeColor(I)V
    .locals 8
    .param p1, "color"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/high16 v5, -0x1000000

    #@3
    const/high16 v4, 0x3f800000    # 1.0f

    #@5
    const/4 v1, 0x0

    #@6
    .line 23301
    iget v0, p0, Landroid/view/View$ScrollabilityCache;->mLastColor:I

    #@8
    if-eq p1, v0, :cond_0

    #@a
    .line 23302
    iput p1, p0, Landroid/view/View$ScrollabilityCache;->mLastColor:I

    #@c
    .line 23304
    if-eqz p1, :cond_1

    #@e
    .line 23305
    new-instance v0, Landroid/graphics/LinearGradient;

    #@10
    or-int/2addr v5, p1

    #@11
    .line 23306
    const v2, 0xffffff

    #@14
    and-int v6, p1, v2

    #@16
    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    #@18
    move v2, v1

    #@19
    move v3, v1

    #@1a
    .line 23305
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    #@1d
    iput-object v0, p0, Landroid/view/View$ScrollabilityCache;->shader:Landroid/graphics/Shader;

    #@1f
    .line 23307
    iget-object v0, p0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    #@21
    iget-object v1, p0, Landroid/view/View$ScrollabilityCache;->shader:Landroid/graphics/Shader;

    #@23
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@26
    .line 23309
    iget-object v0, p0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    #@28
    const/4 v1, 0x0

    #@29
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    #@2c
    .line 23300
    :cond_0
    :goto_0
    return-void

    #@2d
    .line 23311
    :cond_1
    new-instance v0, Landroid/graphics/LinearGradient;

    #@2f
    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    #@31
    move v2, v1

    #@32
    move v3, v1

    #@33
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    #@36
    iput-object v0, p0, Landroid/view/View$ScrollabilityCache;->shader:Landroid/graphics/Shader;

    #@38
    .line 23312
    iget-object v0, p0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    #@3a
    iget-object v1, p0, Landroid/view/View$ScrollabilityCache;->shader:Landroid/graphics/Shader;

    #@3c
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@3f
    .line 23313
    iget-object v0, p0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    #@41
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    #@43
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    #@45
    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    #@48
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    #@4b
    goto :goto_0
.end method
