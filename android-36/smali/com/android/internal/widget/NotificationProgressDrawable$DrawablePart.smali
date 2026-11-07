.class public abstract Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;
.super Ljava/lang/Object;
.source "NotificationProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/NotificationProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DrawablePart"
.end annotation


# instance fields
.field protected final blacklist mColor:I

.field protected blacklist mEnd:F

.field protected blacklist mStart:F


# direct methods
.method protected constructor blacklist <init>(FFI)V
    .registers 4
    .param p1, "start"    # F
    .param p2, "end"    # F
    .param p3, "color"    # I

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    iput p1, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mStart:F

    .line 410
    iput p2, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mEnd:F

    .line 411
    iput p3, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mColor:I

    .line 412
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 442
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 444
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_34

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_34

    .line 446
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;

    .line 447
    .local v2, "that":Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;
    iget v3, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mStart:F

    iget v4, v2, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mStart:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_20

    return v1

    .line 448
    :cond_20
    iget v3, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mEnd:F

    iget v4, v2, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mEnd:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_2b

    return v1

    .line 449
    :cond_2b
    iget v3, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mColor:I

    iget v4, v2, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mColor:I

    if-ne v3, v4, :cond_32

    goto :goto_33

    :cond_32
    move v0, v1

    :goto_33
    return v0

    .line 444
    .end local v2    # "that":Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;
    :cond_34
    :goto_34
    return v1
.end method

.method public blacklist getColor()I
    .registers 2

    .line 436
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mColor:I

    return v0
.end method

.method public blacklist getEnd()F
    .registers 2

    .line 423
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mEnd:F

    return v0
.end method

.method public blacklist getStart()F
    .registers 2

    .line 415
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mStart:F

    return v0
.end method

.method public blacklist getWidth()F
    .registers 3

    .line 432
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mEnd:F

    iget v1, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mStart:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 454
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mStart:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mEnd:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist setEnd(F)V
    .registers 2
    .param p1, "end"    # F

    .line 427
    iput p1, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mEnd:F

    .line 428
    return-void
.end method

.method public blacklist setStart(F)V
    .registers 2
    .param p1, "start"    # F

    .line 419
    iput p1, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mStart:F

    .line 420
    return-void
.end method
