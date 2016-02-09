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
.field public static final FADING:I = 0x2

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
    .line 21921
    new-array v0, v3, [F

    #@4
    const/high16 v1, 0x437f0000    # 255.0f

    #@6
    aput v1, v0, v2

    #@8
    sput-object v0, Landroid/view/View$ScrollabilityCache;->OPAQUE:[F

    #@a
    .line 21922
    new-array v0, v3, [F

    #@c
    const/4 v1, 0x0

    #@d
    aput v1, v0, v2

    #@f
    sput-object v0, Landroid/view/View$ScrollabilityCache;->TRANSPARENT:[F

    #@11
    .line 21887
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
    .line 21938
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 21919
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
    .line 21934
    iput v6, p0, Landroid/view/View$ScrollabilityCache;->state:I

    #@10
    .line 21939
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    #@13
    move-result v0

    #@14
    iput v0, p0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    #@16
    .line 21940
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledScrollBarSize()I

    #@19
    move-result v0

    #@1a
    iput v0, p0, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    #@1c
    .line 21941
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    #@1f
    move-result v0

    #@20
    iput v0, p0, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    #@22
    .line 21942
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    #@25
    move-result v0

    #@26
    iput v0, p0, Landroid/view/View$ScrollabilityCache;->scrollBarFadeDuration:I

    #@28
    .line 21944
    new-instance v0, Landroid/graphics/Paint;

    #@2a
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@2d
    iput-object v0, p0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    #@2f
    .line 21945
    new-instance v0, Landroid/graphics/Matrix;

    #@31
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@34
    iput-object v0, p0, Landroid/view/View$ScrollabilityCache;->matrix:Landroid/graphics/Matrix;

    #@36
    .line 21948
    new-instance v0, Landroid/graphics/LinearGradient;

    #@38
    const/high16 v4, 0x3f800000    # 1.0f

    #@3a
    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    #@3c
    const/high16 v5, -0x1000000

    #@3e
    move v2, v1

    #@3f
    move v3, v1

    #@40
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    #@43
    iput-object v0, p0, Landroid/view/View$ScrollabilityCache;->shader:Landroid/graphics/Shader;

    #@45
    .line 21949
    iget-object v0, p0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    #@47
    iget-object v1, p0, Landroid/view/View$ScrollabilityCache;->shader:Landroid/graphics/Shader;

    #@49
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@4c
    .line 21950
    iget-object v0, p0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    #@4e
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    #@50
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    #@52
    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    #@55
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    #@58
    .line 21952
    iput-object p2, p0, Landroid/view/View$ScrollabilityCache;->host:Landroid/view/View;

    #@5a
    .line 21938
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    #@0
    .prologue
    .line 21974
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@3
    move-result-wide v4

    #@4
    .line 21975
    .local v4, "now":J
    iget-wide v6, p0, Landroid/view/View$ScrollabilityCache;->fadeStartTime:J

    #@6
    cmp-long v3, v4, v6

    #@8
    if-ltz v3, :cond_0

    #@a
    .line 21980
    long-to-int v2, v4

    #@b
    .line 21983
    .local v2, "nextFrame":I
    iget-object v1, p0, Landroid/view/View$ScrollabilityCache;->scrollBarInterpolator:Landroid/graphics/Interpolator;

    #@d
    .line 21981
    .local v1, "interpolator":Landroid/graphics/Interpolator;
    const/4 v3, 0x0

    #@e
    .line 21986
    const/4 v0, 0x1

    #@f
    .local v0, "framesCount":I
    sget-object v6, Landroid/view/View$ScrollabilityCache;->OPAQUE:[F

    #@11
    invoke-virtual {v1, v3, v2, v6}, Landroid/graphics/Interpolator;->setKeyFrame(II[F)V

    #@14
    .line 21989
    iget v3, p0, Landroid/view/View$ScrollabilityCache;->scrollBarFadeDuration:I

    #@16
    add-int/2addr v2, v3

    #@17
    .line 21990
    sget-object v3, Landroid/view/View$ScrollabilityCache;->TRANSPARENT:[F

    #@19
    invoke-virtual {v1, v0, v2, v3}, Landroid/graphics/Interpolator;->setKeyFrame(II[F)V

    #@1c
    .line 21992
    const/4 v3, 0x2

    #@1d
    iput v3, p0, Landroid/view/View$ScrollabilityCache;->state:I

    #@1f
    .line 21995
    iget-object v3, p0, Landroid/view/View$ScrollabilityCache;->host:Landroid/view/View;

    #@21
    const/4 v6, 0x1

    #@22
    invoke-virtual {v3, v6}, Landroid/view/View;->invalidate(Z)V

    #@25
    .line 21973
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
    .line 21956
    iget v0, p0, Landroid/view/View$ScrollabilityCache;->mLastColor:I

    #@8
    if-eq p1, v0, :cond_0

    #@a
    .line 21957
    iput p1, p0, Landroid/view/View$ScrollabilityCache;->mLastColor:I

    #@c
    .line 21959
    if-eqz p1, :cond_1

    #@e
    .line 21960
    new-instance v0, Landroid/graphics/LinearGradient;

    #@10
    or-int/2addr v5, p1

    #@11
    .line 21961
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
    .line 21960
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    #@1d
    iput-object v0, p0, Landroid/view/View$ScrollabilityCache;->shader:Landroid/graphics/Shader;

    #@1f
    .line 21962
    iget-object v0, p0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    #@21
    iget-object v1, p0, Landroid/view/View$ScrollabilityCache;->shader:Landroid/graphics/Shader;

    #@23
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@26
    .line 21964
    iget-object v0, p0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    #@28
    const/4 v1, 0x0

    #@29
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    #@2c
    .line 21955
    :cond_0
    :goto_0
    return-void

    #@2d
    .line 21966
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
    .line 21967
    iget-object v0, p0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    #@3a
    iget-object v1, p0, Landroid/view/View$ScrollabilityCache;->shader:Landroid/graphics/Shader;

    #@3c
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@3f
    .line 21968
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
