.class Landroid/support/v4/widget/PopupWindowCompat$Api23PopupWindowImpl;
.super Landroid/support/v4/widget/PopupWindowCompat$Api21PopupWindowImpl;
.source "PopupWindowCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/PopupWindowCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api23PopupWindowImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 108
    invoke-direct {p0}, Landroid/support/v4/widget/PopupWindowCompat$Api21PopupWindowImpl;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getOverlapAnchor(Landroid/widget/PopupWindow;)Z
    .locals 1
    .param p1, "popupWindow"    # Landroid/widget/PopupWindow;

    #@0
    .prologue
    .line 116
    invoke-static {p1}, Landroid/support/v4/widget/PopupWindowCompatApi23;->getOverlapAnchor(Landroid/widget/PopupWindow;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getWindowLayoutType(Landroid/widget/PopupWindow;)I
    .locals 1
    .param p1, "popupWindow"    # Landroid/widget/PopupWindow;

    #@0
    .prologue
    .line 126
    invoke-static {p1}, Landroid/support/v4/widget/PopupWindowCompatApi23;->getWindowLayoutType(Landroid/widget/PopupWindow;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public setOverlapAnchor(Landroid/widget/PopupWindow;Z)V
    .locals 0
    .param p1, "popupWindow"    # Landroid/widget/PopupWindow;
    .param p2, "overlapAnchor"    # Z

    #@0
    .prologue
    .line 111
    invoke-static {p1, p2}, Landroid/support/v4/widget/PopupWindowCompatApi23;->setOverlapAnchor(Landroid/widget/PopupWindow;Z)V

    #@3
    .line 110
    return-void
.end method

.method public setWindowLayoutType(Landroid/widget/PopupWindow;I)V
    .locals 0
    .param p1, "popupWindow"    # Landroid/widget/PopupWindow;
    .param p2, "layoutType"    # I

    #@0
    .prologue
    .line 121
    invoke-static {p1, p2}, Landroid/support/v4/widget/PopupWindowCompatApi23;->setWindowLayoutType(Landroid/widget/PopupWindow;I)V

    #@3
    .line 120
    return-void
.end method
