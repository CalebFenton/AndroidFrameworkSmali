.class public Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
.super Ljava/lang/Object;
.source "Tonal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/colorextraction/types/Tonal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TonalPalette"
.end annotation


# instance fields
.field public final blacklist h:[F

.field public final blacklist l:[F

.field public final blacklist maxHue:F

.field public final blacklist minHue:F

.field public final blacklist s:[F


# direct methods
.method constructor blacklist <init>([F[F[F)V
    .registers 9
    .param p1, "h"    # [F
    .param p2, "s"    # [F
    .param p3, "l"    # [F

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 407
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_2b

    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_2b

    .line 412
    iput-object p1, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->h:[F

    .line 413
    iput-object p2, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->s:[F

    .line 414
    iput-object p3, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->l:[F

    .line 416
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 417
    .local v0, "minHue":F
    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    .line 419
    .local v1, "maxHue":F
    array-length v2, p1

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_26

    aget v4, p1, v3

    .line 420
    .local v4, "v":F
    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 421
    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 419
    .end local v4    # "v":F
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 424
    :cond_26
    iput v0, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    .line 425
    iput v1, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    .line 426
    return-void

    .line 408
    .end local v0    # "minHue":F
    .end local v1    # "maxHue":F
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "All arrays should have the same size. h: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 409
    invoke-static {p1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " s: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " l: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 410
    invoke-static {p3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
