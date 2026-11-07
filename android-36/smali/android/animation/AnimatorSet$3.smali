.class Landroid/animation/AnimatorSet$3;
.super Ljava/lang/Object;
.source "AnimatorSet.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/animation/AnimatorSet;->sortAnimationEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/animation/AnimatorSet$AnimationEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/animation/AnimatorSet;)V
    .registers 2
    .param p1, "this$0"    # Landroid/animation/AnimatorSet;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1729
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compare(Landroid/animation/AnimatorSet$AnimationEvent;Landroid/animation/AnimatorSet$AnimationEvent;)I
    .registers 14
    .param p1, "e1"    # Landroid/animation/AnimatorSet$AnimationEvent;
    .param p2, "e2"    # Landroid/animation/AnimatorSet$AnimationEvent;

    .line 1732
    invoke-virtual {p1}, Landroid/animation/AnimatorSet$AnimationEvent;->getTime()J

    move-result-wide v0

    .line 1733
    .local v0, "t1":J
    invoke-virtual {p2}, Landroid/animation/AnimatorSet$AnimationEvent;->getTime()J

    move-result-wide v2

    .line 1734
    .local v2, "t2":J
    cmp-long v4, v0, v2

    const/4 v5, 0x1

    if-nez v4, :cond_20

    .line 1737
    iget v4, p2, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    iget v6, p1, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    add-int/2addr v4, v6

    if-ne v4, v5, :cond_1a

    .line 1740
    iget v4, p1, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    iget v5, p2, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    sub-int/2addr v4, v5

    return v4

    .line 1742
    :cond_1a
    iget v4, p2, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    iget v5, p1, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    sub-int/2addr v4, v5

    return v4

    .line 1745
    :cond_20
    const-wide/16 v6, -0x1

    cmp-long v4, v2, v6

    const/4 v8, -0x1

    if-nez v4, :cond_28

    .line 1746
    return v8

    .line 1748
    :cond_28
    cmp-long v4, v0, v6

    if-nez v4, :cond_2d

    .line 1749
    return v5

    .line 1752
    :cond_2d
    sub-long v6, v0, v2

    const-wide/16 v9, 0x0

    cmp-long v4, v6, v9

    if-lez v4, :cond_36

    goto :goto_37

    :cond_36
    move v5, v8

    :goto_37
    return v5
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1729
    check-cast p1, Landroid/animation/AnimatorSet$AnimationEvent;

    check-cast p2, Landroid/animation/AnimatorSet$AnimationEvent;

    invoke-virtual {p0, p1, p2}, Landroid/animation/AnimatorSet$3;->compare(Landroid/animation/AnimatorSet$AnimationEvent;Landroid/animation/AnimatorSet$AnimationEvent;)I

    move-result p1

    return p1
.end method
