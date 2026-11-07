.class Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
.super Ljava/lang/Object;
.source "EpicenterTranslateClipReveal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/transition/EpicenterTranslateClipReveal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "State"
.end annotation


# instance fields
.field blacklist lower:I

.field blacklist trans:F

.field blacklist upper:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(IIF)V
    .registers 4
    .param p1, "lower"    # I
    .param p2, "upper"    # I
    .param p3, "trans"    # F

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    iput p1, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->lower:I

    .line 256
    iput p2, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->upper:I

    .line 257
    iput p3, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->trans:F

    .line 258
    return-void
.end method
