.class public Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "MessagingLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/MessagingLinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public blacklist hide:Z

.field public blacklist lastVisibleHeight:I

.field public blacklist visibleBefore:Z


# direct methods
.method public constructor blacklist <init>(II)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 418
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 409
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    .line 410
    iput-boolean v0, p0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->visibleBefore:Z

    .line 419
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 414
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 409
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    .line 410
    iput-boolean v0, p0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->visibleBefore:Z

    .line 415
    return-void
.end method
