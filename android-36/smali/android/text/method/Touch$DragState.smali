.class Landroid/text/method/Touch$DragState;
.super Ljava/lang/Object;
.source "Touch.java"

# interfaces
.implements Landroid/text/NoCopySpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/method/Touch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DragState"
.end annotation


# instance fields
.field public greylist-max-o mFarEnough:Z

.field public greylist-max-o mScrollX:I

.field public greylist-max-o mScrollY:I

.field public greylist-max-o mUsed:Z

.field public greylist-max-o mX:F

.field public greylist-max-o mY:F


# direct methods
.method public constructor greylist-max-o <init>(FFII)V
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "scrollX"    # I
    .param p4, "scrollY"    # I

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput p1, p0, Landroid/text/method/Touch$DragState;->mX:F

    .line 209
    iput p2, p0, Landroid/text/method/Touch$DragState;->mY:F

    .line 210
    iput p3, p0, Landroid/text/method/Touch$DragState;->mScrollX:I

    .line 211
    iput p4, p0, Landroid/text/method/Touch$DragState;->mScrollY:I

    .line 212
    return-void
.end method
