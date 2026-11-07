.class public Landroid/widget/Spinner;
.super Landroid/widget/AbsSpinner;
.source "Spinner.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Spinner$DialogPopup;,
        Landroid/widget/Spinner$SpinnerPopup;,
        Landroid/widget/Spinner$DropdownPopup;,
        Landroid/widget/Spinner$DropDownAdapter;,
        Landroid/widget/Spinner$SavedState;
    }
.end annotation


# static fields
.field private static final greylist-max-o MAX_ITEMS_MEASURED:I = 0xf

.field public static final whitelist MODE_DIALOG:I = 0x0

.field public static final whitelist MODE_DROPDOWN:I = 0x1

.field private static final greylist-max-o MODE_THEME:I = -0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Spinner"


# instance fields
.field private greylist-max-o mDisableChildrenWhenDisabled:Z

.field greylist-max-o mDropDownWidth:I

.field private greylist mForwardingListener:Landroid/widget/ForwardingListener;

.field private greylist-max-o mGravity:I

.field private greylist mPopup:Landroid/widget/Spinner$SpinnerPopup;

.field private final greylist-max-o mPopupContext:Landroid/content/Context;

.field private greylist-max-o mTempAdapter:Landroid/widget/SpinnerAdapter;

.field private final greylist-max-o mTempRect:Landroid/graphics/Rect;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPopup(Landroid/widget/Spinner;)Landroid/widget/Spinner$SpinnerPopup;
    .registers 1

    iget-object p0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTempRect(Landroid/widget/Spinner;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 124
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .line 140
    const/4 v0, 0x0

    const v1, 0x1010081

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 141
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 152
    const v0, 0x1010081

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 153
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 168
    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "attrs":Landroid/util/AttributeSet;
    .end local p3    # "defStyleAttr":I
    .local v1, "context":Landroid/content/Context;
    .local v2, "attrs":Landroid/util/AttributeSet;
    .local v3, "defStyleAttr":I
    invoke-direct/range {v0 .. v5}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    .line 169
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "mode"    # I

    .line 190
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "attrs":Landroid/util/AttributeSet;
    .end local p3    # "defStyleAttr":I
    .end local p4    # "mode":I
    .local v1, "context":Landroid/content/Context;
    .local v2, "attrs":Landroid/util/AttributeSet;
    .local v3, "defStyleAttr":I
    .local v5, "mode":I
    invoke-direct/range {v0 .. v5}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    .line 191
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .param p5, "mode"    # I

    .line 218
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "attrs":Landroid/util/AttributeSet;
    .end local p3    # "defStyleAttr":I
    .end local p4    # "defStyleRes":I
    .end local p5    # "mode":I
    .local v1, "context":Landroid/content/Context;
    .local v2, "attrs":Landroid/util/AttributeSet;
    .local v3, "defStyleAttr":I
    .local v4, "defStyleRes":I
    .local v5, "mode":I
    invoke-direct/range {v0 .. v6}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILandroid/content/res/Resources$Theme;)V

    .line 219
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILandroid/content/res/Resources$Theme;)V
    .registers 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .param p5, "mode"    # I
    .param p6, "popupTheme"    # Landroid/content/res/Resources$Theme;

    .line 251
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v7, p6

    invoke-direct/range {p0 .. p4}, Landroid/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 97
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    .line 253
    sget-object v2, Lcom/android/internal/R$styleable;->Spinner:[I

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 255
    .local v2, "a":Landroid/content/res/TypedArray;
    move-object v4, v2

    .end local v2    # "a":Landroid/content/res/TypedArray;
    .local v4, "a":Landroid/content/res/TypedArray;
    sget-object v2, Lcom/android/internal/R$styleable;->Spinner:[I

    move v6, v5

    move/from16 v5, p3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/Spinner;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 258
    move-object v6, v1

    move-object v8, v4

    .end local v4    # "a":Landroid/content/res/TypedArray;
    .local v8, "a":Landroid/content/res/TypedArray;
    const/4 v9, 0x0

    if-eqz v7, :cond_32

    .line 259
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, v6, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    iput-object v1, v0, Landroid/widget/Spinner;->mPopupContext:Landroid/content/Context;

    goto :goto_43

    .line 261
    :cond_32
    const/4 v1, 0x7

    invoke-virtual {v8, v1, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 262
    .local v1, "popupThemeResId":I
    if-eqz v1, :cond_41

    .line 263
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-direct {v2, v6, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v2, v0, Landroid/widget/Spinner;->mPopupContext:Landroid/content/Context;

    goto :goto_43

    .line 265
    :cond_41
    iput-object v6, v0, Landroid/widget/Spinner;->mPopupContext:Landroid/content/Context;

    .line 269
    .end local v1    # "popupThemeResId":I
    :goto_43
    const/4 v1, -0x1

    move/from16 v2, p5

    if-ne v2, v1, :cond_4f

    .line 270
    const/4 v1, 0x5

    invoke-virtual {v8, v1, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    move v10, v1

    .end local p5    # "mode":I
    .local v1, "mode":I
    goto :goto_50

    .line 269
    .end local v1    # "mode":I
    .restart local p5    # "mode":I
    :cond_4f
    move v10, v2

    .line 273
    .end local p5    # "mode":I
    .local v10, "mode":I
    :goto_50
    const/4 v11, 0x3

    const/4 v12, 0x0

    packed-switch v10, :pswitch_data_e0

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    goto :goto_c0

    .line 281
    :pswitch_5c
    new-instance v1, Landroid/widget/Spinner$DropdownPopup;

    iget-object v2, v0, Landroid/widget/Spinner;->mPopupContext:Landroid/content/Context;

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/Spinner$DropdownPopup;-><init>(Landroid/widget/Spinner;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    move-object v15, v1

    move-object v1, v0

    move-object v0, v15

    .line 283
    .local v1, "popup":Landroid/widget/Spinner$DropdownPopup;
    iget-object v2, v0, Landroid/widget/Spinner;->mPopupContext:Landroid/content/Context;

    sget-object v13, Lcom/android/internal/R$styleable;->Spinner:[I

    invoke-virtual {v2, v3, v13, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 285
    .local v2, "pa":Landroid/content/res/TypedArray;
    const/4 v13, 0x4

    const/4 v14, -0x2

    invoke-virtual {v2, v13, v14}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v13

    iput v13, v0, Landroid/widget/Spinner;->mDropDownWidth:I

    .line 287
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v14

    if-eqz v14, :cond_8d

    .line 288
    invoke-virtual {v2, v13}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v1, v13}, Landroid/widget/Spinner$DropdownPopup;->setListSelector(Landroid/graphics/drawable/Drawable;)V

    .line 291
    :cond_8d
    const/4 v13, 0x2

    invoke-virtual {v2, v13}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v1, v13}, Landroid/widget/Spinner$DropdownPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 292
    invoke-virtual {v8, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/widget/Spinner$DropdownPopup;->setPromptText(Ljava/lang/CharSequence;)V

    .line 293
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 295
    iput-object v1, v0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    .line 296
    new-instance v11, Landroid/widget/Spinner$1;

    invoke-direct {v11, v0, v0, v1}, Landroid/widget/Spinner$1;-><init>(Landroid/widget/Spinner;Landroid/view/View;Landroid/widget/Spinner$DropdownPopup;)V

    iput-object v11, v0, Landroid/widget/Spinner;->mForwardingListener:Landroid/widget/ForwardingListener;

    .line 310
    goto :goto_c0

    .line 275
    .end local v1    # "popup":Landroid/widget/Spinner$DropdownPopup;
    .end local v2    # "pa":Landroid/content/res/TypedArray;
    :pswitch_a9
    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    new-instance v1, Landroid/widget/Spinner$DialogPopup;

    invoke-direct {v1, v0, v12}, Landroid/widget/Spinner$DialogPopup;-><init>(Landroid/widget/Spinner;Landroid/widget/Spinner-IA;)V

    iput-object v1, v0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    .line 276
    iget-object v1, v0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-virtual {v8, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/widget/Spinner$SpinnerPopup;->setPromptText(Ljava/lang/CharSequence;)V

    .line 277
    nop

    .line 314
    :goto_c0
    const/16 v1, 0x11

    invoke-virtual {v8, v9, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Landroid/widget/Spinner;->mGravity:I

    .line 315
    const/16 v1, 0x8

    invoke-virtual {v8, v1, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Landroid/widget/Spinner;->mDisableChildrenWhenDisabled:Z

    .line 318
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 322
    iget-object v1, v0, Landroid/widget/Spinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_de

    .line 323
    iget-object v1, v0, Landroid/widget/Spinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 324
    iput-object v12, v0, Landroid/widget/Spinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    .line 326
    :cond_de
    return-void

    nop

    :pswitch_data_e0
    .packed-switch 0x0
        :pswitch_a9
        :pswitch_5c
    .end packed-switch
.end method

.method static synthetic blacklist access$000(Landroid/widget/Spinner;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/widget/Spinner;

    .line 76
    iget-object v0, p0, Landroid/widget/Spinner;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private greylist-max-o makeView(IZ)Landroid/view/View;
    .registers 5
    .param p1, "position"    # I
    .param p2, "addChild"    # Z

    .line 718
    iget-boolean v0, p0, Landroid/widget/Spinner;->mDataChanged:Z

    if-nez v0, :cond_10

    .line 719
    iget-object v0, p0, Landroid/widget/Spinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v0, p1}, Landroid/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v0

    .line 720
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_10

    .line 722
    invoke-direct {p0, v0, p2}, Landroid/widget/Spinner;->setUpChild(Landroid/view/View;Z)V

    .line 724
    return-object v0

    .line 729
    .end local v0    # "child":Landroid/view/View;
    :cond_10
    iget-object v0, p0, Landroid/widget/Spinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 732
    .restart local v0    # "child":Landroid/view/View;
    invoke-direct {p0, v0, p2}, Landroid/widget/Spinner;->setUpChild(Landroid/view/View;Z)V

    .line 734
    return-object v0
.end method

.method private greylist-max-o setUpChild(Landroid/view/View;Z)V
    .registers 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "addChild"    # Z

    .line 748
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 749
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_a

    .line 750
    invoke-virtual {p0}, Landroid/widget/Spinner;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 753
    :cond_a
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/widget/Spinner;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 755
    invoke-virtual {p0}, Landroid/widget/Spinner;->hasFocus()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 756
    iget-boolean v1, p0, Landroid/widget/Spinner;->mDisableChildrenWhenDisabled:Z

    if-eqz v1, :cond_20

    .line 757
    invoke-virtual {p0}, Landroid/widget/Spinner;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 761
    :cond_20
    iget v1, p0, Landroid/widget/Spinner;->mHeightMeasureSpec:I

    iget-object v2, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v1, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 763
    .local v1, "childHeightSpec":I
    iget v2, p0, Landroid/widget/Spinner;->mWidthMeasureSpec:I

    iget-object v3, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v2, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    .line 767
    .local v2, "childWidthSpec":I
    invoke-virtual {p1, v2, v1}, Landroid/view/View;->measure(II)V

    .line 773
    iget-object v3, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 774
    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    .line 775
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 776
    .local v3, "childTop":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v3

    .line 778
    .local v4, "childBottom":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 779
    .local v5, "width":I
    const/4 v6, 0x0

    .line 780
    .local v6, "childLeft":I
    add-int v7, v6, v5

    .line 782
    .local v7, "childRight":I
    invoke-virtual {p1, v6, v3, v7, v4}, Landroid/view/View;->layout(IIII)V

    .line 784
    if-nez p2, :cond_73

    .line 785
    invoke-virtual {p0, p1}, Landroid/widget/Spinner;->removeViewInLayout(Landroid/view/View;)V

    .line 787
    :cond_73
    return-void
.end method


# virtual methods
.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 827
    const-class v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getBaseline()I
    .registers 4

    .line 562
    const/4 v0, 0x0

    .line 564
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/Spinner;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_d

    .line 565
    invoke-virtual {p0, v2}, Landroid/widget/Spinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_22

    .line 566
    :cond_d
    iget-object v1, p0, Landroid/widget/Spinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_22

    iget-object v1, p0, Landroid/widget/Spinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_22

    .line 567
    invoke-direct {p0, v2, v2}, Landroid/widget/Spinner;->makeView(IZ)Landroid/view/View;

    move-result-object v0

    .line 568
    iget-object v1, p0, Landroid/widget/Spinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v1, v2, v0}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 571
    :cond_22
    :goto_22
    const/4 v1, -0x1

    if-eqz v0, :cond_31

    .line 572
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v2

    .line 573
    .local v2, "childBaseline":I
    if-ltz v2, :cond_30

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v1, v2

    :cond_30
    return v1

    .line 575
    .end local v2    # "childBaseline":I
    :cond_31
    return v1
.end method

.method public whitelist getDropDownHorizontalOffset()I
    .registers 2

    .line 431
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->getHorizontalOffset()I

    move-result v0

    return v0
.end method

.method public whitelist getDropDownVerticalOffset()I
    .registers 2

    .line 406
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->getVerticalOffset()I

    move-result v0

    return v0
.end method

.method public whitelist getDropDownWidth()I
    .registers 2

    .line 468
    iget v0, p0, Landroid/widget/Spinner;->mDropDownWidth:I

    return v0
.end method

.method public whitelist getGravity()I
    .registers 2

    .line 508
    iget v0, p0, Landroid/widget/Spinner;->mGravity:I

    return v0
.end method

.method public whitelist getPopupBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 373
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPopupContext()Landroid/content/Context;
    .registers 2

    .line 332
    iget-object v0, p0, Landroid/widget/Spinner;->mPopupContext:Landroid/content/Context;

    return-object v0
.end method

.method public whitelist getPrompt()Ljava/lang/CharSequence;
    .registers 2

    .line 861
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->getHintText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isPopupShowing()Z
    .registers 2

    .line 381
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method greylist-max-o layout(IZ)V
    .registers 12
    .param p1, "delta"    # I
    .param p2, "animate"    # Z

    .line 651
    iget-object v0, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 652
    .local v0, "childrenLeft":I
    iget v1, p0, Landroid/widget/Spinner;->mRight:I

    iget v2, p0, Landroid/widget/Spinner;->mLeft:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 654
    .local v1, "childrenWidth":I
    iget-boolean v2, p0, Landroid/widget/Spinner;->mDataChanged:Z

    if-eqz v2, :cond_1a

    .line 655
    invoke-virtual {p0}, Landroid/widget/Spinner;->handleDataChanged()V

    .line 659
    :cond_1a
    iget v2, p0, Landroid/widget/Spinner;->mItemCount:I

    if-nez v2, :cond_22

    .line 660
    invoke-virtual {p0}, Landroid/widget/Spinner;->resetList()V

    .line 661
    return-void

    .line 664
    :cond_22
    iget v2, p0, Landroid/widget/Spinner;->mNextSelectedPosition:I

    if-ltz v2, :cond_2b

    .line 665
    iget v2, p0, Landroid/widget/Spinner;->mNextSelectedPosition:I

    invoke-virtual {p0, v2}, Landroid/widget/Spinner;->setSelectedPositionInt(I)V

    .line 668
    :cond_2b
    invoke-virtual {p0}, Landroid/widget/Spinner;->recycleAllViews()V

    .line 671
    invoke-virtual {p0}, Landroid/widget/Spinner;->removeAllViewsInLayout()V

    .line 674
    iget v2, p0, Landroid/widget/Spinner;->mSelectedPosition:I

    iput v2, p0, Landroid/widget/Spinner;->mFirstPosition:I

    .line 676
    iget-object v2, p0, Landroid/widget/Spinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v2, :cond_65

    .line 677
    iget v2, p0, Landroid/widget/Spinner;->mSelectedPosition:I

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Landroid/widget/Spinner;->makeView(IZ)Landroid/view/View;

    move-result-object v2

    .line 678
    .local v2, "sel":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 679
    .local v3, "width":I
    move v4, v0

    .line 680
    .local v4, "selectedOffset":I
    invoke-virtual {p0}, Landroid/widget/Spinner;->getLayoutDirection()I

    move-result v5

    .line 681
    .local v5, "layoutDirection":I
    iget v6, p0, Landroid/widget/Spinner;->mGravity:I

    invoke-static {v6, v5}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v6

    .line 682
    .local v6, "absoluteGravity":I
    and-int/lit8 v7, v6, 0x7

    sparse-switch v7, :sswitch_data_7c

    goto :goto_62

    .line 687
    :sswitch_55
    add-int v7, v0, v1

    sub-int v4, v7, v3

    goto :goto_62

    .line 684
    :sswitch_5a
    div-int/lit8 v7, v1, 0x2

    add-int/2addr v7, v0

    div-int/lit8 v8, v3, 0x2

    sub-int v4, v7, v8

    .line 685
    nop

    .line 690
    :goto_62
    invoke-virtual {v2, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 694
    .end local v2    # "sel":Landroid/view/View;
    .end local v3    # "width":I
    .end local v4    # "selectedOffset":I
    .end local v5    # "layoutDirection":I
    .end local v6    # "absoluteGravity":I
    :cond_65
    iget-object v2, p0, Landroid/widget/Spinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v2}, Landroid/widget/AbsSpinner$RecycleBin;->clear()V

    .line 696
    invoke-virtual {p0}, Landroid/widget/Spinner;->invalidate()V

    .line 698
    invoke-virtual {p0}, Landroid/widget/Spinner;->checkSelectionChanged()V

    .line 700
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/Spinner;->mDataChanged:Z

    .line 701
    iput-boolean v2, p0, Landroid/widget/Spinner;->mNeedSync:Z

    .line 702
    iget v2, p0, Landroid/widget/Spinner;->mSelectedPosition:I

    invoke-virtual {p0, v2}, Landroid/widget/Spinner;->setNextSelectedPositionInt(I)V

    .line 703
    return-void

    nop

    :sswitch_data_7c
    .sparse-switch
        0x1 -> :sswitch_5a
        0x5 -> :sswitch_55
    .end sparse-switch
.end method

.method greylist-max-o measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .registers 15
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "background"    # Landroid/graphics/drawable/Drawable;

    .line 865
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 866
    return v0

    .line 869
    :cond_4
    const/4 v1, 0x0

    .line 870
    .local v1, "width":I
    const/4 v2, 0x0

    .line 871
    .local v2, "itemView":Landroid/view/View;
    const/4 v3, 0x0

    .line 872
    .local v3, "itemType":I
    nop

    .line 873
    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredWidth()I

    move-result v4

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v4

    .line 874
    .local v4, "widthMeasureSpec":I
    nop

    .line 875
    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredHeight()I

    move-result v5

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v5

    .line 879
    .local v5, "heightMeasureSpec":I
    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 880
    .local v6, "start":I
    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v7

    add-int/lit8 v8, v6, 0xf

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 881
    .local v7, "end":I
    sub-int v8, v7, v6

    .line 882
    .local v8, "count":I
    rsub-int/lit8 v9, v8, 0xf

    sub-int v9, v6, v9

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 883
    .end local v6    # "start":I
    .local v0, "start":I
    move v6, v0

    .local v6, "i":I
    :goto_36
    if-ge v6, v7, :cond_61

    .line 884
    invoke-interface {p1, v6}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    move-result v9

    .line 885
    .local v9, "positionType":I
    if-eq v9, v3, :cond_40

    .line 886
    move v3, v9

    .line 887
    const/4 v2, 0x0

    .line 889
    :cond_40
    invoke-interface {p1, v6, v2, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 890
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    if-nez v10, :cond_53

    .line 891
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x2

    invoke-direct {v10, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 895
    :cond_53
    invoke-virtual {v2, v4, v5}, Landroid/view/View;->measure(II)V

    .line 896
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 883
    .end local v9    # "positionType":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_36

    .line 900
    .end local v6    # "i":I
    :cond_61
    if-eqz p2, :cond_72

    .line 901
    iget-object v6, p0, Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 902
    iget-object v6, p0, Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v9

    add-int/2addr v1, v6

    .line 905
    :cond_72
    return v1
.end method

.method public blacklist onClick(I)V
    .registers 3
    .param p1, "which"    # I

    .line 819
    invoke-virtual {p0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 820
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 821
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->dismiss()V

    .line 823
    :cond_14
    return-void
.end method

.method public whitelist onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 806
    invoke-virtual {p0, p2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 807
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 808
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 2

    .line 581
    invoke-super {p0}, Landroid/widget/AbsSpinner;->onDetachedFromWindow()V

    .line 583
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 584
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->dismiss()V

    .line 586
    :cond_14
    return-void
.end method

.method public greylist-max-o onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 833
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 835
    iget-object v0, p0, Landroid/widget/Spinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_b

    .line 836
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCanOpenPopup(Z)V

    .line 838
    :cond_b
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 637
    invoke-super/range {p0 .. p5}, Landroid/widget/AbsSpinner;->onLayout(ZIIII)V

    .line 638
    move v0, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .end local p1    # "changed":Z
    .local v0, "b":I
    .local p2, "changed":Z
    .local p3, "l":I
    .local p4, "t":I
    .local p5, "r":I
    const/4 v1, 0x1

    iput-boolean v1, p1, Landroid/widget/Spinner;->mInLayout:Z

    .line 639
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Landroid/widget/Spinner;->layout(IZ)V

    .line 640
    iput-boolean v1, p1, Landroid/widget/Spinner;->mInLayout:Z

    .line 641
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 619
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSpinner;->onMeasure(II)V

    .line 620
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    if-eqz v0, :cond_33

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_33

    .line 621
    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredWidth()I

    move-result v0

    .line 622
    .local v0, "measuredWidth":I
    nop

    .line 623
    invoke-virtual {p0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/Spinner;->measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v1

    .line 622
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 624
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 622
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 625
    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredHeight()I

    move-result v2

    .line 622
    invoke-virtual {p0, v1, v2}, Landroid/widget/Spinner;->setMeasuredDimension(II)V

    .line 627
    .end local v0    # "measuredWidth":I
    :cond_33
    return-void
.end method

.method public whitelist onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .line 944
    invoke-virtual {p0}, Landroid/widget/Spinner;->getPointerIcon()Landroid/view/PointerIcon;

    move-result-object v0

    if-nez v0, :cond_2f

    invoke-virtual {p0}, Landroid/widget/Spinner;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Landroid/widget/Spinner;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 945
    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 946
    invoke-static {}, Landroid/view/flags/Flags;->enableArrowIconOnHoverWhenClickable()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 947
    const/16 v0, 0x3e8

    goto :goto_25

    .line 948
    :cond_23
    const/16 v0, 0x3ea

    :goto_25
    nop

    .line 949
    .local v0, "pointerIcon":I
    invoke-virtual {p0}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v1

    return-object v1

    .line 951
    .end local v0    # "pointerIcon":I
    :cond_2f
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSpinner;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 917
    move-object v0, p1

    check-cast v0, Landroid/widget/Spinner$SavedState;

    .line 919
    .local v0, "ss":Landroid/widget/Spinner$SavedState;
    invoke-virtual {v0}, Landroid/widget/Spinner$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/AbsSpinner;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 921
    iget-boolean v1, v0, Landroid/widget/Spinner$SavedState;->showDropdown:Z

    if-eqz v1, :cond_1c

    .line 922
    invoke-virtual {p0}, Landroid/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 923
    .local v1, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v1, :cond_1c

    .line 924
    new-instance v2, Landroid/widget/Spinner$2;

    invoke-direct {v2, p0}, Landroid/widget/Spinner$2;-><init>(Landroid/widget/Spinner;)V

    .line 936
    .local v2, "listener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 939
    .end local v1    # "vto":Landroid/view/ViewTreeObserver;
    .end local v2    # "listener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    :cond_1c
    return-void
.end method

.method public whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 910
    new-instance v0, Landroid/widget/Spinner$SavedState;

    invoke-super {p0}, Landroid/widget/AbsSpinner;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Spinner$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 911
    .local v0, "ss":Landroid/widget/Spinner$SavedState;
    iget-object v1, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    if-eqz v1, :cond_17

    iget-object v1, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v1}, Landroid/widget/Spinner$SpinnerPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x1

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    iput-boolean v1, v0, Landroid/widget/Spinner$SavedState;->showDropdown:Z

    .line 912
    return-object v0
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 610
    iget-object v0, p0, Landroid/widget/Spinner;->mForwardingListener:Landroid/widget/ForwardingListener;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/widget/Spinner;->mForwardingListener:Landroid/widget/ForwardingListener;

    invoke-virtual {v0, p0, p1}, Landroid/widget/ForwardingListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 611
    const/4 v0, 0x1

    return v0

    .line 614
    :cond_e
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist performClick()Z
    .registers 5

    .line 791
    invoke-super {p0}, Landroid/widget/AbsSpinner;->performClick()Z

    move-result v0

    .line 793
    .local v0, "handled":Z
    if-nez v0, :cond_1c

    .line 794
    const/4 v0, 0x1

    .line 796
    iget-object v1, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v1}, Landroid/widget/Spinner$SpinnerPopup;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 797
    iget-object v1, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-virtual {p0}, Landroid/widget/Spinner;->getTextDirection()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/Spinner;->getTextAlignment()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/widget/Spinner$SpinnerPopup;->show(II)V

    .line 801
    :cond_1c
    return v0
.end method

.method public bridge synthetic whitelist setAdapter(Landroid/widget/Adapter;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 75
    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public whitelist setAdapter(Landroid/widget/SpinnerAdapter;)V
    .registers 7
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;

    .line 541
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    if-nez v0, :cond_7

    .line 542
    iput-object p1, p0, Landroid/widget/Spinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    .line 543
    return-void

    .line 546
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 548
    iget-object v0, p0, Landroid/widget/Spinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v0}, Landroid/widget/AbsSpinner$RecycleBin;->clear()V

    .line 550
    iget-object v0, p0, Landroid/widget/Spinner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 551
    .local v0, "targetSdkVersion":I
    const/16 v1, 0x15

    if-lt v0, v1, :cond_2d

    if-eqz p1, :cond_2d

    .line 552
    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getViewTypeCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_25

    goto :goto_2d

    .line 553
    :cond_25
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Spinner adapter view type count must be 1"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 556
    :cond_2d
    :goto_2d
    iget-object v1, p0, Landroid/widget/Spinner;->mPopupContext:Landroid/content/Context;

    if-nez v1, :cond_34

    iget-object v1, p0, Landroid/widget/Spinner;->mContext:Landroid/content/Context;

    goto :goto_36

    :cond_34
    iget-object v1, p0, Landroid/widget/Spinner;->mPopupContext:Landroid/content/Context;

    .line 557
    .local v1, "popupContext":Landroid/content/Context;
    :goto_36
    iget-object v2, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    new-instance v3, Landroid/widget/Spinner$DropDownAdapter;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Landroid/widget/Spinner$DropDownAdapter;-><init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V

    invoke-interface {v2, v3}, Landroid/widget/Spinner$SpinnerPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 558
    return-void
.end method

.method public whitelist setDropDownHorizontalOffset(I)V
    .registers 3
    .param p1, "pixels"    # I

    .line 418
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0, p1}, Landroid/widget/Spinner$SpinnerPopup;->setHorizontalOffset(I)V

    .line 419
    return-void
.end method

.method public whitelist setDropDownVerticalOffset(I)V
    .registers 3
    .param p1, "pixels"    # I

    .line 393
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0, p1}, Landroid/widget/Spinner$SpinnerPopup;->setVerticalOffset(I)V

    .line 394
    return-void
.end method

.method public whitelist setDropDownWidth(I)V
    .registers 4
    .param p1, "pixels"    # I

    .line 448
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    instance-of v0, v0, Landroid/widget/Spinner$DropdownPopup;

    if-nez v0, :cond_e

    .line 449
    const-string v0, "Spinner"

    const-string v1, "Cannot set dropdown width for MODE_DIALOG, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    return-void

    .line 452
    :cond_e
    iput p1, p0, Landroid/widget/Spinner;->mDropDownWidth:I

    .line 453
    return-void
.end method

.method public whitelist setEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .line 473
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->setEnabled(Z)V

    .line 474
    iget-boolean v0, p0, Landroid/widget/Spinner;->mDisableChildrenWhenDisabled:Z

    if-eqz v0, :cond_18

    .line 475
    invoke-virtual {p0}, Landroid/widget/Spinner;->getChildCount()I

    move-result v0

    .line 476
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v0, :cond_18

    .line 477
    invoke-virtual {p0, v1}, Landroid/widget/Spinner;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 476
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 480
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_18
    return-void
.end method

.method public whitelist setGravity(I)V
    .registers 3
    .param p1, "gravity"    # I

    .line 491
    iget v0, p0, Landroid/widget/Spinner;->mGravity:I

    if-eq v0, p1, :cond_11

    .line 492
    and-int/lit8 v0, p1, 0x7

    if-nez v0, :cond_c

    .line 493
    const v0, 0x800003

    or-int/2addr p1, v0

    .line 495
    :cond_c
    iput p1, p0, Landroid/widget/Spinner;->mGravity:I

    .line 496
    invoke-virtual {p0}, Landroid/widget/Spinner;->requestLayout()V

    .line 498
    :cond_11
    return-void
.end method

.method public whitelist setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 4
    .param p1, "l"    # Landroid/widget/AdapterView$OnItemClickListener;

    .line 597
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "setOnItemClickListener cannot be used with a spinner."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setOnItemClickListenerInt(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2
    .param p1, "l"    # Landroid/widget/AdapterView$OnItemClickListener;

    .line 605
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 606
    return-void
.end method

.method public whitelist setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 344
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    instance-of v0, v0, Landroid/widget/Spinner$DropdownPopup;

    if-nez v0, :cond_f

    .line 345
    const-string v0, "Spinner"

    const-string/jumbo v1, "setPopupBackgroundDrawable: incompatible spinner mode; ignoring..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    return-void

    .line 348
    :cond_f
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0, p1}, Landroid/widget/Spinner$SpinnerPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 349
    return-void
.end method

.method public whitelist setPopupBackgroundResource(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 360
    invoke-virtual {p0}, Landroid/widget/Spinner;->getPopupContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Spinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 361
    return-void
.end method

.method public whitelist setPrompt(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "prompt"    # Ljava/lang/CharSequence;

    .line 845
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0, p1}, Landroid/widget/Spinner$SpinnerPopup;->setPromptText(Ljava/lang/CharSequence;)V

    .line 846
    return-void
.end method

.method public whitelist setPromptId(I)V
    .registers 3
    .param p1, "promptId"    # I

    .line 853
    invoke-virtual {p0}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 854
    return-void
.end method
