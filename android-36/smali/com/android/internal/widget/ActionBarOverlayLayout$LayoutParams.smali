.class public Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "ActionBarOverlayLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ActionBarOverlayLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# direct methods
.method public constructor blacklist <init>(II)V
    .registers 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 914
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 915
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 910
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 911
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 2
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .line 918
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 919
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .registers 2
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .line 922
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 923
    return-void
.end method
