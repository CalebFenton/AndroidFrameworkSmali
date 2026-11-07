.class public Landroid/view/CutoutSpecification;
.super Ljava/lang/Object;
.source "CutoutSpecification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/CutoutSpecification$Parser;
    }
.end annotation


# static fields
.field private static final blacklist BIND_LEFT_CUTOUT_MARKER:Ljava/lang/String; = "@bind_left_cutout"

.field private static final blacklist BIND_RIGHT_CUTOUT_MARKER:Ljava/lang/String; = "@bind_right_cutout"

.field private static final blacklist BOTTOM_MARKER:Ljava/lang/String; = "@bottom"

.field private static final blacklist CENTER_VERTICAL_MARKER:Ljava/lang/String; = "@center_vertical"

.field private static final blacklist CUTOUT_MARKER:Ljava/lang/String; = "@cutout"

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist DP_MARKER:Ljava/lang/String; = "@dp"

.field private static final blacklist LEFT_MARKER:Ljava/lang/String; = "@left"

.field private static final blacklist MARKER_START_CHAR:C = '@'

.field private static final blacklist MINIMAL_ACCEPTABLE_PATH_LENGTH:I

.field private static final blacklist RIGHT_MARKER:Ljava/lang/String; = "@right"

.field private static final blacklist TAG:Ljava/lang/String; = "CutoutSpecification"


# instance fields
.field private final blacklist mBottomBound:Landroid/graphics/Rect;

.field private blacklist mInsets:Landroid/graphics/Insets;

.field private final blacklist mLeftBound:Landroid/graphics/Rect;

.field private final blacklist mPath:Landroid/graphics/Path;

.field private final blacklist mRightBound:Landroid/graphics/Rect;

.field private final blacklist mTopBound:Landroid/graphics/Rect;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetMINIMAL_ACCEPTABLE_PATH_LENGTH()I
    .registers 1

    sget v0, Landroid/view/CutoutSpecification;->MINIMAL_ACCEPTABLE_PATH_LENGTH:I

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdecideWhichEdge(ZZZ)I
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/view/CutoutSpecification;->decideWhichEdge(ZZZ)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 77
    const-string v0, "H1V1Z"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Landroid/view/CutoutSpecification;->MINIMAL_ACCEPTABLE_PATH_LENGTH:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/view/CutoutSpecification$Parser;)V
    .registers 3
    .param p1, "parser"    # Landroid/view/CutoutSpecification$Parser;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-static {p1}, Landroid/view/CutoutSpecification$Parser;->-$$Nest$fgetmPath(Landroid/view/CutoutSpecification$Parser;)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Landroid/view/CutoutSpecification;->mPath:Landroid/graphics/Path;

    .line 101
    invoke-static {p1}, Landroid/view/CutoutSpecification$Parser;->-$$Nest$fgetmLeftBound(Landroid/view/CutoutSpecification$Parser;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroid/view/CutoutSpecification;->mLeftBound:Landroid/graphics/Rect;

    .line 102
    invoke-static {p1}, Landroid/view/CutoutSpecification$Parser;->-$$Nest$fgetmTopBound(Landroid/view/CutoutSpecification$Parser;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroid/view/CutoutSpecification;->mTopBound:Landroid/graphics/Rect;

    .line 103
    invoke-static {p1}, Landroid/view/CutoutSpecification$Parser;->-$$Nest$fgetmRightBound(Landroid/view/CutoutSpecification$Parser;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroid/view/CutoutSpecification;->mRightBound:Landroid/graphics/Rect;

    .line 104
    invoke-static {p1}, Landroid/view/CutoutSpecification$Parser;->-$$Nest$fgetmBottomBound(Landroid/view/CutoutSpecification$Parser;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroid/view/CutoutSpecification;->mBottomBound:Landroid/graphics/Rect;

    .line 105
    invoke-static {p1}, Landroid/view/CutoutSpecification$Parser;->-$$Nest$fgetmInsets(Landroid/view/CutoutSpecification$Parser;)Landroid/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Landroid/view/CutoutSpecification;->mInsets:Landroid/graphics/Insets;

    .line 107
    invoke-static {p1}, Landroid/view/CutoutSpecification$Parser;->-$$Nest$fgetmPhysicalPixelDisplaySizeRatio(Landroid/view/CutoutSpecification$Parser;)F

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/CutoutSpecification;->applyPhysicalPixelDisplaySizeRatio(F)V

    .line 117
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/CutoutSpecification$Parser;Landroid/view/CutoutSpecification-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/CutoutSpecification;-><init>(Landroid/view/CutoutSpecification$Parser;)V

    return-void
.end method

.method private blacklist applyPhysicalPixelDisplaySizeRatio(F)V
    .registers 4
    .param p1, "physicalPixelDisplaySizeRatio"    # F

    .line 120
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_7

    .line 121
    return-void

    .line 124
    :cond_7
    iget-object v0, p0, Landroid/view/CutoutSpecification;->mPath:Landroid/graphics/Path;

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/view/CutoutSpecification;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    .line 125
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 126
    .local v0, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v0, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 127
    iget-object v1, p0, Landroid/view/CutoutSpecification;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 130
    .end local v0    # "matrix":Landroid/graphics/Matrix;
    :cond_20
    iget-object v0, p0, Landroid/view/CutoutSpecification;->mLeftBound:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1}, Landroid/view/CutoutSpecification;->scaleBounds(Landroid/graphics/Rect;F)V

    .line 131
    iget-object v0, p0, Landroid/view/CutoutSpecification;->mTopBound:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1}, Landroid/view/CutoutSpecification;->scaleBounds(Landroid/graphics/Rect;F)V

    .line 132
    iget-object v0, p0, Landroid/view/CutoutSpecification;->mRightBound:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1}, Landroid/view/CutoutSpecification;->scaleBounds(Landroid/graphics/Rect;F)V

    .line 133
    iget-object v0, p0, Landroid/view/CutoutSpecification;->mBottomBound:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1}, Landroid/view/CutoutSpecification;->scaleBounds(Landroid/graphics/Rect;F)V

    .line 134
    iget-object v0, p0, Landroid/view/CutoutSpecification;->mInsets:Landroid/graphics/Insets;

    invoke-direct {p0, v0, p1}, Landroid/view/CutoutSpecification;->scaleInsets(Landroid/graphics/Insets;F)Landroid/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Landroid/view/CutoutSpecification;->mInsets:Landroid/graphics/Insets;

    .line 135
    return-void
.end method

.method private static blacklist decideWhichEdge(ZZZ)I
    .registers 7
    .param p0, "isTopEdgeShortEdge"    # Z
    .param p1, "isShortEdge"    # Z
    .param p2, "isStart"    # Z

    .line 194
    const/4 v0, 0x3

    const/4 v1, 0x5

    const/16 v2, 0x30

    const/16 v3, 0x50

    if-eqz p0, :cond_15

    .line 195
    if-eqz p1, :cond_10

    if-eqz p2, :cond_e

    move v0, v2

    goto :goto_21

    :cond_e
    move v0, v3

    goto :goto_21

    :cond_10
    if-eqz p2, :cond_13

    goto :goto_21

    :cond_13
    move v0, v1

    goto :goto_21

    .line 196
    :cond_15
    if-eqz p1, :cond_1c

    if-eqz p2, :cond_1a

    goto :goto_21

    :cond_1a
    move v0, v1

    goto :goto_21

    :cond_1c
    if-eqz p2, :cond_20

    move v0, v2

    goto :goto_21

    :cond_20
    move v0, v3

    .line 194
    :goto_21
    return v0
.end method

.method private blacklist scaleBounds(Landroid/graphics/Rect;F)V
    .registers 4
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "ratio"    # F

    .line 138
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 139
    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->scale(F)V

    .line 141
    :cond_b
    return-void
.end method

.method private blacklist scaleInsets(Landroid/graphics/Insets;F)Landroid/graphics/Insets;
    .registers 8
    .param p1, "insets"    # Landroid/graphics/Insets;
    .param p2, "ratio"    # F

    .line 144
    iget v0, p1, Landroid/graphics/Insets;->left:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget v2, p1, Landroid/graphics/Insets;->top:I

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v2, v1

    float-to-int v2, v2

    iget v3, p1, Landroid/graphics/Insets;->right:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v3, v1

    float-to-int v3, v3

    iget v4, p1, Landroid/graphics/Insets;->bottom:I

    int-to-float v4, v4

    mul-float/2addr v4, p2

    add-float/2addr v4, v1

    float-to-int v1, v4

    invoke-static {v0, v2, v3, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist getBottomBound()Landroid/graphics/Rect;
    .registers 2

    .line 178
    iget-object v0, p0, Landroid/view/CutoutSpecification;->mBottomBound:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getLeftBound()Landroid/graphics/Rect;
    .registers 2

    .line 160
    iget-object v0, p0, Landroid/view/CutoutSpecification;->mLeftBound:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getPath()Landroid/graphics/Path;
    .registers 2

    .line 154
    iget-object v0, p0, Landroid/view/CutoutSpecification;->mPath:Landroid/graphics/Path;

    return-object v0
.end method

.method public blacklist getRightBound()Landroid/graphics/Rect;
    .registers 2

    .line 172
    iget-object v0, p0, Landroid/view/CutoutSpecification;->mRightBound:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getSafeInset()Landroid/graphics/Rect;
    .registers 2

    .line 189
    iget-object v0, p0, Landroid/view/CutoutSpecification;->mInsets:Landroid/graphics/Insets;

    invoke-virtual {v0}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTopBound()Landroid/graphics/Rect;
    .registers 2

    .line 166
    iget-object v0, p0, Landroid/view/CutoutSpecification;->mTopBound:Landroid/graphics/Rect;

    return-object v0
.end method
