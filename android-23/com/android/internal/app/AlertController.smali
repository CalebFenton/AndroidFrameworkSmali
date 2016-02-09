.class public Lcom/android/internal/app/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/AlertController$ButtonHandler;,
        Lcom/android/internal/app/AlertController$RecycleListView;,
        Lcom/android/internal/app/AlertController$AlertParams;,
        Lcom/android/internal/app/AlertController$CheckedItemAdapter;,
        Lcom/android/internal/app/AlertController$1;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAlertDialogLayout:I

.field private final mButtonHandler:Landroid/view/View$OnClickListener;

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPanelLayoutHint:I

.field private mButtonPanelSideLayout:I

.field private mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCheckedItem:I

.field private final mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field private final mDialogInterface:Landroid/content/DialogInterface;

.field private mForceInverseBackground:Z

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mListItemLayout:I

.field private mListLayout:I

.field private mListView:Landroid/widget/ListView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mMultiChoiceItemLayout:I

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSingleChoiceItemLayout:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewLayoutResId:I

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private final mWindow:Landroid/view/Window;


# direct methods
.method static synthetic -get0(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    #@2
    return-object v0
.end method

.method static synthetic -get10(Lcom/android/internal/app/AlertController;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/internal/app/AlertController;->mListLayout:I

    #@2
    return v0
.end method

.method static synthetic -get11(Lcom/android/internal/app/AlertController;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/internal/app/AlertController;->mMultiChoiceItemLayout:I

    #@2
    return v0
.end method

.method static synthetic -get12(Lcom/android/internal/app/AlertController;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/internal/app/AlertController;->mSingleChoiceItemLayout:I

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/internal/app/AlertController;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/internal/app/AlertController;)Landroid/content/DialogInterface;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/internal/app/AlertController;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Lcom/android/internal/app/AlertController;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/internal/app/AlertController;->mListItemLayout:I

    #@2
    return v0
.end method

.method static synthetic -set0(Lcom/android/internal/app/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Lcom/android/internal/app/AlertController;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    #@2
    return p1
.end method

.method static synthetic -set2(Lcom/android/internal/app/AlertController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    #@2
    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Landroid/content/DialogInterface;
    .param p3, "window"    # Landroid/view/Window;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 81
    iput-boolean v4, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    #@6
    .line 97
    iput v4, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    #@8
    .line 109
    const/4 v1, -0x1

    #@9
    iput v1, p0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    #@b
    .line 118
    iput v4, p0, Lcom/android/internal/app/AlertController;->mButtonPanelLayoutHint:I

    #@d
    .line 122
    new-instance v1, Lcom/android/internal/app/AlertController$1;

    #@f
    invoke-direct {v1, p0}, Lcom/android/internal/app/AlertController$1;-><init>(Lcom/android/internal/app/AlertController;)V

    #@12
    iput-object v1, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    #@14
    .line 179
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    #@16
    .line 180
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    #@18
    .line 181
    iput-object p3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    #@1a
    .line 182
    new-instance v1, Lcom/android/internal/app/AlertController$ButtonHandler;

    #@1c
    invoke-direct {v1, p2}, Lcom/android/internal/app/AlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    #@1f
    iput-object v1, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    #@21
    .line 185
    sget-object v1, Lcom/android/internal/R$styleable;->AlertDialog:[I

    #@23
    .line 184
    const/4 v2, 0x0

    #@24
    .line 185
    const v3, 0x101005d

    #@27
    .line 184
    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@2a
    move-result-object v0

    #@2b
    .line 188
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0xa

    #@2d
    const v2, 0x1090026

    #@30
    .line 187
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@33
    move-result v1

    #@34
    iput v1, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    #@36
    .line 190
    const/16 v1, 0xb

    #@38
    .line 189
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@3b
    move-result v1

    #@3c
    iput v1, p0, Lcom/android/internal/app/AlertController;->mButtonPanelSideLayout:I

    #@3e
    .line 192
    const/16 v1, 0xc

    #@40
    const v2, 0x10900d2

    #@43
    .line 191
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@46
    move-result v1

    #@47
    iput v1, p0, Lcom/android/internal/app/AlertController;->mListLayout:I

    #@49
    .line 195
    const/16 v1, 0xd

    #@4b
    .line 196
    const v2, 0x1090013

    #@4e
    .line 194
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@51
    move-result v1

    #@52
    iput v1, p0, Lcom/android/internal/app/AlertController;->mMultiChoiceItemLayout:I

    #@54
    .line 198
    const/16 v1, 0xe

    #@56
    .line 199
    const v2, 0x1090012

    #@59
    .line 197
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@5c
    move-result v1

    #@5d
    iput v1, p0, Lcom/android/internal/app/AlertController;->mSingleChoiceItemLayout:I

    #@5f
    .line 201
    const/16 v1, 0xf

    #@61
    .line 202
    const v2, 0x1090011

    #@64
    .line 200
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@67
    move-result v1

    #@68
    iput v1, p0, Lcom/android/internal/app/AlertController;->mListItemLayout:I

    #@6a
    .line 204
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@6d
    .line 178
    return-void
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 5
    .param p0, "v"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 208
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 209
    return v4

    #@9
    .line 212
    :cond_0
    instance-of v2, p0, Landroid/view/ViewGroup;

    #@b
    if-nez v2, :cond_1

    #@d
    .line 213
    return v3

    #@e
    :cond_1
    move-object v1, p0

    #@f
    .line 216
    check-cast v1, Landroid/view/ViewGroup;

    #@11
    .line 217
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    #@14
    move-result v0

    #@15
    .line 218
    .local v0, "i":I
    :cond_2
    if-lez v0, :cond_3

    #@17
    .line 219
    add-int/lit8 v0, v0, -0x1

    #@19
    .line 220
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@1c
    move-result-object p0

    #@1d
    .line 221
    invoke-static {p0}, Lcom/android/internal/app/AlertController;->canTextInput(Landroid/view/View;)Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_2

    #@23
    .line 222
    return v4

    #@24
    .line 226
    :cond_3
    return v3
.end method

.method private centerButton(Landroid/widget/Button;)V
    .locals 6
    .param p1, "button"    # Landroid/widget/Button;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 744
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@4
    move-result-object v1

    #@5
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    #@7
    .line 745
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x1

    #@8
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    #@a
    .line 746
    const/high16 v3, 0x3f000000    # 0.5f

    #@c
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    #@e
    .line 747
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@11
    .line 748
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    #@13
    const v4, 0x10202f4

    #@16
    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    #@19
    move-result-object v0

    #@1a
    .line 749
    .local v0, "leftSpacer":Landroid/view/View;
    if-eqz v0, :cond_0

    #@1c
    .line 750
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    #@1f
    .line 752
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    #@21
    const v4, 0x10202f5

    #@24
    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    #@27
    move-result-object v2

    #@28
    .line 753
    .local v2, "rightSpacer":Landroid/view/View;
    if-eqz v2, :cond_1

    #@2a
    .line 754
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    #@2d
    .line 743
    :cond_1
    return-void
.end method

.method private static manageScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "upIndicator"    # Landroid/view/View;
    .param p2, "downIndicator"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v2, 0x4

    #@1
    const/4 v1, 0x0

    #@2
    .line 675
    if-eqz p1, :cond_0

    #@4
    .line 676
    const/4 v0, -0x1

    #@5
    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_2

    #@b
    move v0, v1

    #@c
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    #@f
    .line 678
    :cond_0
    if-eqz p2, :cond_1

    #@11
    .line 679
    const/4 v0, 0x1

    #@12
    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_3

    #@18
    :goto_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    #@1b
    .line 674
    :cond_1
    return-void

    #@1c
    :cond_2
    move v0, v2

    #@1d
    .line 676
    goto :goto_0

    #@1e
    :cond_3
    move v1, v2

    #@1f
    .line 679
    goto :goto_1
.end method

.method private resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 2
    .param p1, "customPanel"    # Landroid/view/View;
    .param p2, "defaultPanel"    # Landroid/view/View;

    #@0
    .prologue
    .line 462
    if-nez p1, :cond_1

    #@2
    .line 464
    instance-of v1, p2, Landroid/view/ViewStub;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 465
    check-cast p2, Landroid/view/ViewStub;

    #@8
    .end local p2    # "defaultPanel":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    #@b
    move-result-object p2

    #@c
    .line 468
    .restart local p2    # "defaultPanel":Landroid/view/View;
    :cond_0
    check-cast p2, Landroid/view/ViewGroup;

    #@e
    .end local p2    # "defaultPanel":Landroid/view/View;
    return-object p2

    #@f
    .line 472
    .restart local p2    # "defaultPanel":Landroid/view/View;
    :cond_1
    if-eqz p2, :cond_2

    #@11
    .line 473
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@14
    move-result-object v0

    #@15
    .line 474
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    #@17
    if-eqz v1, :cond_2

    #@19
    .line 475
    check-cast v0, Landroid/view/ViewGroup;

    #@1b
    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@1e
    .line 480
    :cond_2
    instance-of v1, p1, Landroid/view/ViewStub;

    #@20
    if-eqz v1, :cond_3

    #@22
    .line 481
    check-cast p1, Landroid/view/ViewStub;

    #@24
    .end local p1    # "customPanel":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    #@27
    move-result-object p1

    #@28
    .line 484
    .restart local p1    # "customPanel":Landroid/view/View;
    :cond_3
    check-cast p1, Landroid/view/ViewGroup;

    #@2a
    .end local p1    # "customPanel":Landroid/view/View;
    return-object p1
.end method

.method private selectContentView()I
    .locals 2

    #@0
    .prologue
    .line 239
    iget v0, p0, Lcom/android/internal/app/AlertController;->mButtonPanelSideLayout:I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 240
    iget v0, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    #@6
    return v0

    #@7
    .line 242
    :cond_0
    iget v0, p0, Lcom/android/internal/app/AlertController;->mButtonPanelLayoutHint:I

    #@9
    const/4 v1, 0x1

    #@a
    if-ne v0, v1, :cond_1

    #@c
    .line 243
    iget v0, p0, Lcom/android/internal/app/AlertController;->mButtonPanelSideLayout:I

    #@e
    return v0

    #@f
    .line 246
    :cond_1
    iget v0, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    #@11
    return v0
.end method

.method private setBackground(Landroid/content/res/TypedArray;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZZ)V
    .locals 24
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "topPanel"    # Landroid/view/View;
    .param p3, "contentPanel"    # Landroid/view/View;
    .param p4, "customPanel"    # Landroid/view/View;
    .param p5, "buttonPanel"    # Landroid/view/View;
    .param p6, "hasTitle"    # Z
    .param p7, "hasCustomView"    # Z
    .param p8, "hasButtons"    # Z

    #@0
    .prologue
    .line 760
    const/4 v10, 0x0

    #@1
    .line 761
    .local v10, "fullDark":I
    const/16 v19, 0x0

    #@3
    .line 762
    .local v19, "topDark":I
    const/4 v7, 0x0

    #@4
    .line 763
    .local v7, "centerDark":I
    const/4 v4, 0x0

    #@5
    .line 764
    .local v4, "bottomDark":I
    const/4 v9, 0x0

    #@6
    .line 765
    .local v9, "fullBright":I
    const/16 v18, 0x0

    #@8
    .line 766
    .local v18, "topBright":I
    const/4 v6, 0x0

    #@9
    .line 767
    .local v6, "centerBright":I
    const/4 v3, 0x0

    #@a
    .line 768
    .local v3, "bottomBright":I
    const/4 v5, 0x0

    #@b
    .line 773
    .local v5, "bottomMedium":I
    const/16 v22, 0x12

    #@d
    const/16 v23, 0x1

    #@f
    .line 772
    move-object/from16 v0, p1

    #@11
    move/from16 v1, v22

    #@13
    move/from16 v2, v23

    #@15
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@18
    move-result v15

    #@19
    .line 774
    .local v15, "needsDefaultBackgrounds":Z
    if-eqz v15, :cond_0

    #@1b
    .line 775
    const v10, 0x108054a

    #@1e
    .line 776
    const v19, 0x1080558

    #@21
    .line 777
    const v7, 0x1080547

    #@24
    .line 778
    const v4, 0x1080544

    #@27
    .line 779
    const v9, 0x1080549

    #@2a
    .line 780
    const v18, 0x1080557

    #@2d
    .line 781
    const v6, 0x1080546

    #@30
    .line 782
    const v3, 0x1080543

    #@33
    .line 783
    const v5, 0x1080545

    #@36
    .line 786
    :cond_0
    const/16 v22, 0x5

    #@38
    move-object/from16 v0, p1

    #@3a
    move/from16 v1, v22

    #@3c
    move/from16 v2, v18

    #@3e
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@41
    move-result v18

    #@42
    .line 787
    const/16 v22, 0x1

    #@44
    move-object/from16 v0, p1

    #@46
    move/from16 v1, v22

    #@48
    move/from16 v2, v19

    #@4a
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@4d
    move-result v19

    #@4e
    .line 788
    const/16 v22, 0x6

    #@50
    move-object/from16 v0, p1

    #@52
    move/from16 v1, v22

    #@54
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@57
    move-result v6

    #@58
    .line 789
    const/16 v22, 0x2

    #@5a
    move-object/from16 v0, p1

    #@5c
    move/from16 v1, v22

    #@5e
    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@61
    move-result v7

    #@62
    .line 799
    const/16 v22, 0x4

    #@64
    move/from16 v0, v22

    #@66
    new-array v0, v0, [Landroid/view/View;

    #@68
    move-object/from16 v21, v0

    #@6a
    .line 800
    .local v21, "views":[Landroid/view/View;
    const/16 v22, 0x4

    #@6c
    move/from16 v0, v22

    #@6e
    new-array v13, v0, [Z

    #@70
    .line 801
    .local v13, "light":[Z
    const/4 v12, 0x0

    #@71
    .line 802
    .local v12, "lastView":Landroid/view/View;
    const/4 v11, 0x0

    #@72
    .line 804
    .local v11, "lastLight":Z
    const/16 v16, 0x0

    #@74
    .line 805
    .local v16, "pos":I
    if-eqz p6, :cond_1

    #@76
    .line 806
    aput-object p2, v21, v16

    #@78
    .line 807
    const/16 v22, 0x0

    #@7a
    aput-boolean v22, v13, v16

    #@7c
    .line 808
    const/16 v16, 0x1

    #@7e
    .line 816
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getVisibility()I

    #@81
    move-result v22

    #@82
    const/16 v23, 0x8

    #@84
    move/from16 v0, v22

    #@86
    move/from16 v1, v23

    #@88
    if-ne v0, v1, :cond_2

    #@8a
    const/16 p3, 0x0

    #@8c
    .end local p3    # "contentPanel":Landroid/view/View;
    :cond_2
    aput-object p3, v21, v16

    #@8e
    .line 817
    move-object/from16 v0, p0

    #@90
    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    #@92
    move-object/from16 v22, v0

    #@94
    if-eqz v22, :cond_5

    #@96
    const/16 v22, 0x1

    #@98
    :goto_0
    aput-boolean v22, v13, v16

    #@9a
    .line 818
    add-int/lit8 v16, v16, 0x1

    #@9c
    .line 820
    if-eqz p7, :cond_3

    #@9e
    .line 821
    aput-object p4, v21, v16

    #@a0
    .line 822
    move-object/from16 v0, p0

    #@a2
    iget-boolean v0, v0, Lcom/android/internal/app/AlertController;->mForceInverseBackground:Z

    #@a4
    move/from16 v22, v0

    #@a6
    aput-boolean v22, v13, v16

    #@a8
    .line 823
    add-int/lit8 v16, v16, 0x1

    #@aa
    .line 826
    :cond_3
    if-eqz p8, :cond_4

    #@ac
    .line 827
    aput-object p5, v21, v16

    #@ae
    .line 828
    const/16 v22, 0x1

    #@b0
    aput-boolean v22, v13, v16

    #@b2
    .line 831
    :cond_4
    const/16 v17, 0x0

    #@b4
    .line 832
    .local v17, "setView":Z
    const/16 v16, 0x0

    #@b6
    .end local v11    # "lastLight":Z
    .end local v12    # "lastView":Landroid/view/View;
    :goto_1
    move-object/from16 v0, v21

    #@b8
    array-length v0, v0

    #@b9
    move/from16 v22, v0

    #@bb
    move/from16 v0, v16

    #@bd
    move/from16 v1, v22

    #@bf
    if-ge v0, v1, :cond_b

    #@c1
    .line 833
    aget-object v20, v21, v16

    #@c3
    .line 834
    .local v20, "v":Landroid/view/View;
    if-nez v20, :cond_6

    #@c5
    .line 832
    :goto_2
    add-int/lit8 v16, v16, 0x1

    #@c7
    goto :goto_1

    #@c8
    .line 817
    .end local v17    # "setView":Z
    .end local v20    # "v":Landroid/view/View;
    .restart local v11    # "lastLight":Z
    .restart local v12    # "lastView":Landroid/view/View;
    :cond_5
    const/16 v22, 0x0

    #@ca
    goto :goto_0

    #@cb
    .line 838
    .end local v11    # "lastLight":Z
    .end local v12    # "lastView":Landroid/view/View;
    .restart local v17    # "setView":Z
    .restart local v20    # "v":Landroid/view/View;
    :cond_6
    if-eqz v12, :cond_7

    #@cd
    .line 839
    if-nez v17, :cond_9

    #@cf
    .line 840
    if-eqz v11, :cond_8

    #@d1
    move/from16 v22, v18

    #@d3
    :goto_3
    move/from16 v0, v22

    #@d5
    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    #@d8
    .line 844
    :goto_4
    const/16 v17, 0x1

    #@da
    .line 847
    :cond_7
    move-object/from16 v12, v20

    #@dc
    .line 848
    .local v12, "lastView":Landroid/view/View;
    aget-boolean v11, v13, v16

    #@de
    .local v11, "lastLight":Z
    goto :goto_2

    #@df
    .end local v11    # "lastLight":Z
    .end local v12    # "lastView":Landroid/view/View;
    :cond_8
    move/from16 v22, v19

    #@e1
    .line 840
    goto :goto_3

    #@e2
    .line 842
    :cond_9
    if-eqz v11, :cond_a

    #@e4
    move/from16 v22, v6

    #@e6
    :goto_5
    move/from16 v0, v22

    #@e8
    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    #@eb
    goto :goto_4

    #@ec
    :cond_a
    move/from16 v22, v7

    #@ee
    goto :goto_5

    #@ef
    .line 851
    .end local v20    # "v":Landroid/view/View;
    :cond_b
    if-eqz v12, :cond_c

    #@f1
    .line 852
    if-eqz v17, :cond_10

    #@f3
    .line 853
    const/16 v22, 0x7

    #@f5
    move-object/from16 v0, p1

    #@f7
    move/from16 v1, v22

    #@f9
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@fc
    move-result v3

    #@fd
    .line 854
    const/16 v22, 0x8

    #@ff
    move-object/from16 v0, p1

    #@101
    move/from16 v1, v22

    #@103
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@106
    move-result v5

    #@107
    .line 855
    const/16 v22, 0x3

    #@109
    move-object/from16 v0, p1

    #@10b
    move/from16 v1, v22

    #@10d
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@110
    move-result v4

    #@111
    .line 860
    if-eqz v11, :cond_f

    #@113
    if-eqz p8, :cond_e

    #@115
    move/from16 v22, v5

    #@117
    .line 859
    :goto_6
    move/from16 v0, v22

    #@119
    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    #@11c
    .line 869
    :cond_c
    :goto_7
    move-object/from16 v0, p0

    #@11e
    iget-object v14, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    #@120
    .line 870
    .local v14, "listView":Landroid/widget/ListView;
    if-eqz v14, :cond_d

    #@122
    move-object/from16 v0, p0

    #@124
    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    #@126
    move-object/from16 v22, v0

    #@128
    if-eqz v22, :cond_d

    #@12a
    .line 871
    move-object/from16 v0, p0

    #@12c
    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    #@12e
    move-object/from16 v22, v0

    #@130
    move-object/from16 v0, v22

    #@132
    invoke-virtual {v14, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    #@135
    .line 872
    move-object/from16 v0, p0

    #@137
    iget v8, v0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    #@139
    .line 873
    .local v8, "checkedItem":I
    const/16 v22, -0x1

    #@13b
    move/from16 v0, v22

    #@13d
    if-le v8, v0, :cond_d

    #@13f
    .line 874
    const/16 v22, 0x1

    #@141
    move/from16 v0, v22

    #@143
    invoke-virtual {v14, v8, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    #@146
    .line 875
    invoke-virtual {v14, v8}, Landroid/widget/ListView;->setSelection(I)V

    #@149
    .line 759
    .end local v8    # "checkedItem":I
    :cond_d
    return-void

    #@14a
    .end local v14    # "listView":Landroid/widget/ListView;
    :cond_e
    move/from16 v22, v3

    #@14c
    .line 860
    goto :goto_6

    #@14d
    :cond_f
    move/from16 v22, v4

    #@14f
    goto :goto_6

    #@150
    .line 862
    :cond_10
    const/16 v22, 0x4

    #@152
    move-object/from16 v0, p1

    #@154
    move/from16 v1, v22

    #@156
    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@159
    move-result v9

    #@15a
    .line 863
    const/16 v22, 0x0

    #@15c
    move-object/from16 v0, p1

    #@15e
    move/from16 v1, v22

    #@160
    invoke-virtual {v0, v1, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@163
    move-result v10

    #@164
    .line 865
    if-eqz v11, :cond_11

    #@166
    move/from16 v22, v9

    #@168
    :goto_8
    move/from16 v0, v22

    #@16a
    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    #@16d
    goto :goto_7

    #@16e
    :cond_11
    move/from16 v22, v10

    #@170
    goto :goto_8
.end method

.method private setupButtons(Landroid/view/ViewGroup;)V
    .locals 6
    .param p1, "buttonPanel"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    const/16 v5, 0x8

    #@2
    const/4 v4, 0x0

    #@3
    .line 687
    const/4 v1, 0x0

    #@4
    .line 688
    .local v1, "whichButtons":I
    const v2, 0x1020019

    #@7
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@a
    move-result-object v2

    #@b
    check-cast v2, Landroid/widget/Button;

    #@d
    iput-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    #@f
    .line 689
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    #@11
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    #@13
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@16
    .line 691
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    #@18
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_2

    #@1e
    .line 692
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    #@20
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    #@23
    .line 699
    :goto_0
    const v2, 0x102001a

    #@26
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@29
    move-result-object v2

    #@2a
    check-cast v2, Landroid/widget/Button;

    #@2c
    iput-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    #@2e
    .line 700
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    #@30
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    #@32
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@35
    .line 702
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    #@37
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3a
    move-result v2

    #@3b
    if-eqz v2, :cond_3

    #@3d
    .line 703
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    #@3f
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    #@42
    .line 711
    :goto_1
    const v2, 0x102001b

    #@45
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@48
    move-result-object v2

    #@49
    check-cast v2, Landroid/widget/Button;

    #@4b
    iput-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    #@4d
    .line 712
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    #@4f
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    #@51
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@54
    .line 714
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    #@56
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@59
    move-result v2

    #@5a
    if-eqz v2, :cond_4

    #@5c
    .line 715
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    #@5e
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    #@61
    .line 723
    :goto_2
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    #@63
    invoke-static {v2}, Lcom/android/internal/app/AlertController;->shouldCenterSingleButton(Landroid/content/Context;)Z

    #@66
    move-result v2

    #@67
    if-eqz v2, :cond_0

    #@69
    .line 684
    const/4 v2, 0x1

    #@6a
    .line 728
    if-ne v1, v2, :cond_5

    #@6c
    .line 729
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    #@6e
    invoke-direct {p0, v2}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    #@71
    .line 737
    :cond_0
    :goto_3
    if-eqz v1, :cond_7

    #@73
    const/4 v0, 0x1

    #@74
    .line 738
    .local v0, "hasButtons":Z
    :goto_4
    if-nez v0, :cond_1

    #@76
    .line 739
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    #@79
    .line 683
    :cond_1
    return-void

    #@7a
    .line 694
    .end local v0    # "hasButtons":Z
    :cond_2
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    #@7c
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    #@7e
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    #@81
    .line 695
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    #@83
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    #@86
    .line 696
    const/4 v1, 0x1

    #@87
    goto :goto_0

    #@88
    .line 705
    :cond_3
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    #@8a
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    #@8c
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    #@8f
    .line 706
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    #@91
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    #@94
    .line 708
    or-int/lit8 v1, v1, 0x2

    #@96
    goto :goto_1

    #@97
    .line 717
    :cond_4
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    #@99
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    #@9b
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    #@9e
    .line 718
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    #@a0
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    #@a3
    .line 720
    or-int/lit8 v1, v1, 0x4

    #@a5
    goto :goto_2

    #@a6
    .line 685
    :cond_5
    const/4 v2, 0x2

    #@a7
    .line 730
    if-ne v1, v2, :cond_6

    #@a9
    .line 731
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    #@ab
    invoke-direct {p0, v2}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    #@ae
    goto :goto_3

    #@af
    .line 686
    :cond_6
    const/4 v2, 0x4

    #@b0
    .line 732
    if-ne v1, v2, :cond_0

    #@b2
    .line 733
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    #@b4
    invoke-direct {p0, v2}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    #@b7
    goto :goto_3

    #@b8
    .line 737
    :cond_7
    const/4 v0, 0x0

    #@b9
    .restart local v0    # "hasButtons":Z
    goto :goto_4
.end method

.method private setupContent(Landroid/view/ViewGroup;)V
    .locals 6
    .param p1, "contentPanel"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    const/16 v5, 0x8

    #@2
    const/4 v4, -0x1

    #@3
    .line 647
    const v2, 0x10202f7

    #@6
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@9
    move-result-object v2

    #@a
    check-cast v2, Landroid/widget/ScrollView;

    #@c
    iput-object v2, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    #@e
    .line 648
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    #@10
    const/4 v3, 0x0

    #@11
    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setFocusable(Z)V

    #@14
    .line 651
    const v2, 0x102000b

    #@17
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@1a
    move-result-object v2

    #@1b
    check-cast v2, Landroid/widget/TextView;

    #@1d
    iput-object v2, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    #@1f
    .line 652
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    #@21
    if-nez v2, :cond_0

    #@23
    .line 653
    return-void

    #@24
    .line 656
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    #@26
    if-eqz v2, :cond_1

    #@28
    .line 657
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    #@2a
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    #@2c
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@2f
    .line 646
    :goto_0
    return-void

    #@30
    .line 659
    :cond_1
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    #@32
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    #@35
    .line 660
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    #@37
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    #@39
    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    #@3c
    .line 662
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    #@3e
    if-eqz v2, :cond_2

    #@40
    .line 663
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    #@42
    invoke-virtual {v2}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    #@45
    move-result-object v1

    #@46
    check-cast v1, Landroid/view/ViewGroup;

    #@48
    .line 664
    .local v1, "scrollParent":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    #@4a
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    #@4d
    move-result v0

    #@4e
    .line 665
    .local v0, "childIndex":I
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    #@51
    .line 666
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    #@53
    .line 667
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    #@55
    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@58
    .line 666
    invoke-virtual {v1, v2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@5b
    goto :goto_0

    #@5c
    .line 669
    .end local v0    # "childIndex":I
    .end local v1    # "scrollParent":Landroid/view/ViewGroup;
    :cond_2
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    #@5f
    goto :goto_0
.end method

.method private setupCustomContent(Landroid/view/ViewGroup;)V
    .locals 8
    .param p1, "customPanel"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    const/high16 v7, 0x20000

    #@2
    const/4 v5, 0x0

    #@3
    const/4 v6, -0x1

    #@4
    .line 568
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    #@6
    if-eqz v4, :cond_2

    #@8
    .line 569
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    #@a
    .line 577
    :goto_0
    if-eqz v1, :cond_4

    #@c
    const/4 v2, 0x1

    #@d
    .line 578
    .local v2, "hasCustomView":Z
    :goto_1
    if-eqz v2, :cond_5

    #@f
    invoke-static {v1}, Lcom/android/internal/app/AlertController;->canTextInput(Landroid/view/View;)Z

    #@12
    move-result v4

    #@13
    if-eqz v4, :cond_5

    #@15
    .line 583
    :goto_2
    if-eqz v2, :cond_6

    #@17
    .line 584
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    #@19
    const v5, 0x102002b

    #@1c
    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Landroid/widget/FrameLayout;

    #@22
    .line 585
    .local v0, "custom":Landroid/widget/FrameLayout;
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    #@24
    invoke-direct {v4, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@27
    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@2a
    .line 587
    iget-boolean v4, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    #@2c
    if-eqz v4, :cond_0

    #@2e
    .line 589
    iget v4, p0, Lcom/android/internal/app/AlertController;->mViewSpacingLeft:I

    #@30
    iget v5, p0, Lcom/android/internal/app/AlertController;->mViewSpacingTop:I

    #@32
    iget v6, p0, Lcom/android/internal/app/AlertController;->mViewSpacingRight:I

    #@34
    iget v7, p0, Lcom/android/internal/app/AlertController;->mViewSpacingBottom:I

    #@36
    .line 588
    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    #@39
    .line 592
    :cond_0
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    #@3b
    if-eqz v4, :cond_1

    #@3d
    .line 593
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@40
    move-result-object v4

    #@41
    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    #@43
    const/4 v5, 0x0

    #@44
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    #@46
    .line 566
    .end local v0    # "custom":Landroid/widget/FrameLayout;
    :cond_1
    :goto_3
    return-void

    #@47
    .line 570
    .end local v2    # "hasCustomView":Z
    :cond_2
    iget v4, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    #@49
    if-eqz v4, :cond_3

    #@4b
    .line 571
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    #@4d
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@50
    move-result-object v3

    #@51
    .line 572
    .local v3, "inflater":Landroid/view/LayoutInflater;
    iget v4, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    #@53
    invoke-virtual {v3, v4, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@56
    move-result-object v1

    #@57
    .local v1, "customView":Landroid/view/View;
    goto :goto_0

    #@58
    .line 574
    .end local v1    # "customView":Landroid/view/View;
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    :cond_3
    const/4 v1, 0x0

    #@59
    .local v1, "customView":Landroid/view/View;
    goto :goto_0

    #@5a
    .line 577
    .end local v1    # "customView":Landroid/view/View;
    :cond_4
    const/4 v2, 0x0

    #@5b
    .restart local v2    # "hasCustomView":Z
    goto :goto_1

    #@5c
    .line 579
    :cond_5
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    #@5e
    invoke-virtual {v4, v7, v7}, Landroid/view/Window;->setFlags(II)V

    #@61
    goto :goto_2

    #@62
    .line 596
    :cond_6
    const/16 v4, 0x8

    #@64
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    #@67
    goto :goto_3
.end method

.method private setupDecor()V
    .locals 4

    #@0
    .prologue
    .line 431
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    #@2
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@5
    move-result-object v0

    #@6
    .line 432
    .local v0, "decor":Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    #@8
    const v3, 0x10202ee

    #@b
    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    #@e
    move-result-object v1

    #@f
    .line 433
    .local v1, "parent":Landroid/view/View;
    if-eqz v1, :cond_0

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 434
    new-instance v2, Lcom/android/internal/app/AlertController$2;

    #@15
    invoke-direct {v2, p0, v1}, Lcom/android/internal/app/AlertController$2;-><init>(Lcom/android/internal/app/AlertController;Landroid/view/View;)V

    #@18
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    #@1b
    .line 446
    const/4 v2, 0x1

    #@1c
    invoke-virtual {v0, v2}, Landroid/view/View;->setFitsSystemWindows(Z)V

    #@1f
    .line 447
    invoke-virtual {v0}, Landroid/view/View;->requestApplyInsets()V

    #@22
    .line 430
    :cond_0
    return-void
.end method

.method private setupTitle(Landroid/view/ViewGroup;)V
    .locals 9
    .param p1, "topPanel"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    const v6, 0x10202f0

    #@3
    const/4 v5, 0x0

    #@4
    const/16 v8, 0x8

    #@6
    .line 601
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    #@8
    if-eqz v3, :cond_0

    #@a
    .line 603
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    #@c
    .line 604
    const/4 v3, -0x1

    #@d
    const/4 v4, -0x2

    #@e
    .line 603
    invoke-direct {v1, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@11
    .line 606
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    #@13
    invoke-virtual {p1, v3, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@16
    .line 609
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    #@18
    invoke-virtual {v3, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    #@1b
    move-result-object v2

    #@1c
    .line 610
    .local v2, "titleTemplate":Landroid/view/View;
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    #@1f
    .line 600
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "titleTemplate":Landroid/view/View;
    :goto_0
    return-void

    #@20
    .line 612
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    #@22
    const v4, 0x1020006

    #@25
    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    #@28
    move-result-object v3

    #@29
    check-cast v3, Landroid/widget/ImageView;

    #@2b
    iput-object v3, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    #@2d
    .line 614
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    #@2f
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@32
    move-result v3

    #@33
    if-eqz v3, :cond_1

    #@35
    const/4 v0, 0x0

    #@36
    .line 615
    .local v0, "hasTextTitle":Z
    :goto_1
    if-eqz v0, :cond_4

    #@38
    .line 617
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    #@3a
    const v4, 0x10202f1

    #@3d
    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    #@40
    move-result-object v3

    #@41
    check-cast v3, Landroid/widget/TextView;

    #@43
    iput-object v3, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    #@45
    .line 618
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    #@47
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    #@49
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@4c
    .line 623
    iget v3, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    #@4e
    if-eqz v3, :cond_2

    #@50
    .line 624
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    #@52
    iget v4, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    #@54
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    #@57
    goto :goto_0

    #@58
    .line 614
    .end local v0    # "hasTextTitle":Z
    :cond_1
    const/4 v0, 0x1

    #@59
    .restart local v0    # "hasTextTitle":Z
    goto :goto_1

    #@5a
    .line 625
    :cond_2
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    #@5c
    if-eqz v3, :cond_3

    #@5e
    .line 626
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    #@60
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    #@62
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@65
    goto :goto_0

    #@66
    .line 630
    :cond_3
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    #@68
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    #@6a
    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingLeft()I

    #@6d
    move-result v4

    #@6e
    .line 631
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    #@70
    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingTop()I

    #@73
    move-result v5

    #@74
    .line 632
    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    #@76
    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingRight()I

    #@79
    move-result v6

    #@7a
    .line 633
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    #@7c
    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingBottom()I

    #@7f
    move-result v7

    #@80
    .line 630
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    #@83
    .line 634
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    #@85
    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    #@88
    goto :goto_0

    #@89
    .line 638
    :cond_4
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    #@8b
    invoke-virtual {v3, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    #@8e
    move-result-object v2

    #@8f
    .line 639
    .restart local v2    # "titleTemplate":Landroid/view/View;
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    #@92
    .line 640
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    #@94
    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    #@97
    .line 641
    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    #@9a
    goto :goto_0
.end method

.method private setupView()V
    .locals 28

    #@0
    .prologue
    .line 488
    move-object/from16 v0, p0

    #@2
    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    #@4
    const v24, 0x10202ee

    #@7
    move/from16 v0, v24

    #@9
    invoke-virtual {v4, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    #@c
    move-result-object v22

    #@d
    .line 489
    .local v22, "parentPanel":Landroid/view/View;
    const v4, 0x10202ef

    #@10
    move-object/from16 v0, v22

    #@12
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@15
    move-result-object v19

    #@16
    .line 490
    .local v19, "defaultTopPanel":Landroid/view/View;
    const v4, 0x10202f6

    #@19
    move-object/from16 v0, v22

    #@1b
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@1e
    move-result-object v18

    #@1f
    .line 491
    .local v18, "defaultContentPanel":Landroid/view/View;
    const v4, 0x10202f3

    #@22
    move-object/from16 v0, v22

    #@24
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@27
    move-result-object v17

    #@28
    .line 495
    .local v17, "defaultButtonPanel":Landroid/view/View;
    const v4, 0x10202f8

    #@2b
    move-object/from16 v0, v22

    #@2d
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@30
    move-result-object v8

    #@31
    check-cast v8, Landroid/view/ViewGroup;

    #@33
    .line 496
    .local v8, "customPanel":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    #@35
    invoke-direct {v0, v8}, Lcom/android/internal/app/AlertController;->setupCustomContent(Landroid/view/ViewGroup;)V

    #@38
    .line 498
    const v4, 0x10202ef

    #@3b
    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@3e
    move-result-object v16

    #@3f
    .line 499
    .local v16, "customTopPanel":Landroid/view/View;
    const v4, 0x10202f6

    #@42
    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@45
    move-result-object v15

    #@46
    .line 500
    .local v15, "customContentPanel":Landroid/view/View;
    const v4, 0x10202f3

    #@49
    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@4c
    move-result-object v14

    #@4d
    .line 503
    .local v14, "customButtonPanel":Landroid/view/View;
    move-object/from16 v0, p0

    #@4f
    move-object/from16 v1, v16

    #@51
    move-object/from16 v2, v19

    #@53
    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    #@56
    move-result-object v6

    #@57
    .line 504
    .local v6, "topPanel":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    #@59
    move-object/from16 v1, v18

    #@5b
    invoke-direct {v0, v15, v1}, Lcom/android/internal/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    #@5e
    move-result-object v7

    #@5f
    .line 505
    .local v7, "contentPanel":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    #@61
    move-object/from16 v1, v17

    #@63
    invoke-direct {v0, v14, v1}, Lcom/android/internal/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    #@66
    move-result-object v9

    #@67
    .line 507
    .local v9, "buttonPanel":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    #@69
    invoke-direct {v0, v7}, Lcom/android/internal/app/AlertController;->setupContent(Landroid/view/ViewGroup;)V

    #@6c
    .line 508
    move-object/from16 v0, p0

    #@6e
    invoke-direct {v0, v9}, Lcom/android/internal/app/AlertController;->setupButtons(Landroid/view/ViewGroup;)V

    #@71
    .line 509
    move-object/from16 v0, p0

    #@73
    invoke-direct {v0, v6}, Lcom/android/internal/app/AlertController;->setupTitle(Landroid/view/ViewGroup;)V

    #@76
    .line 511
    if-eqz v8, :cond_7

    #@78
    .line 512
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getVisibility()I

    #@7b
    move-result v4

    #@7c
    const/16 v24, 0x8

    #@7e
    move/from16 v0, v24

    #@80
    if-eq v4, v0, :cond_6

    #@82
    const/4 v11, 0x1

    #@83
    .line 513
    .local v11, "hasCustomPanel":Z
    :goto_0
    if-eqz v6, :cond_9

    #@85
    .line 514
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getVisibility()I

    #@88
    move-result v4

    #@89
    const/16 v24, 0x8

    #@8b
    move/from16 v0, v24

    #@8d
    if-eq v4, v0, :cond_8

    #@8f
    const/4 v10, 0x1

    #@90
    .line 515
    .local v10, "hasTopPanel":Z
    :goto_1
    if-eqz v9, :cond_b

    #@92
    .line 516
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getVisibility()I

    #@95
    move-result v4

    #@96
    const/16 v24, 0x8

    #@98
    move/from16 v0, v24

    #@9a
    if-eq v4, v0, :cond_a

    #@9c
    const/4 v12, 0x1

    #@9d
    .line 519
    .local v12, "hasButtonPanel":Z
    :goto_2
    if-nez v12, :cond_1

    #@9f
    .line 520
    if-eqz v7, :cond_0

    #@a1
    .line 521
    const v4, 0x10202fc

    #@a4
    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@a7
    move-result-object v23

    #@a8
    .line 522
    .local v23, "spacer":Landroid/view/View;
    if-eqz v23, :cond_0

    #@aa
    .line 523
    const/4 v4, 0x0

    #@ab
    move-object/from16 v0, v23

    #@ad
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    #@b0
    .line 526
    .end local v23    # "spacer":Landroid/view/View;
    :cond_0
    move-object/from16 v0, p0

    #@b2
    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    #@b4
    const/16 v24, 0x1

    #@b6
    move/from16 v0, v24

    #@b8
    invoke-virtual {v4, v0}, Landroid/view/Window;->setCloseOnTouchOutsideIfNotSet(Z)V

    #@bb
    .line 529
    :cond_1
    if-eqz v10, :cond_4

    #@bd
    .line 531
    move-object/from16 v0, p0

    #@bf
    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    #@c1
    if-eqz v4, :cond_2

    #@c3
    .line 532
    move-object/from16 v0, p0

    #@c5
    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    #@c7
    const/16 v24, 0x1

    #@c9
    move/from16 v0, v24

    #@cb
    invoke-virtual {v4, v0}, Landroid/widget/ScrollView;->setClipToPadding(Z)V

    #@ce
    .line 537
    :cond_2
    move-object/from16 v0, p0

    #@d0
    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    #@d2
    if-nez v4, :cond_3

    #@d4
    move-object/from16 v0, p0

    #@d6
    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    #@d8
    if-eqz v4, :cond_c

    #@da
    .line 538
    :cond_3
    const v4, 0x10202f2

    #@dd
    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@e0
    move-result-object v20

    #@e1
    .line 543
    .local v20, "divider":Landroid/view/View;
    :goto_3
    if-eqz v20, :cond_4

    #@e3
    .line 544
    const/4 v4, 0x0

    #@e4
    move-object/from16 v0, v20

    #@e6
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    #@e9
    .line 549
    .end local v20    # "divider":Landroid/view/View;
    :cond_4
    if-nez v11, :cond_5

    #@eb
    .line 550
    move-object/from16 v0, p0

    #@ed
    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    #@ef
    if-eqz v4, :cond_d

    #@f1
    move-object/from16 v0, p0

    #@f3
    iget-object v13, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    #@f5
    .line 551
    .local v13, "content":Landroid/view/View;
    :goto_4
    if-eqz v13, :cond_5

    #@f7
    .line 552
    if-eqz v10, :cond_e

    #@f9
    const/4 v4, 0x1

    #@fa
    move/from16 v24, v4

    #@fc
    .line 553
    :goto_5
    if-eqz v12, :cond_f

    #@fe
    const/4 v4, 0x2

    #@ff
    .line 552
    :goto_6
    or-int v21, v24, v4

    #@101
    .line 555
    .local v21, "indicators":I
    const/4 v4, 0x3

    #@102
    .line 554
    move/from16 v0, v21

    #@104
    invoke-virtual {v13, v0, v4}, Landroid/view/View;->setScrollIndicators(II)V

    #@107
    .line 559
    .end local v13    # "content":Landroid/view/View;
    .end local v21    # "indicators":I
    :cond_5
    move-object/from16 v0, p0

    #@109
    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    #@10b
    .line 560
    sget-object v24, Lcom/android/internal/R$styleable;->AlertDialog:[I

    #@10d
    const/16 v25, 0x0

    #@10f
    const v26, 0x101005d

    #@112
    const/16 v27, 0x0

    #@114
    .line 559
    move-object/from16 v0, v25

    #@116
    move-object/from16 v1, v24

    #@118
    move/from16 v2, v26

    #@11a
    move/from16 v3, v27

    #@11c
    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@11f
    move-result-object v5

    #@120
    .local v5, "a":Landroid/content/res/TypedArray;
    move-object/from16 v4, p0

    #@122
    .line 561
    invoke-direct/range {v4 .. v12}, Lcom/android/internal/app/AlertController;->setBackground(Landroid/content/res/TypedArray;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZZ)V

    #@125
    .line 563
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    #@128
    .line 487
    return-void

    #@129
    .line 512
    .end local v5    # "a":Landroid/content/res/TypedArray;
    .end local v10    # "hasTopPanel":Z
    .end local v11    # "hasCustomPanel":Z
    .end local v12    # "hasButtonPanel":Z
    :cond_6
    const/4 v11, 0x0

    #@12a
    .restart local v11    # "hasCustomPanel":Z
    goto/16 :goto_0

    #@12c
    .line 511
    .end local v11    # "hasCustomPanel":Z
    :cond_7
    const/4 v11, 0x0

    #@12d
    .restart local v11    # "hasCustomPanel":Z
    goto/16 :goto_0

    #@12f
    .line 514
    :cond_8
    const/4 v10, 0x0

    #@130
    .restart local v10    # "hasTopPanel":Z
    goto/16 :goto_1

    #@132
    .line 513
    .end local v10    # "hasTopPanel":Z
    :cond_9
    const/4 v10, 0x0

    #@133
    .restart local v10    # "hasTopPanel":Z
    goto/16 :goto_1

    #@135
    .line 516
    :cond_a
    const/4 v12, 0x0

    #@136
    .restart local v12    # "hasButtonPanel":Z
    goto/16 :goto_2

    #@138
    .line 515
    .end local v12    # "hasButtonPanel":Z
    :cond_b
    const/4 v12, 0x0

    #@139
    .restart local v12    # "hasButtonPanel":Z
    goto/16 :goto_2

    #@13b
    .line 537
    :cond_c
    if-nez v11, :cond_3

    #@13d
    .line 540
    const v4, 0x10202fa

    #@140
    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@143
    move-result-object v20

    #@144
    .restart local v20    # "divider":Landroid/view/View;
    goto :goto_3

    #@145
    .line 550
    .end local v20    # "divider":Landroid/view/View;
    :cond_d
    move-object/from16 v0, p0

    #@147
    iget-object v13, v0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    #@149
    .restart local v13    # "content":Landroid/view/View;
    goto :goto_4

    #@14a
    .line 552
    :cond_e
    const/4 v4, 0x0

    #@14b
    move/from16 v24, v4

    #@14d
    goto :goto_5

    #@14e
    .line 553
    :cond_f
    const/4 v4, 0x0

    #@14f
    goto :goto_6
.end method

.method private static shouldCenterSingleButton(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 173
    new-instance v0, Landroid/util/TypedValue;

    #@4
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@7
    .line 174
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@a
    move-result-object v3

    #@b
    const v4, 0x1160017

    #@e
    invoke-virtual {v3, v4, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@11
    .line 175
    iget v3, v0, Landroid/util/TypedValue;->data:I

    #@13
    if-eqz v3, :cond_0

    #@15
    :goto_0
    return v1

    #@16
    :cond_0
    move v1, v2

    #@17
    goto :goto_0
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .param p1, "whichButton"    # I

    #@0
    .prologue
    .line 408
    packed-switch p1, :pswitch_data_0

    #@3
    .line 416
    const/4 v0, 0x0

    #@4
    return-object v0

    #@5
    .line 410
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    #@7
    return-object v0

    #@8
    .line 412
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    #@a
    return-object v0

    #@b
    .line 414
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    #@d
    return-object v0

    #@e
    .line 408
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getIconAttributeResId(I)I
    .locals 3
    .param p1, "attrId"    # I

    #@0
    .prologue
    .line 394
    new-instance v0, Landroid/util/TypedValue;

    #@2
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@5
    .line 395
    .local v0, "out":Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    #@7
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@a
    move-result-object v1

    #@b
    const/4 v2, 0x1

    #@c
    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@f
    .line 396
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    #@11
    return v1
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    #@0
    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    #@2
    return-object v0
.end method

.method public installContent()V
    .locals 3

    #@0
    .prologue
    .line 231
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    #@2
    const/4 v2, 0x1

    #@3
    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    #@6
    .line 232
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->selectContentView()I

    #@9
    move-result v0

    #@a
    .line 233
    .local v0, "contentView":I
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    #@c
    invoke-virtual {v1, v0}, Landroid/view/Window;->setContentView(I)V

    #@f
    .line 234
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->setupView()V

    #@12
    .line 235
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->setupDecor()V

    #@15
    .line 229
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    #@6
    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

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

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    #@6
    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

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

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 324
    if-nez p4, :cond_0

    #@2
    if-eqz p3, :cond_0

    #@4
    .line 325
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    #@6
    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@9
    move-result-object p4

    #@a
    .line 328
    :cond_0
    packed-switch p1, :pswitch_data_0

    #@d
    .line 346
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v1, "Button does not exist"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 331
    :pswitch_0
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    #@18
    .line 332
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    #@1a
    .line 322
    :goto_0
    return-void

    #@1b
    .line 336
    :pswitch_1
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    #@1d
    .line 337
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    #@1f
    goto :goto_0

    #@20
    .line 341
    :pswitch_2
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    #@22
    .line 342
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    #@24
    goto :goto_0

    #@25
    .line 328
    nop

    #@26
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setButtonPanelLayoutHint(I)V
    .locals 0
    .param p1, "layoutHint"    # I

    #@0
    .prologue
    .line 306
    iput p1, p0, Lcom/android/internal/app/AlertController;->mButtonPanelLayoutHint:I

    #@2
    .line 305
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0
    .param p1, "customTitleView"    # Landroid/view/View;

    #@0
    .prologue
    .line 260
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    #@2
    .line 259
    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .param p1, "resId"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 357
    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    #@3
    .line 358
    iput p1, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    #@5
    .line 360
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 361
    if-eqz p1, :cond_1

    #@b
    .line 362
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    #@d
    iget v1, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    #@f
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    #@12
    .line 356
    :cond_0
    :goto_0
    return-void

    #@13
    .line 364
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    #@15
    const/16 v1, 0x8

    #@17
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    #@1a
    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 375
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    #@2
    .line 376
    const/4 v0, 0x0

    #@3
    iput v0, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    #@5
    .line 378
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 379
    if-eqz p1, :cond_1

    #@b
    .line 380
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    #@d
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@10
    .line 374
    :cond_0
    :goto_0
    return-void

    #@11
    .line 382
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    #@13
    const/16 v1, 0x8

    #@15
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    #@18
    goto :goto_0
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 0
    .param p1, "forceInverseBackground"    # Z

    #@0
    .prologue
    .line 400
    iput-boolean p1, p0, Lcom/android/internal/app/AlertController;->mForceInverseBackground:Z

    #@2
    .line 399
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    #@2
    .line 265
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 266
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    #@8
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@b
    .line 263
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    #@2
    .line 251
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 252
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    #@8
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@b
    .line 249
    :cond_0
    return-void
.end method

.method public setView(I)V
    .locals 1
    .param p1, "layoutResId"    # I

    #@0
    .prologue
    .line 274
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    #@3
    .line 275
    iput p1, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    #@5
    .line 276
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    #@8
    .line 273
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 283
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    #@3
    .line 284
    iput v0, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    #@5
    .line 285
    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    #@7
    .line 282
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    #@0
    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    #@2
    .line 294
    const/4 v0, 0x0

    #@3
    iput v0, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    #@5
    .line 295
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    #@8
    .line 296
    iput p2, p0, Lcom/android/internal/app/AlertController;->mViewSpacingLeft:I

    #@a
    .line 297
    iput p3, p0, Lcom/android/internal/app/AlertController;->mViewSpacingTop:I

    #@c
    .line 298
    iput p4, p0, Lcom/android/internal/app/AlertController;->mViewSpacingRight:I

    #@e
    .line 299
    iput p5, p0, Lcom/android/internal/app/AlertController;->mViewSpacingBottom:I

    #@10
    .line 292
    return-void
.end method
