.class public Lcom/android/internal/view/menu/MenuPopupHelper;
.super Ljava/lang/Object;
.source "MenuPopupHelper.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/MenuPopupHelper$1;
    }
.end annotation


# static fields
.field private static final TOUCH_EPICENTER_SIZE_DP:I = 0x30


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private mDropDownGravity:I

.field private mForceShowIcon:Z

.field private final mInternalOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOverflowOnly:Z

.field private mPopup:Lcom/android/internal/view/menu/MenuPopup;

.field private final mPopupStyleAttr:I

.field private final mPopupStyleRes:I

.field private mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 59
    const/4 v3, 0x0

    #@2
    const v5, 0x1010300

    #@5
    move-object v0, p0

    #@6
    move-object v1, p1

    #@7
    move-object v2, p2

    #@8
    move v6, v4

    #@9
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    #@c
    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p3, "anchorView"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 64
    const v5, 0x1010300

    #@4
    move-object v0, p0

    #@5
    move-object v1, p1

    #@6
    move-object v2, p2

    #@7
    move-object v3, p3

    #@8
    move v6, v4

    #@9
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    #@c
    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZI)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p3, "anchorView"    # Landroid/view/View;
    .param p4, "overflowOnly"    # Z
    .param p5, "popupStyleAttr"    # I

    #@0
    .prologue
    .line 70
    const/4 v6, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move v4, p4

    #@6
    move v5, p5

    #@7
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    #@a
    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZII)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p3, "anchorView"    # Landroid/view/View;
    .param p4, "overflowOnly"    # Z
    .param p5, "popupStyleAttr"    # I
    .param p6, "popupStyleRes"    # I

    #@0
    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 51
    const v0, 0x800003

    #@6
    iput v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mDropDownGravity:I

    #@8
    .line 320
    new-instance v0, Lcom/android/internal/view/menu/MenuPopupHelper$1;

    #@a
    invoke-direct {v0, p0}, Lcom/android/internal/view/menu/MenuPopupHelper$1;-><init>(Lcom/android/internal/view/menu/MenuPopupHelper;)V

    #@d
    iput-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mInternalOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    #@f
    .line 76
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    #@11
    .line 77
    iput-object p2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@13
    .line 78
    iput-object p3, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    #@15
    .line 79
    iput-boolean p4, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    #@17
    .line 80
    iput p5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupStyleAttr:I

    #@19
    .line 81
    iput p6, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupStyleRes:I

    #@1b
    .line 75
    return-void
.end method

.method private createPopup()Lcom/android/internal/view/menu/MenuPopup;
    .locals 13

    #@0
    .prologue
    .line 215
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    #@2
    .line 216
    const-string/jumbo v2, "window"

    #@5
    .line 215
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@8
    move-result-object v12

    #@9
    check-cast v12, Landroid/view/WindowManager;

    #@b
    .line 217
    .local v12, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@e
    move-result-object v7

    #@f
    .line 218
    .local v7, "display":Landroid/view/Display;
    new-instance v8, Landroid/graphics/Point;

    #@11
    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    #@14
    .line 219
    .local v8, "displaySize":Landroid/graphics/Point;
    invoke-virtual {v7, v8}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    #@17
    .line 221
    iget v1, v8, Landroid/graphics/Point;->x:I

    #@19
    iget v2, v8, Landroid/graphics/Point;->y:I

    #@1b
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    #@1e
    move-result v11

    #@1f
    .line 222
    .local v11, "smallestWidth":I
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    #@21
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@24
    move-result-object v1

    #@25
    .line 223
    const v2, 0x10500c0

    #@28
    .line 222
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@2b
    move-result v10

    #@2c
    .line 224
    .local v10, "minSmallestWidthCascading":I
    if-lt v11, v10, :cond_0

    #@2e
    const/4 v9, 0x1

    #@2f
    .line 227
    .local v9, "enableCascadingSubmenus":Z
    :goto_0
    if-eqz v9, :cond_1

    #@31
    .line 228
    new-instance v0, Lcom/android/internal/view/menu/CascadingMenuPopup;

    #@33
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    #@35
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    #@37
    iget v3, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupStyleAttr:I

    #@39
    .line 229
    iget v4, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupStyleRes:I

    #@3b
    iget-boolean v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    #@3d
    .line 228
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/menu/CascadingMenuPopup;-><init>(Landroid/content/Context;Landroid/view/View;IIZ)V

    #@40
    .line 236
    .local v0, "popup":Lcom/android/internal/view/menu/MenuPopup;
    :goto_1
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@42
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuPopup;->addMenu(Lcom/android/internal/view/menu/MenuBuilder;)V

    #@45
    .line 237
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mInternalOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    #@47
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    #@4a
    .line 240
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    #@4c
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuPopup;->setAnchorView(Landroid/view/View;)V

    #@4f
    .line 241
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    #@51
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuPopup;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    #@54
    .line 242
    iget-boolean v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    #@56
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuPopup;->setForceShowIcon(Z)V

    #@59
    .line 243
    iget v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mDropDownGravity:I

    #@5b
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuPopup;->setGravity(I)V

    #@5e
    .line 245
    return-object v0

    #@5f
    .line 224
    .end local v0    # "popup":Lcom/android/internal/view/menu/MenuPopup;
    .end local v9    # "enableCascadingSubmenus":Z
    :cond_0
    const/4 v9, 0x0

    #@60
    goto :goto_0

    #@61
    .line 231
    .restart local v9    # "enableCascadingSubmenus":Z
    :cond_1
    new-instance v0, Lcom/android/internal/view/menu/StandardMenuPopup;

    #@63
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    #@65
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@67
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    #@69
    iget v4, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupStyleAttr:I

    #@6b
    .line 232
    iget v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupStyleRes:I

    #@6d
    iget-boolean v6, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    #@6f
    .line 231
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/StandardMenuPopup;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;IIZ)V

    #@72
    .restart local v0    # "popup":Lcom/android/internal/view/menu/MenuPopup;
    goto :goto_1
.end method

.method private showPopup(IIZZ)V
    .locals 9
    .param p1, "xOffset"    # I
    .param p2, "yOffset"    # I
    .param p3, "useOffsets"    # Z
    .param p4, "showTitle"    # Z

    #@0
    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->getPopup()Lcom/android/internal/view/menu/MenuPopup;

    #@3
    move-result-object v4

    #@4
    .line 250
    .local v4, "popup":Lcom/android/internal/view/menu/MenuPopup;
    invoke-virtual {v4, p4}, Lcom/android/internal/view/menu/MenuPopup;->setShowTitle(Z)V

    #@7
    .line 252
    if-eqz p3, :cond_1

    #@9
    .line 256
    iget v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mDropDownGravity:I

    #@b
    .line 257
    iget-object v6, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    #@d
    invoke-virtual {v6}, Landroid/view/View;->getLayoutDirection()I

    #@10
    move-result v6

    #@11
    .line 256
    invoke-static {v5, v6}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    #@14
    move-result v5

    #@15
    and-int/lit8 v3, v5, 0x7

    #@17
    .line 258
    .local v3, "hgrav":I
    const/4 v5, 0x5

    #@18
    if-ne v3, v5, :cond_0

    #@1a
    .line 259
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    #@1c
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    #@1f
    move-result v5

    #@20
    sub-int/2addr p1, v5

    #@21
    .line 262
    :cond_0
    invoke-virtual {v4, p1}, Lcom/android/internal/view/menu/MenuPopup;->setHorizontalOffset(I)V

    #@24
    .line 263
    invoke-virtual {v4, p2}, Lcom/android/internal/view/menu/MenuPopup;->setVerticalOffset(I)V

    #@27
    .line 269
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    #@29
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@2c
    move-result-object v5

    #@2d
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@30
    move-result-object v5

    #@31
    iget v0, v5, Landroid/util/DisplayMetrics;->density:F

    #@33
    .line 270
    .local v0, "density":F
    const/high16 v5, 0x42400000    # 48.0f

    #@35
    mul-float/2addr v5, v0

    #@36
    const/high16 v6, 0x40000000    # 2.0f

    #@38
    div-float/2addr v5, v6

    #@39
    float-to-int v2, v5

    #@3a
    .line 271
    .local v2, "halfSize":I
    new-instance v1, Landroid/graphics/Rect;

    #@3c
    sub-int v5, p1, v2

    #@3e
    sub-int v6, p2, v2

    #@40
    .line 272
    add-int v7, p1, v2

    #@42
    add-int v8, p2, v2

    #@44
    .line 271
    invoke-direct {v1, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    #@47
    .line 273
    .local v1, "epicenter":Landroid/graphics/Rect;
    invoke-virtual {v4, v1}, Lcom/android/internal/view/menu/MenuPopup;->setEpicenterBounds(Landroid/graphics/Rect;)V

    #@4a
    .line 276
    .end local v0    # "density":F
    .end local v1    # "epicenter":Landroid/graphics/Rect;
    .end local v2    # "halfSize":I
    .end local v3    # "hgrav":I
    :cond_1
    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuPopup;->show()V

    #@4d
    .line 248
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    #@0
    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->isShowing()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 285
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/android/internal/view/menu/MenuPopup;

    #@8
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopup;->dismiss()V

    #@b
    .line 283
    :cond_0
    return-void
.end method

.method public getGravity()I
    .locals 1

    #@0
    .prologue
    .line 130
    iget v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mDropDownGravity:I

    #@2
    return v0
.end method

.method public getPopup()Lcom/android/internal/view/menu/MenuPopup;
    .locals 1

    #@0
    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/android/internal/view/menu/MenuPopup;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 148
    invoke-direct {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->createPopup()Lcom/android/internal/view/menu/MenuPopup;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/android/internal/view/menu/MenuPopup;

    #@a
    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/android/internal/view/menu/MenuPopup;

    #@c
    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    #@0
    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/android/internal/view/menu/MenuPopup;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/android/internal/view/menu/MenuPopup;

    #@6
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopup;->isShowing()Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method protected onDismiss()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 298
    iput-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/android/internal/view/menu/MenuPopup;

    #@3
    .line 300
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 301
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    #@9
    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    #@c
    .line 297
    :cond_0
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;

    #@0
    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    #@2
    .line 95
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 1
    .param p1, "forceShowIcon"    # Z

    #@0
    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    #@2
    .line 110
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/android/internal/view/menu/MenuPopup;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 111
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/android/internal/view/menu/MenuPopup;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/MenuPopup;->setForceShowIcon(Z)V

    #@b
    .line 108
    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    #@0
    .prologue
    .line 123
    iput p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mDropDownGravity:I

    #@2
    .line 122
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/PopupWindow$OnDismissListener;

    #@0
    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    #@2
    .line 84
    return-void
.end method

.method public setPresenterCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    #@0
    .prologue
    .line 311
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    #@2
    .line 312
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/android/internal/view/menu/MenuPopup;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 313
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/android/internal/view/menu/MenuPopup;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/MenuPopup;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    #@b
    .line 310
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    #@0
    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->tryShow()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 135
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "MenuPopupHelper cannot be used without an anchor"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 133
    :cond_0
    return-void
.end method

.method public show(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    #@0
    .prologue
    .line 140
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/view/menu/MenuPopupHelper;->tryShow(II)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 141
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "MenuPopupHelper cannot be used without an anchor"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 139
    :cond_0
    return-void
.end method

.method public tryShow()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 160
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->isShowing()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 161
    return v2

    #@9
    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    #@b
    if-nez v0, :cond_1

    #@d
    .line 165
    return v1

    #@e
    .line 168
    :cond_1
    invoke-direct {p0, v1, v1, v1, v1}, Lcom/android/internal/view/menu/MenuPopupHelper;->showPopup(IIZZ)V

    #@11
    .line 169
    return v2
.end method

.method public tryShow(II)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 196
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->isShowing()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 197
    return v1

    #@8
    .line 200
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    #@a
    if-nez v0, :cond_1

    #@c
    .line 201
    const/4 v0, 0x0

    #@d
    return v0

    #@e
    .line 204
    :cond_1
    invoke-direct {p0, p1, p2, v1, v1}, Lcom/android/internal/view/menu/MenuPopupHelper;->showPopup(IIZZ)V

    #@11
    .line 205
    return v1
.end method
