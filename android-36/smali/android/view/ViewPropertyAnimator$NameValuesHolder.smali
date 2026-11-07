.class Landroid/view/ViewPropertyAnimator$NameValuesHolder;
.super Ljava/lang/Object;
.source "ViewPropertyAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewPropertyAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NameValuesHolder"
.end annotation


# instance fields
.field greylist-max-o mDeltaValue:F

.field greylist-max-o mFromValue:F

.field greylist-max-o mNameConstant:I


# direct methods
.method constructor greylist-max-o <init>(IFF)V
    .registers 4
    .param p1, "nameConstant"    # I
    .param p2, "fromValue"    # F
    .param p3, "deltaValue"    # F

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput p1, p0, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mNameConstant:I

    .line 240
    iput p2, p0, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mFromValue:F

    .line 241
    iput p3, p0, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mDeltaValue:F

    .line 242
    return-void
.end method
