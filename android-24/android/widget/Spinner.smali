.class public Landroid/widget/Spinner;
.super Landroid/widget/AbsSpinner;
.source "Spinner.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Spinner$DialogPopup;,
        Landroid/widget/Spinner$DropDownAdapter;,
        Landroid/widget/Spinner$DropdownPopup;,
        Landroid/widget/Spinner$SavedState;,
        Landroid/widget/Spinner$SpinnerPopup;
    }
.end annotation


# static fields
.field private static final MAX_ITEMS_MEASURED:I = 0xf

.field public static final MODE_DIALOG:I = 0x0

.field public static final MODE_DROPDOWN:I = 0x1

.field private static final MODE_THEME:I = -0x1

.field private static final TAG:Ljava/lang/String; = "Spinner"


# instance fields
.field private mDisableChildrenWhenDisabled:Z

.field mDropDownWidth:I

.field private mForwardingListener:Landroid/widget/ForwardingListener;

.field private mGravity:I

.field private mPopup:Landroid/widget/Spinner$SpinnerPopup;

.field private final mPopupContext:Landroid/content/Context;

.field private mTempAdapter:Landroid/widget/SpinnerAdapter;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method static synthetic -get0(Landroid/widget/Spinner;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/Spinner;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/Spinner;)Landroid/widget/Spinner$SpinnerPopup;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/widget/Spinner;)Landroid/graphics/Rect;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/widget/Spinner;)Z
    .locals 1

    #@0
    invoke-virtual {p0}, Landroid/widget/Spinner;->isVisibleToUser()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 112
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    #@0
    .prologue
    .line 129
    const/4 v0, 0x0

    #@1
    const v1, 0x1010081

    #@4
    invoke-direct {p0, p1, v0, v1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@7
    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 141
    const v0, 0x1010081

    #@3
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 157
    const/4 v4, 0x0

    #@1
    const/4 v5, -0x1

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move-object v2, p2

    #@5
    move v3, p3

    #@6
    invoke-direct/range {v0 .. v5}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    #@9
    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "mode"    # I

    #@0
    .prologue
    .line 179
    const/4 v4, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move v3, p3

    #@5
    move v5, p4

    #@6
    invoke-direct/range {v0 .. v5}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    #@9
    .line 178
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .param p5, "mode"    # I

    #@0
    .prologue
    .line 207
    const/4 v6, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    move v5, p5

    #@7
    invoke-direct/range {v0 .. v6}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILandroid/content/res/Resources$Theme;)V

    #@a
    .line 206
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILandroid/content/res/Resources$Theme;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .param p5, "mode"    # I
    .param p6, "popupTheme"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 240
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 88
    new-instance v1, Landroid/graphics/Rect;

    #@5
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v1, p0, Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    #@a
    .line 243
    sget-object v1, Lcom/android/internal/R$styleable;->Spinner:[I

    #@c
    .line 242
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@f
    move-result-object v6

    #@10
    .line 245
    .local v6, "a":Landroid/content/res/TypedArray;
    if-eqz p6, :cond_2

    #@12
    .line 246
    new-instance v1, Landroid/view/ContextThemeWrapper;

    #@14
    invoke-direct {v1, p1, p6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    #@17
    iput-object v1, p0, Landroid/widget/Spinner;->mPopupContext:Landroid/content/Context;

    #@19
    .line 256
    :goto_0
    const/4 v1, -0x1

    #@1a
    if-ne p5, v1, :cond_0

    #@1c
    .line 257
    const/4 v1, 0x5

    #@1d
    const/4 v2, 0x0

    #@1e
    invoke-virtual {v6, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    #@21
    move-result p5

    #@22
    .line 260
    :cond_0
    packed-switch p5, :pswitch_data_0

    #@25
    .line 301
    :goto_1
    const/4 v1, 0x0

    #@26
    const/16 v2, 0x11

    #@28
    invoke-virtual {v6, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    #@2b
    move-result v1

    #@2c
    iput v1, p0, Landroid/widget/Spinner;->mGravity:I

    #@2e
    .line 303
    const/16 v1, 0x9

    #@30
    const/4 v2, 0x0

    #@31
    .line 302
    invoke-virtual {v6, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@34
    move-result v1

    #@35
    iput-boolean v1, p0, Landroid/widget/Spinner;->mDisableChildrenWhenDisabled:Z

    #@37
    .line 305
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    #@3a
    .line 309
    iget-object v1, p0, Landroid/widget/Spinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    #@3c
    if-eqz v1, :cond_1

    #@3e
    .line 310
    iget-object v1, p0, Landroid/widget/Spinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    #@40
    invoke-virtual {p0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    #@43
    .line 311
    const/4 v1, 0x0

    #@44
    iput-object v1, p0, Landroid/widget/Spinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    #@46
    .line 239
    :cond_1
    return-void

    #@47
    .line 248
    :cond_2
    const/4 v1, 0x7

    #@48
    const/4 v2, 0x0

    #@49
    invoke-virtual {v6, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@4c
    move-result v8

    #@4d
    .line 249
    .local v8, "popupThemeResId":I
    if-eqz v8, :cond_3

    #@4f
    .line 250
    new-instance v1, Landroid/view/ContextThemeWrapper;

    #@51
    invoke-direct {v1, p1, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    #@54
    iput-object v1, p0, Landroid/widget/Spinner;->mPopupContext:Landroid/content/Context;

    #@56
    goto :goto_0

    #@57
    .line 252
    :cond_3
    iput-object p1, p0, Landroid/widget/Spinner;->mPopupContext:Landroid/content/Context;

    #@59
    goto :goto_0

    #@5a
    .line 262
    .end local v8    # "popupThemeResId":I
    :pswitch_0
    new-instance v1, Landroid/widget/Spinner$DialogPopup;

    #@5c
    const/4 v2, 0x0

    #@5d
    invoke-direct {v1, p0, v2}, Landroid/widget/Spinner$DialogPopup;-><init>(Landroid/widget/Spinner;Landroid/widget/Spinner$DialogPopup;)V

    #@60
    iput-object v1, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    #@62
    .line 263
    iget-object v1, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    #@64
    const/4 v2, 0x3

    #@65
    invoke-virtual {v6, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@68
    move-result-object v2

    #@69
    invoke-interface {v1, v2}, Landroid/widget/Spinner$SpinnerPopup;->setPromptText(Ljava/lang/CharSequence;)V

    #@6c
    goto :goto_1

    #@6d
    .line 268
    :pswitch_1
    new-instance v0, Landroid/widget/Spinner$DropdownPopup;

    #@6f
    .line 269
    iget-object v2, p0, Landroid/widget/Spinner;->mPopupContext:Landroid/content/Context;

    #@71
    move-object v1, p0

    #@72
    move-object v3, p2

    #@73
    move v4, p3

    #@74
    move v5, p4

    #@75
    .line 268
    invoke-direct/range {v0 .. v5}, Landroid/widget/Spinner$DropdownPopup;-><init>(Landroid/widget/Spinner;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@78
    .line 270
    .local v0, "popup":Landroid/widget/Spinner$DropdownPopup;
    iget-object v1, p0, Landroid/widget/Spinner;->mPopupContext:Landroid/content/Context;

    #@7a
    .line 271
    sget-object v2, Lcom/android/internal/R$styleable;->Spinner:[I

    #@7c
    .line 270
    invoke-virtual {v1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@7f
    move-result-object v7

    #@80
    .line 272
    .local v7, "pa":Landroid/content/res/TypedArray;
    const/4 v1, 0x4

    #@81
    .line 273
    const/4 v2, -0x2

    #@82
    .line 272
    invoke-virtual {v7, v1, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    #@85
    move-result v1

    #@86
    iput v1, p0, Landroid/widget/Spinner;->mDropDownWidth:I

    #@88
    .line 274
    const/4 v1, 0x1

    #@89
    invoke-virtual {v7, v1}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    #@8c
    move-result v1

    #@8d
    if-eqz v1, :cond_4

    #@8f
    .line 276
    const/4 v1, 0x1

    #@90
    .line 275
    invoke-virtual {v7, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@93
    move-result-object v1

    #@94
    invoke-virtual {v0, v1}, Landroid/widget/Spinner$DropdownPopup;->setListSelector(Landroid/graphics/drawable/Drawable;)V

    #@97
    .line 278
    :cond_4
    const/4 v1, 0x2

    #@98
    invoke-virtual {v7, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@9b
    move-result-object v1

    #@9c
    invoke-virtual {v0, v1}, Landroid/widget/Spinner$DropdownPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@9f
    .line 279
    const/4 v1, 0x3

    #@a0
    invoke-virtual {v6, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@a3
    move-result-object v1

    #@a4
    invoke-virtual {v0, v1}, Landroid/widget/Spinner$DropdownPopup;->setPromptText(Ljava/lang/CharSequence;)V

    #@a7
    .line 280
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    #@aa
    .line 282
    iput-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    #@ac
    .line 283
    new-instance v1, Landroid/widget/Spinner$1;

    #@ae
    invoke-direct {v1, p0, p0, v0}, Landroid/widget/Spinner$1;-><init>(Landroid/widget/Spinner;Landroid/view/View;Landroid/widget/Spinner$DropdownPopup;)V

    #@b1
    iput-object v1, p0, Landroid/widget/Spinner;->mForwardingListener:Landroid/widget/ForwardingListener;

    #@b3
    goto/16 :goto_1

    #@b5
    .line 260
    nop

    #@b6
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private makeView(IZ)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "addChild"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 691
    iget-boolean v1, p0, Landroid/widget/Spinner;->mDataChanged:Z

    #@3
    if-nez v1, :cond_0

    #@5
    .line 692
    iget-object v1, p0, Landroid/widget/Spinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    #@7
    invoke-virtual {v1, p1}, Landroid/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    #@a
    move-result-object v0

    #@b
    .line 693
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    #@d
    .line 695
    invoke-direct {p0, v0, p2}, Landroid/widget/Spinner;->setUpChild(Landroid/view/View;Z)V

    #@10
    .line 697
    return-object v0

    #@11
    .line 702
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Landroid/widget/Spinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    #@13
    invoke-interface {v1, p1, v2, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    #@16
    move-result-object v0

    #@17
    .line 705
    .restart local v0    # "child":Landroid/view/View;
    invoke-direct {p0, v0, p2}, Landroid/widget/Spinner;->setUpChild(Landroid/view/View;Z)V

    #@1a
    .line 707
    return-object v0
.end method

.method private setUpChild(Landroid/view/View;Z)V
    .locals 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "addChild"    # Z

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 721
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@4
    move-result-object v6

    #@5
    .line 722
    .local v6, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v6, :cond_0

    #@7
    .line 723
    invoke-virtual {p0}, Landroid/widget/Spinner;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@a
    move-result-object v6

    #@b
    .line 726
    :cond_0
    invoke-virtual {p0, p1, v8, v6}, Landroid/widget/Spinner;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    #@e
    .line 728
    invoke-virtual {p0}, Landroid/widget/Spinner;->hasFocus()Z

    #@11
    move-result v8

    #@12
    invoke-virtual {p1, v8}, Landroid/view/View;->setSelected(Z)V

    #@15
    .line 729
    iget-boolean v8, p0, Landroid/widget/Spinner;->mDisableChildrenWhenDisabled:Z

    #@17
    if-eqz v8, :cond_1

    #@19
    .line 730
    invoke-virtual {p0}, Landroid/widget/Spinner;->isEnabled()Z

    #@1c
    move-result v8

    #@1d
    invoke-virtual {p1, v8}, Landroid/view/View;->setEnabled(Z)V

    #@20
    .line 734
    :cond_1
    iget v8, p0, Landroid/widget/Spinner;->mHeightMeasureSpec:I

    #@22
    .line 735
    iget-object v9, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    #@24
    iget v9, v9, Landroid/graphics/Rect;->top:I

    #@26
    iget-object v10, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    #@28
    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    #@2a
    add-int/2addr v9, v10

    #@2b
    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@2d
    .line 734
    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    #@30
    move-result v1

    #@31
    .line 736
    .local v1, "childHeightSpec":I
    iget v8, p0, Landroid/widget/Spinner;->mWidthMeasureSpec:I

    #@33
    .line 737
    iget-object v9, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    #@35
    iget v9, v9, Landroid/graphics/Rect;->left:I

    #@37
    iget-object v10, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    #@39
    iget v10, v10, Landroid/graphics/Rect;->right:I

    #@3b
    add-int/2addr v9, v10

    #@3c
    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@3e
    .line 736
    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    #@41
    move-result v5

    #@42
    .line 740
    .local v5, "childWidthSpec":I
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    #@45
    .line 746
    iget-object v8, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    #@47
    iget v8, v8, Landroid/graphics/Rect;->top:I

    #@49
    .line 747
    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredHeight()I

    #@4c
    move-result v9

    #@4d
    iget-object v10, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    #@4f
    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    #@51
    sub-int/2addr v9, v10

    #@52
    .line 748
    iget-object v10, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    #@54
    iget v10, v10, Landroid/graphics/Rect;->top:I

    #@56
    .line 747
    sub-int/2addr v9, v10

    #@57
    .line 748
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    #@5a
    move-result v10

    #@5b
    .line 747
    sub-int/2addr v9, v10

    #@5c
    div-int/lit8 v9, v9, 0x2

    #@5e
    .line 746
    add-int v4, v8, v9

    #@60
    .line 749
    .local v4, "childTop":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    #@63
    move-result v8

    #@64
    add-int v0, v4, v8

    #@66
    .line 751
    .local v0, "childBottom":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    #@69
    move-result v7

    #@6a
    .line 752
    .local v7, "width":I
    const/4 v2, 0x0

    #@6b
    .line 753
    .local v2, "childLeft":I
    add-int/lit8 v3, v7, 0x0

    #@6d
    .line 755
    .local v3, "childRight":I
    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/view/View;->layout(IIII)V

    #@70
    .line 757
    if-nez p2, :cond_2

    #@72
    .line 758
    invoke-virtual {p0, p1}, Landroid/widget/Spinner;->removeViewInLayout(Landroid/view/View;)V

    #@75
    .line 717
    :cond_2
    return-void
.end method


# virtual methods
.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 784
    const-class v0, Landroid/widget/Spinner;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getBaseline()I
    .locals 5

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 536
    const/4 v0, 0x0

    #@3
    .line 538
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/Spinner;->getChildCount()I

    #@6
    move-result v3

    #@7
    if-lez v3, :cond_2

    #@9
    .line 539
    invoke-virtual {p0, v4}, Landroid/widget/Spinner;->getChildAt(I)Landroid/view/View;

    #@c
    move-result-object v0

    #@d
    .line 545
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    #@f
    .line 546
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    #@12
    move-result v1

    #@13
    .line 547
    .local v1, "childBaseline":I
    if-ltz v1, :cond_1

    #@15
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    #@18
    move-result v2

    #@19
    add-int/2addr v2, v1

    #@1a
    :cond_1
    return v2

    #@1b
    .line 540
    .end local v1    # "childBaseline":I
    .restart local v0    # "child":Landroid/view/View;
    :cond_2
    iget-object v3, p0, Landroid/widget/Spinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    #@1d
    if-eqz v3, :cond_0

    #@1f
    iget-object v3, p0, Landroid/widget/Spinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    #@21
    invoke-interface {v3}, Landroid/widget/SpinnerAdapter;->getCount()I

    #@24
    move-result v3

    #@25
    if-lez v3, :cond_0

    #@27
    .line 541
    invoke-direct {p0, v4, v4}, Landroid/widget/Spinner;->makeView(IZ)Landroid/view/View;

    #@2a
    move-result-object v0

    #@2b
    .line 542
    .local v0, "child":Landroid/view/View;
    iget-object v3, p0, Landroid/widget/Spinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    #@2d
    invoke-virtual {v3, v4, v0}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    #@30
    goto :goto_0

    #@31
    .line 549
    .end local v0    # "child":Landroid/view/View;
    :cond_3
    return v2
.end method

.method public getDropDownHorizontalOffset()I
    .locals 1

    #@0
    .prologue
    .line 407
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    #@2
    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->getHorizontalOffset()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getDropDownVerticalOffset()I
    .locals 1

    #@0
    .prologue
    .line 383
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    #@2
    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->getVerticalOffset()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getDropDownWidth()I
    .locals 1

    #@0
    .prologue
    .line 443
    iget v0, p0, Landroid/widget/Spinner;->mDropDownWidth:I

    #@2
    return v0
.end method

.method public getGravity()I
    .locals 1

    #@0
    .prologue
    .line 482
    iget v0, p0, Landroid/widget/Spinner;->mGravity:I

    #@2
    return v0
.end method

.method public getPopupBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    .prologue
    .line 359
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    #@2
    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPopupContext()Landroid/content/Context;
    .locals 1

    #@0
    .prologue
    .line 319
    iget-object v0, p0, Landroid/widget/Spinner;->mPopupContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method public getPrompt()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 817
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    #@2
    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->getHintText()Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method layout(IZ)V
    .locals 10
    .param p1, "delta"    # I
    .param p2, "animate"    # Z

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 624
    iget-object v7, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    #@3
    iget v1, v7, Landroid/graphics/Rect;->left:I

    #@5
    .line 625
    .local v1, "childrenLeft":I
    iget v7, p0, Landroid/widget/Spinner;->mRight:I

    #@7
    iget v8, p0, Landroid/widget/Spinner;->mLeft:I

    #@9
    sub-int/2addr v7, v8

    #@a
    iget-object v8, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    #@c
    iget v8, v8, Landroid/graphics/Rect;->left:I

    #@e
    sub-int/2addr v7, v8

    #@f
    iget-object v8, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    #@11
    iget v8, v8, Landroid/graphics/Rect;->right:I

    #@13
    sub-int v2, v7, v8

    #@15
    .line 627
    .local v2, "childrenWidth":I
    iget-boolean v7, p0, Landroid/widget/Spinner;->mDataChanged:Z

    #@17
    if-eqz v7, :cond_0

    #@19
    .line 628
    invoke-virtual {p0}, Landroid/widget/Spinner;->handleDataChanged()V

    #@1c
    .line 632
    :cond_0
    iget v7, p0, Landroid/widget/Spinner;->mItemCount:I

    #@1e
    if-nez v7, :cond_1

    #@20
    .line 633
    invoke-virtual {p0}, Landroid/widget/Spinner;->resetList()V

    #@23
    .line 634
    return-void

    #@24
    .line 637
    :cond_1
    iget v7, p0, Landroid/widget/Spinner;->mNextSelectedPosition:I

    #@26
    if-ltz v7, :cond_2

    #@28
    .line 638
    iget v7, p0, Landroid/widget/Spinner;->mNextSelectedPosition:I

    #@2a
    invoke-virtual {p0, v7}, Landroid/widget/Spinner;->setSelectedPositionInt(I)V

    #@2d
    .line 641
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Spinner;->recycleAllViews()V

    #@30
    .line 644
    invoke-virtual {p0}, Landroid/widget/Spinner;->removeAllViewsInLayout()V

    #@33
    .line 647
    iget v7, p0, Landroid/widget/Spinner;->mSelectedPosition:I

    #@35
    iput v7, p0, Landroid/widget/Spinner;->mFirstPosition:I

    #@37
    .line 649
    iget-object v7, p0, Landroid/widget/Spinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    #@39
    if-eqz v7, :cond_3

    #@3b
    .line 650
    iget v7, p0, Landroid/widget/Spinner;->mSelectedPosition:I

    #@3d
    const/4 v8, 0x1

    #@3e
    invoke-direct {p0, v7, v8}, Landroid/widget/Spinner;->makeView(IZ)Landroid/view/View;

    #@41
    move-result-object v4

    #@42
    .line 651
    .local v4, "sel":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    #@45
    move-result v6

    #@46
    .line 652
    .local v6, "width":I
    move v5, v1

    #@47
    .line 653
    .local v5, "selectedOffset":I
    invoke-virtual {p0}, Landroid/widget/Spinner;->getLayoutDirection()I

    #@4a
    move-result v3

    #@4b
    .line 654
    .local v3, "layoutDirection":I
    iget v7, p0, Landroid/widget/Spinner;->mGravity:I

    #@4d
    invoke-static {v7, v3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    #@50
    move-result v0

    #@51
    .line 655
    .local v0, "absoluteGravity":I
    and-int/lit8 v7, v0, 0x7

    #@53
    sparse-switch v7, :sswitch_data_0

    #@56
    .line 663
    :goto_0
    invoke-virtual {v4, v5}, Landroid/view/View;->offsetLeftAndRight(I)V

    #@59
    .line 667
    .end local v0    # "absoluteGravity":I
    .end local v3    # "layoutDirection":I
    .end local v4    # "sel":Landroid/view/View;
    .end local v5    # "selectedOffset":I
    .end local v6    # "width":I
    :cond_3
    iget-object v7, p0, Landroid/widget/Spinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    #@5b
    invoke-virtual {v7}, Landroid/widget/AbsSpinner$RecycleBin;->clear()V

    #@5e
    .line 669
    invoke-virtual {p0}, Landroid/widget/Spinner;->invalidate()V

    #@61
    .line 671
    invoke-virtual {p0}, Landroid/widget/Spinner;->checkSelectionChanged()V

    #@64
    .line 673
    iput-boolean v9, p0, Landroid/widget/Spinner;->mDataChanged:Z

    #@66
    .line 674
    iput-boolean v9, p0, Landroid/widget/Spinner;->mNeedSync:Z

    #@68
    .line 675
    iget v7, p0, Landroid/widget/Spinner;->mSelectedPosition:I

    #@6a
    invoke-virtual {p0, v7}, Landroid/widget/Spinner;->setNextSelectedPositionInt(I)V

    #@6d
    .line 623
    return-void

    #@6e
    .line 657
    .restart local v0    # "absoluteGravity":I
    .restart local v3    # "layoutDirection":I
    .restart local v4    # "sel":Landroid/view/View;
    .restart local v5    # "selectedOffset":I
    .restart local v6    # "width":I
    :sswitch_0
    div-int/lit8 v7, v2, 0x2

    #@70
    add-int/2addr v7, v1

    #@71
    div-int/lit8 v8, v6, 0x2

    #@73
    sub-int v5, v7, v8

    #@75
    .line 658
    goto :goto_0

    #@76
    .line 660
    :sswitch_1
    add-int v7, v1, v2

    #@78
    sub-int v5, v7, v6

    #@7a
    .line 661
    goto :goto_0

    #@7b
    .line 655
    nop

    #@7c
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .locals 13
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "background"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 821
    if-nez p1, :cond_0

    #@2
    .line 822
    const/4 v10, 0x0

    #@3
    return v10

    #@4
    .line 825
    :cond_0
    const/4 v8, 0x0

    #@5
    .line 826
    .local v8, "width":I
    const/4 v5, 0x0

    #@6
    .line 827
    .local v5, "itemView":Landroid/view/View;
    const/4 v4, 0x0

    #@7
    .line 829
    .local v4, "itemType":I
    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredWidth()I

    #@a
    move-result v10

    #@b
    const/4 v11, 0x0

    #@c
    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    #@f
    move-result v9

    #@10
    .line 831
    .local v9, "widthMeasureSpec":I
    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredHeight()I

    #@13
    move-result v10

    #@14
    const/4 v11, 0x0

    #@15
    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    #@18
    move-result v2

    #@19
    .line 835
    .local v2, "heightMeasureSpec":I
    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    #@1c
    move-result v10

    #@1d
    const/4 v11, 0x0

    #@1e
    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    #@21
    move-result v7

    #@22
    .line 836
    .local v7, "start":I
    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getCount()I

    #@25
    move-result v10

    #@26
    add-int/lit8 v11, v7, 0xf

    #@28
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    #@2b
    move-result v1

    #@2c
    .line 837
    .local v1, "end":I
    sub-int v0, v1, v7

    #@2e
    .line 838
    .local v0, "count":I
    rsub-int/lit8 v10, v0, 0xf

    #@30
    sub-int v10, v7, v10

    #@32
    const/4 v11, 0x0

    #@33
    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    #@36
    move-result v7

    #@37
    .line 839
    move v3, v7

    #@38
    .end local v5    # "itemView":Landroid/view/View;
    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    #@3a
    .line 840
    invoke-interface {p1, v3}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    #@3d
    move-result v6

    #@3e
    .line 841
    .local v6, "positionType":I
    if-eq v6, v4, :cond_1

    #@40
    .line 842
    move v4, v6

    #@41
    .line 843
    const/4 v5, 0x0

    #@42
    .line 845
    :cond_1
    invoke-interface {p1, v3, v5, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    #@45
    move-result-object v5

    #@46
    .line 846
    .local v5, "itemView":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@49
    move-result-object v10

    #@4a
    if-nez v10, :cond_2

    #@4c
    .line 847
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    #@4e
    .line 848
    const/4 v11, -0x2

    #@4f
    .line 849
    const/4 v12, -0x2

    #@50
    .line 847
    invoke-direct {v10, v11, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@53
    invoke-virtual {v5, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@56
    .line 851
    :cond_2
    invoke-virtual {v5, v9, v2}, Landroid/view/View;->measure(II)V

    #@59
    .line 852
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    #@5c
    move-result v10

    #@5d
    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    #@60
    move-result v8

    #@61
    .line 839
    add-int/lit8 v3, v3, 0x1

    #@63
    goto :goto_0

    #@64
    .line 856
    .end local v5    # "itemView":Landroid/view/View;
    .end local v6    # "positionType":I
    :cond_3
    if-eqz p2, :cond_4

    #@66
    .line 857
    iget-object v10, p0, Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    #@68
    invoke-virtual {p2, v10}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@6b
    .line 858
    iget-object v10, p0, Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    #@6d
    iget v10, v10, Landroid/graphics/Rect;->left:I

    #@6f
    iget-object v11, p0, Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    #@71
    iget v11, v11, Landroid/graphics/Rect;->right:I

    #@73
    add-int/2addr v10, v11

    #@74
    add-int/2addr v8, v10

    #@75
    .line 861
    :cond_4
    return v8
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    #@0
    .prologue
    .line 778
    invoke-virtual {p0, p2}, Landroid/widget/Spinner;->setSelection(I)V

    #@3
    .line 779
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    #@6
    .line 777
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    #@0
    .prologue
    .line 555
    invoke-super {p0}, Landroid/widget/AbsSpinner;->onDetachedFromWindow()V

    #@3
    .line 557
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    #@5
    if-eqz v0, :cond_0

    #@7
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    #@9
    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->isShowing()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 558
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    #@11
    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->dismiss()V

    #@14
    .line 554
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    #@0
    .prologue
    .line 790
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@3
    .line 792
    iget-object v0, p0, Landroid/widget/Spinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 793
    const/4 v0, 0x1

    #@8
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCanOpenPopup(Z)V

    #@b
    .line 789
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 610
    invoke-super/range {p0 .. p5}, Landroid/widget/AbsSpinner;->onLayout(ZIIII)V

    #@4
    .line 611
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Landroid/widget/Spinner;->mInLayout:Z

    #@7
    .line 612
    invoke-virtual {p0, v1, v1}, Landroid/widget/Spinner;->layout(IZ)V

    #@a
    .line 613
    iput-boolean v1, p0, Landroid/widget/Spinner;->mInLayout:Z

    #@c
    .line 609
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 592
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSpinner;->onMeasure(II)V

    #@3
    .line 593
    iget-object v1, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    #@5
    if-eqz v1, :cond_0

    #@7
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@a
    move-result v1

    #@b
    const/high16 v2, -0x80000000

    #@d
    if-ne v1, v2, :cond_0

    #@f
    .line 594
    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredWidth()I

    #@12
    move-result v0

    #@13
    .line 596
    .local v0, "measuredWidth":I
    invoke-virtual {p0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {p0}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {p0, v1, v2}, Landroid/widget/Spinner;->measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    #@1e
    move-result v1

    #@1f
    .line 595
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@22
    move-result v1

    #@23
    .line 597
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@26
    move-result v2

    #@27
    .line 595
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    #@2a
    move-result v1

    #@2b
    .line 598
    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredHeight()I

    #@2e
    move-result v2

    #@2f
    .line 595
    invoke-virtual {p0, v1, v2}, Landroid/widget/Spinner;->setMeasuredDimension(II)V

    #@32
    .line 591
    .end local v0    # "measuredWidth":I
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    #@0
    .prologue
    move-object v1, p1

    #@1
    .line 873
    check-cast v1, Landroid/widget/Spinner$SavedState;

    #@3
    .line 875
    .local v1, "ss":Landroid/widget/Spinner$SavedState;
    invoke-virtual {v1}, Landroid/widget/Spinner$SavedState;->getSuperState()Landroid/os/Parcelable;

    #@6
    move-result-object v3

    #@7
    invoke-super {p0, v3}, Landroid/widget/AbsSpinner;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@a
    .line 877
    iget-boolean v3, v1, Landroid/widget/Spinner$SavedState;->showDropdown:Z

    #@c
    if-eqz v3, :cond_0

    #@e
    .line 878
    invoke-virtual {p0}, Landroid/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@11
    move-result-object v2

    #@12
    .line 879
    .local v2, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v2, :cond_0

    #@14
    .line 880
    new-instance v0, Landroid/widget/Spinner$2;

    #@16
    invoke-direct {v0, p0}, Landroid/widget/Spinner$2;-><init>(Landroid/widget/Spinner;)V

    #@19
    .line 892
    .local v0, "listener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    #@1c
    .line 872
    .end local v0    # "listener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .end local v2    # "vto":Landroid/view/ViewTreeObserver;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    #@0
    .prologue
    .line 866
    new-instance v0, Landroid/widget/Spinner$SavedState;

    #@2
    invoke-super {p0}, Landroid/widget/AbsSpinner;->onSaveInstanceState()Landroid/os/Parcelable;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Landroid/widget/Spinner$SavedState;-><init>(Landroid/os/Parcelable;)V

    #@9
    .line 867
    .local v0, "ss":Landroid/widget/Spinner$SavedState;
    iget-object v1, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    #@b
    if-eqz v1, :cond_0

    #@d
    iget-object v1, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    #@f
    invoke-interface {v1}, Landroid/widget/Spinner$SpinnerPopup;->isShowing()Z

    #@12
    move-result v1

    #@13
    :goto_0
    iput-boolean v1, v0, Landroid/widget/Spinner$SavedState;->showDropdown:Z

    #@15
    .line 868
    return-object v0

    #@16
    .line 867
    :cond_0
    const/4 v1, 0x0

    #@17
    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 583
    iget-object v0, p0, Landroid/widget/Spinner;->mForwardingListener:Landroid/widget/ForwardingListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/Spinner;->mForwardingListener:Landroid/widget/ForwardingListener;

    #@6
    invoke-virtual {v0, p0, p1}, Landroid/widget/ForwardingListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 584
    const/4 v0, 0x1

    #@d
    return v0

    #@e
    .line 587
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@11
    move-result v0

    #@12
    return v0
.end method

.method public performClick()Z
    .locals 4

    #@0
    .prologue
    .line 764
    invoke-super {p0}, Landroid/widget/AbsSpinner;->performClick()Z

    #@3
    move-result v0

    #@4
    .line 766
    .local v0, "handled":Z
    if-nez v0, :cond_0

    #@6
    .line 767
    const/4 v0, 0x1

    #@7
    .line 769
    .local v0, "handled":Z
    iget-object v1, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    #@9
    invoke-interface {v1}, Landroid/widget/Spinner$SpinnerPopup;->isShowing()Z

    #@c
    move-result v1

    #@d
    if-nez v1, :cond_0

    #@f
    .line 770
    iget-object v1, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    #@11
    invoke-virtual {p0}, Landroid/widget/Spinner;->getTextDirection()I

    #@14
    move-result v2

    #@15
    invoke-virtual {p0}, Landroid/widget/Spinner;->getTextAlignment()I

    #@18
    move-result v3

    #@19
    invoke-interface {v1, v2, v3}, Landroid/widget/Spinner$SpinnerPopup;->show(II)V

    #@1c
    .line 774
    .end local v0    # "handled":Z
    :cond_0
    return v0
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 5
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;

    #@0
    .prologue
    .line 515
    iget-object v2, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 516
    iput-object p1, p0, Landroid/widget/Spinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    #@6
    .line 517
    return-void

    #@7
    .line 520
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    #@a
    .line 522
    iget-object v2, p0, Landroid/widget/Spinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    #@c
    invoke-virtual {v2}, Landroid/widget/AbsSpinner$RecycleBin;->clear()V

    #@f
    .line 524
    iget-object v2, p0, Landroid/widget/Spinner;->mContext:Landroid/content/Context;

    #@11
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@14
    move-result-object v2

    #@15
    iget v1, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@17
    .line 525
    .local v1, "targetSdkVersion":I
    const/16 v2, 0x15

    #@19
    if-lt v1, v2, :cond_1

    #@1b
    .line 526
    if-eqz p1, :cond_1

    #@1d
    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getViewTypeCount()I

    #@20
    move-result v2

    #@21
    const/4 v3, 0x1

    #@22
    if-eq v2, v3, :cond_1

    #@24
    .line 527
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@26
    const-string/jumbo v3, "Spinner adapter view type count must be 1"

    #@29
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v2

    #@2d
    .line 530
    :cond_1
    iget-object v2, p0, Landroid/widget/Spinner;->mPopupContext:Landroid/content/Context;

    #@2f
    if-nez v2, :cond_2

    #@31
    iget-object v0, p0, Landroid/widget/Spinner;->mContext:Landroid/content/Context;

    #@33
    .line 531
    .local v0, "popupContext":Landroid/content/Context;
    :goto_0
    iget-object v2, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    #@35
    new-instance v3, Landroid/widget/Spinner$DropDownAdapter;

    #@37
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@3a
    move-result-object v4

    #@3b
    invoke-direct {v3, p1, v4}, Landroid/widget/Spinner$DropDownAdapter;-><init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V

    #@3e
    invoke-interface {v2, v3}, Landroid/widget/Spinner$SpinnerPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    #@41
    .line 512
    return-void

    #@42
    .line 530
    .end local v0    # "popupContext":Landroid/content/Context;
    :cond_2
    iget-object v0, p0, Landroid/widget/Spinner;->mPopupContext:Landroid/content/Context;

    #@44
    .restart local v0    # "popupContext":Landroid/content/Context;
    goto :goto_0
.end method

.method public setDropDownHorizontalOffset(I)V
    .locals 1
    .param p1, "pixels"    # I

    #@0
    .prologue
    .line 395
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    #@2
    invoke-interface {v0, p1}, Landroid/widget/Spinner$SpinnerPopup;->setHorizontalOffset(I)V

    #@5
    .line 394
    return-void
.end method

.method public setDropDownVerticalOffset(I)V
    .locals 1
    .param p1, "pixels"    # I

    #@0
    .prologue
    .line 371
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    #@2
    invoke-interface {v0, p1}, Landroid/widget/Spinner$SpinnerPopup;->setVerticalOffset(I)V

    #@5
    .line 370
    return-void
.end method

.method public setDropDownWidth(I)V
    .locals 2
    .param p1, "pixels"    # I

    #@0
    .prologue
    .line 424
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    #@2
    instance-of v0, v0, Landroid/widget/Spinner$DropdownPopup;

    #@4
    if-nez v0, :cond_0

    #@6
    .line 425
    const-string/jumbo v0, "Spinner"

    #@9
    const-string/jumbo v1, "Cannot set dropdown width for MODE_DIALOG, ignoring"

    #@c
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 426
    return-void

    #@10
    .line 428
    :cond_0
    iput p1, p0, Landroid/widget/Spinner;->mDropDownWidth:I

    #@12
    .line 423
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 448
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->setEnabled(Z)V

    #@3
    .line 449
    iget-boolean v2, p0, Landroid/widget/Spinner;->mDisableChildrenWhenDisabled:Z

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 450
    invoke-virtual {p0}, Landroid/widget/Spinner;->getChildCount()I

    #@a
    move-result v0

    #@b
    .line 451
    .local v0, "count":I
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@e
    .line 452
    invoke-virtual {p0, v1}, Landroid/widget/Spinner;->getChildAt(I)Landroid/view/View;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    #@15
    .line 451
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_0

    #@18
    .line 447
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    #@0
    .prologue
    .line 466
    iget v0, p0, Landroid/widget/Spinner;->mGravity:I

    #@2
    if-eq v0, p1, :cond_1

    #@4
    .line 467
    and-int/lit8 v0, p1, 0x7

    #@6
    if-nez v0, :cond_0

    #@8
    .line 468
    const v0, 0x800003

    #@b
    or-int/2addr p1, v0

    #@c
    .line 470
    :cond_0
    iput p1, p0, Landroid/widget/Spinner;->mGravity:I

    #@e
    .line 471
    invoke-virtual {p0}, Landroid/widget/Spinner;->requestLayout()V

    #@11
    .line 465
    :cond_1
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 2
    .param p1, "l"    # Landroid/widget/AdapterView$OnItemClickListener;

    #@0
    .prologue
    .line 571
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    const-string/jumbo v1, "setOnItemClickListener cannot be used with a spinner."

    #@5
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public setOnItemClickListenerInt(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AdapterView$OnItemClickListener;

    #@0
    .prologue
    .line 578
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    #@3
    .line 577
    return-void
.end method

.method public setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 331
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    #@2
    instance-of v0, v0, Landroid/widget/Spinner$DropdownPopup;

    #@4
    if-nez v0, :cond_0

    #@6
    .line 332
    const-string/jumbo v0, "Spinner"

    #@9
    const-string/jumbo v1, "setPopupBackgroundDrawable: incompatible spinner mode; ignoring..."

    #@c
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 333
    return-void

    #@10
    .line 335
    :cond_0
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    #@12
    invoke-interface {v0, p1}, Landroid/widget/Spinner$SpinnerPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@15
    .line 330
    return-void
.end method

.method public setPopupBackgroundResource(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 347
    invoke-virtual {p0}, Landroid/widget/Spinner;->getPopupContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p0, v0}, Landroid/widget/Spinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@b
    .line 346
    return-void
.end method

.method public setPrompt(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "prompt"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 802
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    #@2
    invoke-interface {v0, p1}, Landroid/widget/Spinner$SpinnerPopup;->setPromptText(Ljava/lang/CharSequence;)V

    #@5
    .line 801
    return-void
.end method

.method public setPromptId(I)V
    .locals 1
    .param p1, "promptId"    # I

    #@0
    .prologue
    .line 810
    invoke-virtual {p0}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p0, v0}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    #@b
    .line 809
    return-void
.end method
