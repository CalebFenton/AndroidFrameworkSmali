.class Landroid/support/v4/widget/PopupWindowCompatApi23;
.super Ljava/lang/Object;
.source "PopupWindowCompatApi23.java"


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static getOverlapAnchor(Landroid/widget/PopupWindow;)Z
    .locals 1
    .param p0, "popupWindow"    # Landroid/widget/PopupWindow;

    #@0
    .prologue
    .line 28
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getOverlapAnchor()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static getWindowLayoutType(Landroid/widget/PopupWindow;)I
    .locals 1
    .param p0, "popupWindow"    # Landroid/widget/PopupWindow;

    #@0
    .prologue
    .line 36
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWindowLayoutType()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static setOverlapAnchor(Landroid/widget/PopupWindow;Z)V
    .locals 0
    .param p0, "popupWindow"    # Landroid/widget/PopupWindow;
    .param p1, "overlapAnchor"    # Z

    #@0
    .prologue
    .line 24
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setOverlapAnchor(Z)V

    #@3
    .line 23
    return-void
.end method

.method static setWindowLayoutType(Landroid/widget/PopupWindow;I)V
    .locals 0
    .param p0, "popupWindow"    # Landroid/widget/PopupWindow;
    .param p1, "layoutType"    # I

    #@0
    .prologue
    .line 32
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    #@3
    .line 31
    return-void
.end method
