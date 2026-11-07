.class public Landroid/app/UiModeManager$ContrastUtils;
.super Ljava/lang/Object;
.source "UiModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/UiModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContrastUtils"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/UiModeManager$ContrastUtils$ContrastLevel;
    }
.end annotation


# static fields
.field public static final blacklist CONTRAST_DEFAULT_VALUE:F = 0.0f

.field public static final blacklist CONTRAST_LEVEL_HIGH:I = 0x2

.field public static final blacklist CONTRAST_LEVEL_MEDIUM:I = 0x1

.field public static final blacklist CONTRAST_LEVEL_STANDARD:I = 0x0

.field private static final blacklist CONTRAST_MAX_VALUE:F = 1.0f

.field private static final blacklist CONTRAST_MIN_VALUE:F = -1.0f


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist allContrastLevels()Ljava/util/stream/Stream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 591
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist fromContrastLevel(I)F
    .registers 4
    .param p0, "contrastLevel"    # I

    .line 609
    invoke-static {}, Landroid/app/UiModeManager$ContrastUtils;->allContrastLevels()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/app/UiModeManager$ContrastUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/app/UiModeManager$ContrastUtils$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 612
    int-to-float v0, p0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0

    .line 610
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unrecognized contrast level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic blacklist lambda$fromContrastLevel$1(ILjava/lang/Integer;)Z
    .registers 3
    .param p0, "contrastLevel"    # I
    .param p1, "level"    # Ljava/lang/Integer;

    .line 609
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method static synthetic blacklist lambda$toContrastLevel$0(FLjava/lang/Integer;)D
    .registers 4
    .param p0, "contrast"    # F
    .param p1, "contrastLevel"    # Ljava/lang/Integer;

    .line 602
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, p0

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public static blacklist toContrastLevel(F)I
    .registers 3
    .param p0, "contrast"    # F

    .line 598
    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_28

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p0, v0

    if-gtz v0, :cond_28

    .line 601
    invoke-static {}, Landroid/app/UiModeManager$ContrastUtils;->allContrastLevels()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/app/UiModeManager$ContrastUtils$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/app/UiModeManager$ContrastUtils$$ExternalSyntheticLambda1;-><init>(F)V

    invoke-static {v1}, Ljava/util/Comparator;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->min(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v0

    .line 602
    invoke-virtual {v0}, Ljava/util/Optional;->orElseThrow()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 601
    return v0

    .line 599
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "contrast values should be in [-1, 1]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
