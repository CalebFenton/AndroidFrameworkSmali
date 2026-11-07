.class public Lcom/android/internal/dynamicanimation/animation/FloatValueHolder;
.super Ljava/lang/Object;
.source "FloatValueHolder.java"


# instance fields
.field private blacklist mValue:F


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/dynamicanimation/animation/FloatValueHolder;->mValue:F

    .line 36
    return-void
.end method

.method public constructor blacklist <init>(F)V
    .registers 3
    .param p1, "value"    # F

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/dynamicanimation/animation/FloatValueHolder;->mValue:F

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/internal/dynamicanimation/animation/FloatValueHolder;->setValue(F)V

    .line 45
    return-void
.end method


# virtual methods
.method public blacklist getValue()F
    .registers 2

    .line 62
    iget v0, p0, Lcom/android/internal/dynamicanimation/animation/FloatValueHolder;->mValue:F

    return v0
.end method

.method public blacklist setValue(F)V
    .registers 2
    .param p1, "value"    # F

    .line 53
    iput p1, p0, Lcom/android/internal/dynamicanimation/animation/FloatValueHolder;->mValue:F

    .line 54
    return-void
.end method
