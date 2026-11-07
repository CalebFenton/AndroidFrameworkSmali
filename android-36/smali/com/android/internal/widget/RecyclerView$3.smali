.class Lcom/android/internal/widget/RecyclerView$3;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist getInterpolation(F)F
    .registers 4
    .param p1, "t"    # F

    .line 484
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    .line 485
    mul-float v1, p1, p1

    mul-float/2addr v1, p1

    mul-float/2addr v1, p1

    mul-float/2addr v1, p1

    add-float/2addr v1, v0

    return v1
.end method
