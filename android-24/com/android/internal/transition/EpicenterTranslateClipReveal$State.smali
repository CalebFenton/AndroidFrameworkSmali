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
.field lower:I

.field trans:F

.field upper:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 0
    .param p1, "lower"    # I
    .param p2, "upper"    # I
    .param p3, "trans"    # F

    #@0
    .prologue
    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 255
    iput p1, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->lower:I

    #@5
    .line 256
    iput p2, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->upper:I

    #@7
    .line 257
    iput p3, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->trans:F

    #@9
    .line 254
    return-void
.end method
