.class public Landroid/support/v4/widget/PopupWindowCompat;
.super Ljava/lang/Object;
.source "PopupWindowCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;,
        Landroid/support/v4/widget/PopupWindowCompat$BasePopupWindowImpl;,
        Landroid/support/v4/widget/PopupWindowCompat$GingerbreadPopupWindowImpl;,
        Landroid/support/v4/widget/PopupWindowCompat$KitKatPopupWindowImpl;,
        Landroid/support/v4/widget/PopupWindowCompat$Api21PopupWindowImpl;,
        Landroid/support/v4/widget/PopupWindowCompat$Api23PopupWindowImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 135
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    .line 136
    .local v0, "version":I
    const/16 v1, 0x17

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 137
    new-instance v1, Landroid/support/v4/widget/PopupWindowCompat$Api23PopupWindowImpl;

    #@8
    invoke-direct {v1}, Landroid/support/v4/widget/PopupWindowCompat$Api23PopupWindowImpl;-><init>()V

    #@b
    sput-object v1, Landroid/support/v4/widget/PopupWindowCompat;->IMPL:Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;

    #@d
    .line 27
    :goto_0
    return-void

    #@e
    .line 138
    :cond_0
    const/16 v1, 0x15

    #@10
    if-lt v0, v1, :cond_1

    #@12
    .line 139
    new-instance v1, Landroid/support/v4/widget/PopupWindowCompat$Api21PopupWindowImpl;

    #@14
    invoke-direct {v1}, Landroid/support/v4/widget/PopupWindowCompat$Api21PopupWindowImpl;-><init>()V

    #@17
    sput-object v1, Landroid/support/v4/widget/PopupWindowCompat;->IMPL:Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;

    #@19
    goto :goto_0

    #@1a
    .line 140
    :cond_1
    const/16 v1, 0x13

    #@1c
    if-lt v0, v1, :cond_2

    #@1e
    .line 141
    new-instance v1, Landroid/support/v4/widget/PopupWindowCompat$KitKatPopupWindowImpl;

    #@20
    invoke-direct {v1}, Landroid/support/v4/widget/PopupWindowCompat$KitKatPopupWindowImpl;-><init>()V

    #@23
    sput-object v1, Landroid/support/v4/widget/PopupWindowCompat;->IMPL:Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;

    #@25
    goto :goto_0

    #@26
    .line 142
    :cond_2
    const/16 v1, 0x9

    #@28
    if-lt v0, v1, :cond_3

    #@2a
    .line 143
    new-instance v1, Landroid/support/v4/widget/PopupWindowCompat$GingerbreadPopupWindowImpl;

    #@2c
    invoke-direct {v1}, Landroid/support/v4/widget/PopupWindowCompat$GingerbreadPopupWindowImpl;-><init>()V

    #@2f
    sput-object v1, Landroid/support/v4/widget/PopupWindowCompat;->IMPL:Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;

    #@31
    goto :goto_0

    #@32
    .line 145
    :cond_3
    new-instance v1, Landroid/support/v4/widget/PopupWindowCompat$BasePopupWindowImpl;

    #@34
    invoke-direct {v1}, Landroid/support/v4/widget/PopupWindowCompat$BasePopupWindowImpl;-><init>()V

    #@37
    sput-object v1, Landroid/support/v4/widget/PopupWindowCompat;->IMPL:Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;

    #@39
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getOverlapAnchor(Landroid/widget/PopupWindow;)Z
    .locals 1
    .param p0, "popupWindow"    # Landroid/widget/PopupWindow;

    #@0
    .prologue
    .line 191
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompat;->IMPL:Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;

    #@2
    invoke-interface {v0, p0}, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;->getOverlapAnchor(Landroid/widget/PopupWindow;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static getWindowLayoutType(Landroid/widget/PopupWindow;)I
    .locals 1
    .param p0, "popupWindow"    # Landroid/widget/PopupWindow;

    #@0
    .prologue
    .line 213
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompat;->IMPL:Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;

    #@2
    invoke-interface {v0, p0}, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;->getWindowLayoutType(Landroid/widget/PopupWindow;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static setOverlapAnchor(Landroid/widget/PopupWindow;Z)V
    .locals 1
    .param p0, "popupWindow"    # Landroid/widget/PopupWindow;
    .param p1, "overlapAnchor"    # Z

    #@0
    .prologue
    .line 181
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompat;->IMPL:Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;

    #@2
    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;->setOverlapAnchor(Landroid/widget/PopupWindow;Z)V

    #@5
    .line 180
    return-void
.end method

.method public static setWindowLayoutType(Landroid/widget/PopupWindow;I)V
    .locals 1
    .param p0, "popupWindow"    # Landroid/widget/PopupWindow;
    .param p1, "layoutType"    # I

    #@0
    .prologue
    .line 204
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompat;->IMPL:Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;

    #@2
    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;->setWindowLayoutType(Landroid/widget/PopupWindow;I)V

    #@5
    .line 203
    return-void
.end method

.method public static showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;III)V
    .locals 6
    .param p0, "popup"    # Landroid/widget/PopupWindow;
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "gravity"    # I

    #@0
    .prologue
    .line 171
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompat;->IMPL:Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;

    #@2
    move-object v1, p0

    #@3
    move-object v2, p1

    #@4
    move v3, p2

    #@5
    move v4, p3

    #@6
    move v5, p4

    #@7
    invoke-interface/range {v0 .. v5}, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;->showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    #@a
    .line 170
    return-void
.end method
