.class Lcom/android/internal/graphics/palette/Palette$1;
.super Ljava/lang/Object;
.source "Palette.java"

# interfaces
.implements Lcom/android/internal/graphics/palette/Palette$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/graphics/palette/Palette;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final blacklist BLACK_MAX_LIGHTNESS:F = 0.05f

.field private static final blacklist WHITE_MIN_LIGHTNESS:F = 0.95f


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist isBlack([F)Z
    .registers 4
    .param p1, "hslColor"    # [F

    .line 492
    const/4 v0, 0x2

    aget v0, p1, v0

    const v1, 0x3d4ccccd    # 0.05f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private blacklist isNearRedILine([F)Z
    .registers 6
    .param p1, "hslColor"    # [F

    .line 506
    const/4 v0, 0x0

    aget v1, p1, v0

    const/high16 v2, 0x41200000    # 10.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1c

    aget v1, p1, v0

    const/high16 v2, 0x42140000    # 37.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1c

    const/4 v1, 0x1

    aget v2, p1, v1

    const v3, 0x3f51eb85    # 0.82f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1c

    move v0, v1

    :cond_1c
    return v0
.end method

.method private blacklist isWhite([F)Z
    .registers 4
    .param p1, "hslColor"    # [F

    .line 499
    const/4 v0, 0x2

    aget v0, p1, v0

    const v1, 0x3f733333    # 0.95f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method


# virtual methods
.method public blacklist isAllowed(I[F)Z
    .registers 4
    .param p1, "rgb"    # I
    .param p2, "hsl"    # [F

    .line 485
    invoke-direct {p0, p2}, Lcom/android/internal/graphics/palette/Palette$1;->isWhite([F)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-direct {p0, p2}, Lcom/android/internal/graphics/palette/Palette$1;->isBlack([F)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-direct {p0, p2}, Lcom/android/internal/graphics/palette/Palette$1;->isNearRedILine([F)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method
