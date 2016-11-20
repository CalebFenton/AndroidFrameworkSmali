.class public Lcom/android/internal/app/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/AlertController$1;,
        Lcom/android/internal/app/AlertController$AlertParams;,
        Lcom/android/internal/app/AlertController$ButtonHandler;,
        Lcom/android/internal/app/AlertController$CheckedItemAdapter;,
        Lcom/android/internal/app/AlertController$RecycleListView;
    }
.end annotation


# static fields
.field public static final MICRO:I = 0x1


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

.field protected mListView:Landroid/widget/ListView;

.field protected mMessage:Ljava/lang/CharSequence;

.field protected mMessageView:Landroid/widget/TextView;

.field private mMultiChoiceItemLayout:I

.field protected mScrollView:Landroid/widget/ScrollView;

.field private mShowTitle:Z

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

.field protected final mWindow:Landroid/view/Window;


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
    iget v0, p0, Lcom/android/internal/app/AlertController;->mMultiChoiceItemLayout:I

    #@2
    return v0
.end method

.method static synthetic -get11(Lcom/android/internal/app/AlertController;)I
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

.method static synthetic -get6(Lcom/android/internal/app/AlertController;)Landroid/content/DialogInterface;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/internal/app/AlertController;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/internal/app/AlertController;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/internal/app/AlertController;->mListItemLayout:I

    #@2
    return v0
.end method

.method static synthetic -get9(Lcom/android/internal/app/AlertController;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/internal/app/AlertController;->mListLayout:I

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

.method protected constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Landroid/content/DialogInterface;
    .param p3, "window"    # Landroid/view/Window;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 82
    iput-boolean v4, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    #@7
    .line 98
    iput v4, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    #@9
    .line 110
    const/4 v1, -0x1

    #@a
    iput v1, p0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    #@c
    .line 121
    iput v4, p0, Lcom/android/internal/app/AlertController;->mButtonPanelLayoutHint:I

    #@e
    .line 125
    new-instance v1, Lcom/android/internal/app/AlertController$1;

    #@10
    invoke-direct {v1, p0}, Lcom/android/internal/app/AlertController$1;-><init>(Lcom/android/internal/app/AlertController;)V

    #@13
    iput-object v1, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    #@15
    .line 196
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    #@17
    .line 197
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    #@19
    .line 198
    iput-object p3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    #@1b
    .line 199
    new-instance v1, Lcom/android/internal/app/AlertController$ButtonHandler;

    #@1d
    invoke-direct {v1, p2}, Lcom/android/internal/app/AlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    #@20
    iput-object v1, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    #@22
    .line 202
    sget-object v1, Lcom/android/internal/R$styleable;->AlertDialog:[I

    #@24
    .line 201
    const/4 v2, 0x0

    #@25
    .line 202
    const v3, 0x101005d

    #@28
    .line 201
    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@2b
    move-result-object v0

    #@2c
    .line 205
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0xa

    #@2e
    const v2, 0x1090026

    #@31
    .line 204
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@34
    move-result v1

    #@35
    iput v1, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    #@37
    .line 207
    const/16 v1, 0xb

    #@39
    .line 206
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@3c
    move-result v1

    #@3d
    iput v1, p0, Lcom/android/internal/app/AlertController;->mButtonPanelSideLayout:I

    #@3f
    .line 209
    const/16 v1, 0xc

    #@41
    const v2, 0x10900d9

    #@44
    .line 208
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@47
    move-result v1

    #@48
    iput v1, p0, Lcom/android/internal/app/AlertController;->mListLayout:I

    #@4a
    .line 212
    const/16 v1, 0xd

    #@4c
    .line 213
    const v2, 0x1090013

    #@4f
    .line 211
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@52
    move-result v1

    #@53
    iput v1, p0, Lcom/android/internal/app/AlertController;->mMultiChoiceItemLayout:I

    #@55
    .line 215
    const/16 v1, 0xe

    #@57
    .line 216
    const v2, 0x1090012

    #@5a
    .line 214
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@5d
    move-result v1

    #@5e
    iput v1, p0, Lcom/android/internal/app/AlertController;->mSingleChoiceItemLayout:I

    #@60
    .line 218
    const/16 v1, 0xf

    #@62
    .line 219
    const v2, 0x1090011

    #@65
    .line 217
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@68
    move-result v1

    #@69
    iput v1, p0, Lcom/android/internal/app/AlertController;->mListItemLayout:I

    #@6b
    .line 220
    const/16 v1, 0x12

    #@6d
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@70
    move-result v1

    #@71
    iput-boolean v1, p0, Lcom/android/internal/app/AlertController;->mShowTitle:Z

    #@73
    .line 222
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@76
    .line 225
    invoke-virtual {p3, v5}, Landroid/view/Window;->requestFeature(I)Z

    #@79
    .line 195
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
    .line 229
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 230
    return v4

    #@9
    .line 233
    :cond_0
    instance-of v2, p0, Landroid/view/ViewGroup;

    #@b
    if-nez v2, :cond_1

    #@d
    .line 234
    return v3

    #@e
    :cond_1
    move-object v1, p0

    #@f
    .line 237
    check-cast v1, Landroid/view/ViewGroup;

    #@11
    .line 238
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    #@14
    move-result v0

    #@15
    .line 239
    .local v0, "i":I
    :cond_2
    if-lez v0, :cond_3

    #@17
    .line 240
    add-int/lit8 v0, v0, -0x1

    #@19
    .line 241
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@1c
    move-result-object p0

    #@1d
    .line 242
    invoke-static {p0}, Lcom/android/internal/app/AlertController;->canTextInput(Landroid/view/View;)Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_2

    #@23
    .line 243
    return v4

    #@24
    .line 247
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
    .line 760
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@4
    move-result-object v1

    #@5
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    #@7
    .line 761
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x1

    #@8
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    #@a
    .line 762
    const/high16 v3, 0x3f000000    # 0.5f

    #@c
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    #@e
    .line 763
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@11
    .line 764
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    #@13
    const v4, 0x1020328

    #@16
    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    #@19
    move-result-object v0

    #@1a
    .line 765
    .local v0, "leftSpacer":Landroid/view/View;
    if-eqz v0, :cond_0

    #@1c
    .line 766
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    #@1f
    .line 768
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    #@21
    const v4, 0x1020329

    #@24
    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    #@27
    move-result-object v2

    #@28
    .line 769
    .local v2, "rightSpacer":Landroid/view/View;
    if-eqz v2, :cond_1

    #@2a
    .line 770
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    #@2d
    .line 759
    :cond_1
    return-void
.end method

.method public static final create(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)Lcom/android/internal/app/AlertController;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "di"    # Landroid/content/DialogInterface;
    .param p2, "window"    # Landroid/view/Window;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 183
    sget-object v2, Lcom/android/internal/R$styleable;->AlertDialog:[I

    #@3
    const/4 v3, 0x0

    #@4
    const v4, 0x101005d

    #@7
    .line 182
    invoke-virtual {p0, v3, v2, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@a
    move-result-object v0

    #@b
    .line 184
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v2, 0x14

    #@d
    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    #@10
    move-result v1

    #@11
    .line 185
    .local v1, "controllerType":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@14
    .line 187
    packed-switch v1, :pswitch_data_0

    #@17
    .line 191
    new-instance v2, Lcom/android/internal/app/AlertController;

    #@19
    invoke-direct {v2, p0, p1, p2}, Lcom/android/internal/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    #@1c
    return-object v2

    #@1d
    .line 189
    :pswitch_0
    new-instance v2, Lcom/android/internal/app/MicroAlertController;

    #@1f
    invoke-direct {v2, p0, p1, p2}, Lcom/android/internal/app/MicroAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    #@22
    return-object v2

    #@23
    .line 187
    nop

    #@24
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
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
    .line 691
    if-eqz p1, :cond_0

    #@4
    .line 692
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
    .line 694
    :cond_0
    if-eqz p2, :cond_1

    #@11
    .line 695
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
    .line 690
    :cond_1
    return-void

    #@1c
    :cond_2
    move v0, v2

    #@1d
    .line 692
    goto :goto_0

    #@1e
    :cond_3
    move v1, v2

    #@1f
    .line 695
    goto :goto_1
.end method

.method private resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 2
    .param p1, "customPanel"    # Landroid/view/View;
    .param p2, "defaultPanel"    # Landroid/view/View;

    #@0
    .prologue
    .line 461
    if-nez p1, :cond_1

    #@2
    .line 463
    instance-of v1, p2, Landroid/view/ViewStub;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 464
    check-cast p2, Landroid/view/ViewStub;

    #@8
    .end local p2    # "defaultPanel":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    #@b
    move-result-object p2

    #@c
    .line 467
    .restart local p2    # "defaultPanel":Landroid/view/View;
    :cond_0
    check-cast p2, Landroid/view/ViewGroup;

    #@e
    .end local p2    # "defaultPanel":Landroid/view/View;
    return-object p2

    #@f
    .line 471
    .restart local p2    # "defaultPanel":Landroid/view/View;
    :cond_1
    if-eqz p2, :cond_2

    #@11
    .line 472
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@14
    move-result-object v0

    #@15
    .line 473
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    #@17
    if-eqz v1, :cond_2

    #@19
    .line 474
    check-cast v0, Landroid/view/ViewGroup;

    #@1b
    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@1e
    .line 479
    :cond_2
    instance-of v1, p1, Landroid/view/ViewStub;

    #@20
    if-eqz v1, :cond_3

    #@22
    .line 480
    check-cast p1, Landroid/view/ViewStub;

    #@24
    .end local p1    # "customPanel":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    #@27
    move-result-object p1

    #@28
    .line 483
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
    .line 257
    iget v0, p0, Lcom/android/internal/app/AlertController;->mButtonPanelSideLayout:I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 258
    iget v0, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    #@6
    return v0

    #@7
    .line 260
    :cond_0
    iget v0, p0, Lcom/android/internal/app/AlertController;->mButtonPanelLayoutHint:I

    #@9
    const/4 v1, 0x1

    #@a
    if-ne v0, v1, :cond_1

    #@c
    .line 261
    iget v0, p0, Lcom/android/internal/app/AlertController;->mButtonPanelSideLayout:I

    #@e
    return v0

    #@f
    .line 264
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
    .line 776
    const/4 v10, 0x0

    #@1
    .line 777
    .local v10, "fullDark":I
    const/16 v19, 0x0

    #@3
    .line 778
    .local v19, "topDark":I
    const/4 v7, 0x0

    #@4
    .line 779
    .local v7, "centerDark":I
    const/4 v4, 0x0

    #@5
    .line 780
    .local v4, "bottomDark":I
    const/4 v9, 0x0

    #@6
    .line 781
    .local v9, "fullBright":I
    const/16 v18, 0x0

    #@8
    .line 782
    .local v18, "topBright":I
    const/4 v6, 0x0

    #@9
    .line 783
    .local v6, "centerBright":I
    const/4 v3, 0x0

    #@a
    .line 784
    .local v3, "bottomBright":I
    const/4 v5, 0x0

    #@b
    .line 789
    .local v5, "bottomMedium":I
    const/16 v22, 0x13

    #@d
    const/16 v23, 0x1

    #@f
    .line 788
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
    .line 790
    .local v15, "needsDefaultBackgrounds":Z
    if-eqz v15, :cond_0

    #@1b
    .line 791
    const v10, 0x10805dc

    #@1e
    .line 792
    const v19, 0x10805ea

    #@21
    .line 793
    const v7, 0x10805d9

    #@24
    .line 794
    const v4, 0x10805d6

    #@27
    .line 795
    const v9, 0x10805db

    #@2a
    .line 796
    const v18, 0x10805e9

    #@2d
    .line 797
    const v6, 0x10805d8

    #@30
    .line 798
    const v3, 0x10805d5

    #@33
    .line 799
    const v5, 0x10805d7

    #@36
    .line 802
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
    .line 803
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
    .line 804
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
    .line 805
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
    .line 815
    const/16 v22, 0x4

    #@64
    move/from16 v0, v22

    #@66
    new-array v0, v0, [Landroid/view/View;

    #@68
    move-object/from16 v21, v0

    #@6a
    .line 816
    .local v21, "views":[Landroid/view/View;
    const/16 v22, 0x4

    #@6c
    move/from16 v0, v22

    #@6e
    new-array v13, v0, [Z

    #@70
    .line 817
    .local v13, "light":[Z
    const/4 v12, 0x0

    #@71
    .line 818
    .local v12, "lastView":Landroid/view/View;
    const/4 v11, 0x0

    #@72
    .line 820
    .local v11, "lastLight":Z
    const/16 v16, 0x0

    #@74
    .line 821
    .local v16, "pos":I
    if-eqz p6, :cond_1

    #@76
    .line 822
    aput-object p2, v21, v16

    #@78
    .line 823
    const/16 v22, 0x0

    #@7a
    aput-boolean v22, v13, v16

    #@7c
    .line 824
    const/16 v16, 0x1

    #@7e
    .line 832
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
    .line 833
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
    .line 834
    add-int/lit8 v16, v16, 0x1

    #@9c
    .line 836
    if-eqz p7, :cond_3

    #@9e
    .line 837
    aput-object p4, v21, v16

    #@a0
    .line 838
    move-object/from16 v0, p0

    #@a2
    iget-boolean v0, v0, Lcom/android/internal/app/AlertController;->mForceInverseBackground:Z

    #@a4
    move/from16 v22, v0

    #@a6
    aput-boolean v22, v13, v16

    #@a8
    .line 839
    add-int/lit8 v16, v16, 0x1

    #@aa
    .line 842
    :cond_3
    if-eqz p8, :cond_4

    #@ac
    .line 843
    aput-object p5, v21, v16

    #@ae
    .line 844
    const/16 v22, 0x1

    #@b0
    aput-boolean v22, v13, v16

    #@b2
    .line 847
    :cond_4
    const/16 v17, 0x0

    #@b4
    .line 848
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
    .line 849
    aget-object v20, v21, v16

    #@c3
    .line 850
    .local v20, "v":Landroid/view/View;
    if-nez v20, :cond_6

    #@c5
    .line 848
    :goto_2
    add-int/lit8 v16, v16, 0x1

    #@c7
    goto :goto_1

    #@c8
    .line 833
    .end local v17    # "setView":Z
    .end local v20    # "v":Landroid/view/View;
    .restart local v11    # "lastLight":Z
    .restart local v12    # "lastView":Landroid/view/View;
    :cond_5
    const/16 v22, 0x0

    #@ca
    goto :goto_0

    #@cb
    .line 854
    .end local v11    # "lastLight":Z
    .end local v12    # "lastView":Landroid/view/View;
    .restart local v17    # "setView":Z
    .restart local v20    # "v":Landroid/view/View;
    :cond_6
    if-eqz v12, :cond_7

    #@cd
    .line 855
    if-nez v17, :cond_9

    #@cf
    .line 856
    if-eqz v11, :cond_8

    #@d1
    move/from16 v22, v18

    #@d3
    :goto_3
    move/from16 v0, v22

    #@d5
    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    #@d8
    .line 860
    :goto_4
    const/16 v17, 0x1

    #@da
    .line 863
    :cond_7
    move-object/from16 v12, v20

    #@dc
    .line 864
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
    .line 856
    goto :goto_3

    #@e2
    .line 858
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
    .line 867
    .end local v20    # "v":Landroid/view/View;
    :cond_b
    if-eqz v12, :cond_c

    #@f1
    .line 868
    if-eqz v17, :cond_10

    #@f3
    .line 869
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
    .line 870
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
    .line 871
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
    .line 876
    if-eqz v11, :cond_f

    #@113
    if-eqz p8, :cond_e

    #@115
    move/from16 v22, v5

    #@117
    .line 875
    :goto_6
    move/from16 v0, v22

    #@119
    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    #@11c
    .line 885
    :cond_c
    :goto_7
    move-object/from16 v0, p0

    #@11e
    iget-object v14, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    #@120
    .line 886
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
    .line 887
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
    .line 888
    move-object/from16 v0, p0

    #@137
    iget v8, v0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    #@139
    .line 889
    .local v8, "checkedItem":I
    const/16 v22, -0x1

    #@13b
    move/from16 v0, v22

    #@13d
    if-le v8, v0, :cond_d

    #@13f
    .line 890
    const/16 v22, 0x1

    #@141
    move/from16 v0, v22

    #@143
    invoke-virtual {v14, v8, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    #@146
    .line 891
    invoke-virtual {v14, v8}, Landroid/widget/ListView;->setSelection(I)V

    #@149
    .line 775
    .end local v8    # "checkedItem":I
    :cond_d
    return-void

    #@14a
    .end local v14    # "listView":Landroid/widget/ListView;
    :cond_e
    move/from16 v22, v3

    #@14c
    .line 876
    goto :goto_6

    #@14d
    :cond_f
    move/from16 v22, v4

    #@14f
    goto :goto_6

    #@150
    .line 878
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
    .line 879
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
    .line 881
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

.method private setupCustomContent(Landroid/view/ViewGroup;)V
    .locals 8
    .param p1, "customPanel"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    const/high16 v5, 0x20000

    #@2
    const/4 v6, -0x1

    #@3
    const/4 v2, 0x0

    #@4
    .line 584
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    #@6
    if-eqz v4, :cond_3

    #@8
    .line 585
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    #@a
    .line 593
    :goto_0
    if-eqz v1, :cond_0

    #@c
    const/4 v2, 0x1

    #@d
    .line 594
    .local v2, "hasCustomView":Z
    :cond_0
    if-eqz v2, :cond_5

    #@f
    invoke-static {v1}, Lcom/android/internal/app/AlertController;->canTextInput(Landroid/view/View;)Z

    #@12
    move-result v4

    #@13
    if-eqz v4, :cond_5

    #@15
    .line 599
    :goto_1
    if-eqz v2, :cond_6

    #@17
    .line 600
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
    .line 601
    .local v0, "custom":Landroid/widget/FrameLayout;
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    #@24
    invoke-direct {v4, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@27
    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@2a
    .line 603
    iget-boolean v4, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    #@2c
    if-eqz v4, :cond_1

    #@2e
    .line 605
    iget v4, p0, Lcom/android/internal/app/AlertController;->mViewSpacingLeft:I

    #@30
    iget v5, p0, Lcom/android/internal/app/AlertController;->mViewSpacingTop:I

    #@32
    iget v6, p0, Lcom/android/internal/app/AlertController;->mViewSpacingRight:I

    #@34
    iget v7, p0, Lcom/android/internal/app/AlertController;->mViewSpacingBottom:I

    #@36
    .line 604
    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    #@39
    .line 608
    :cond_1
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    #@3b
    if-eqz v4, :cond_2

    #@3d
    .line 609
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
    .line 582
    .end local v0    # "custom":Landroid/widget/FrameLayout;
    :cond_2
    :goto_2
    return-void

    #@47
    .line 586
    .end local v2    # "hasCustomView":Z
    :cond_3
    iget v4, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    #@49
    if-eqz v4, :cond_4

    #@4b
    .line 587
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    #@4d
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@50
    move-result-object v3

    #@51
    .line 588
    .local v3, "inflater":Landroid/view/LayoutInflater;
    iget v4, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    #@53
    invoke-virtual {v3, v4, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@56
    move-result-object v1

    #@57
    .local v1, "customView":Landroid/view/View;
    goto :goto_0

    #@58
    .line 590
    .end local v1    # "customView":Landroid/view/View;
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    :cond_4
    const/4 v1, 0x0

    #@59
    .local v1, "customView":Landroid/view/View;
    goto :goto_0

    #@5a
    .line 595
    .end local v1    # "customView":Landroid/view/View;
    .restart local v2    # "hasCustomView":Z
    :cond_5
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    #@5c
    invoke-virtual {v4, v5, v5}, Landroid/view/Window;->setFlags(II)V

    #@5f
    goto :goto_1

    #@60
    .line 612
    :cond_6
    const/16 v4, 0x8

    #@62
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    #@65
    goto :goto_2
.end method

.method private setupView()V
    .locals 28

    #@0
    .prologue
    .line 487
    move-object/from16 v0, p0

    #@2
    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    #@4
    const v24, 0x1020322

    #@7
    move/from16 v0, v24

    #@9
    invoke-virtual {v4, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    #@c
    move-result-object v22

    #@d
    .line 488
    .local v22, "parentPanel":Landroid/view/View;
    const v4, 0x1020323

    #@10
    move-object/from16 v0, v22

    #@12
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@15
    move-result-object v19

    #@16
    .line 489
    .local v19, "defaultTopPanel":Landroid/view/View;
    const v4, 0x102032a

    #@19
    move-object/from16 v0, v22

    #@1b
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@1e
    move-result-object v18

    #@1f
    .line 490
    .local v18, "defaultContentPanel":Landroid/view/View;
    const v4, 0x1020327

    #@22
    move-object/from16 v0, v22

    #@24
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@27
    move-result-object v17

    #@28
    .line 494
    .local v17, "defaultButtonPanel":Landroid/view/View;
    const v4, 0x102032c

    #@2b
    move-object/from16 v0, v22

    #@2d
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@30
    move-result-object v8

    #@31
    check-cast v8, Landroid/view/ViewGroup;

    #@33
    .line 495
    .local v8, "customPanel":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    #@35
    invoke-direct {v0, v8}, Lcom/android/internal/app/AlertController;->setupCustomContent(Landroid/view/ViewGroup;)V

    #@38
    .line 497
    const v4, 0x1020323

    #@3b
    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@3e
    move-result-object v16

    #@3f
    .line 498
    .local v16, "customTopPanel":Landroid/view/View;
    const v4, 0x102032a

    #@42
    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@45
    move-result-object v15

    #@46
    .line 499
    .local v15, "customContentPanel":Landroid/view/View;
    const v4, 0x1020327

    #@49
    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@4c
    move-result-object v14

    #@4d
    .line 502
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
    .line 503
    .local v6, "topPanel":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    #@59
    move-object/from16 v1, v18

    #@5b
    invoke-direct {v0, v15, v1}, Lcom/android/internal/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    #@5e
    move-result-object v7

    #@5f
    .line 504
    .local v7, "contentPanel":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    #@61
    move-object/from16 v1, v17

    #@63
    invoke-direct {v0, v14, v1}, Lcom/android/internal/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    #@66
    move-result-object v9

    #@67
    .line 506
    .local v9, "buttonPanel":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    #@69
    invoke-virtual {v0, v7}, Lcom/android/internal/app/AlertController;->setupContent(Landroid/view/ViewGroup;)V

    #@6c
    .line 507
    move-object/from16 v0, p0

    #@6e
    invoke-virtual {v0, v9}, Lcom/android/internal/app/AlertController;->setupButtons(Landroid/view/ViewGroup;)V

    #@71
    .line 508
    move-object/from16 v0, p0

    #@73
    invoke-virtual {v0, v6}, Lcom/android/internal/app/AlertController;->setupTitle(Landroid/view/ViewGroup;)V

    #@76
    .line 510
    if-eqz v8, :cond_a

    #@78
    .line 511
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getVisibility()I

    #@7b
    move-result v4

    #@7c
    const/16 v24, 0x8

    #@7e
    move/from16 v0, v24

    #@80
    if-eq v4, v0, :cond_9

    #@82
    const/4 v11, 0x1

    #@83
    .line 512
    .local v11, "hasCustomPanel":Z
    :goto_0
    if-eqz v6, :cond_c

    #@85
    .line 513
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getVisibility()I

    #@88
    move-result v4

    #@89
    const/16 v24, 0x8

    #@8b
    move/from16 v0, v24

    #@8d
    if-eq v4, v0, :cond_b

    #@8f
    const/4 v10, 0x1

    #@90
    .line 514
    .local v10, "hasTopPanel":Z
    :goto_1
    if-eqz v9, :cond_e

    #@92
    .line 515
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getVisibility()I

    #@95
    move-result v4

    #@96
    const/16 v24, 0x8

    #@98
    move/from16 v0, v24

    #@9a
    if-eq v4, v0, :cond_d

    #@9c
    const/4 v12, 0x1

    #@9d
    .line 518
    .local v12, "hasButtonPanel":Z
    :goto_2
    if-nez v12, :cond_1

    #@9f
    .line 519
    if-eqz v7, :cond_0

    #@a1
    .line 520
    const v4, 0x1020331

    #@a4
    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@a7
    move-result-object v23

    #@a8
    .line 521
    .local v23, "spacer":Landroid/view/View;
    if-eqz v23, :cond_0

    #@aa
    .line 522
    const/4 v4, 0x0

    #@ab
    move-object/from16 v0, v23

    #@ad
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    #@b0
    .line 525
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
    .line 528
    :cond_1
    if-eqz v10, :cond_10

    #@bd
    .line 530
    move-object/from16 v0, p0

    #@bf
    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    #@c1
    if-eqz v4, :cond_2

    #@c3
    .line 531
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
    .line 535
    :cond_2
    const/16 v20, 0x0

    #@d0
    .line 536
    .local v20, "divider":Landroid/view/View;
    move-object/from16 v0, p0

    #@d2
    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    #@d4
    if-nez v4, :cond_3

    #@d6
    move-object/from16 v0, p0

    #@d8
    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    #@da
    if-eqz v4, :cond_f

    #@dc
    .line 537
    :cond_3
    if-nez v11, :cond_4

    #@de
    .line 538
    const v4, 0x1020334

    #@e1
    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@e4
    move-result-object v20

    #@e5
    .line 540
    .end local v20    # "divider":Landroid/view/View;
    :cond_4
    if-nez v20, :cond_5

    #@e7
    .line 541
    const v4, 0x1020326

    #@ea
    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@ed
    move-result-object v20

    #@ee
    .line 548
    :cond_5
    :goto_3
    if-eqz v20, :cond_6

    #@f0
    .line 549
    const/4 v4, 0x0

    #@f1
    move-object/from16 v0, v20

    #@f3
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    #@f6
    .line 560
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    #@f8
    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    #@fa
    instance-of v4, v4, Lcom/android/internal/app/AlertController$RecycleListView;

    #@fc
    if-eqz v4, :cond_7

    #@fe
    .line 561
    move-object/from16 v0, p0

    #@100
    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    #@102
    check-cast v4, Lcom/android/internal/app/AlertController$RecycleListView;

    #@104
    invoke-virtual {v4, v10, v12}, Lcom/android/internal/app/AlertController$RecycleListView;->setHasDecor(ZZ)V

    #@107
    .line 565
    :cond_7
    if-nez v11, :cond_8

    #@109
    .line 566
    move-object/from16 v0, p0

    #@10b
    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    #@10d
    if-eqz v4, :cond_11

    #@10f
    move-object/from16 v0, p0

    #@111
    iget-object v13, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    #@113
    .line 567
    .local v13, "content":Landroid/view/View;
    :goto_5
    if-eqz v13, :cond_8

    #@115
    .line 568
    if-eqz v10, :cond_12

    #@117
    const/4 v4, 0x1

    #@118
    move/from16 v24, v4

    #@11a
    .line 569
    :goto_6
    if-eqz v12, :cond_13

    #@11c
    const/4 v4, 0x2

    #@11d
    .line 568
    :goto_7
    or-int v21, v24, v4

    #@11f
    .line 571
    .local v21, "indicators":I
    const/4 v4, 0x3

    #@120
    .line 570
    move/from16 v0, v21

    #@122
    invoke-virtual {v13, v0, v4}, Landroid/view/View;->setScrollIndicators(II)V

    #@125
    .line 575
    .end local v13    # "content":Landroid/view/View;
    .end local v21    # "indicators":I
    :cond_8
    move-object/from16 v0, p0

    #@127
    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    #@129
    .line 576
    sget-object v24, Lcom/android/internal/R$styleable;->AlertDialog:[I

    #@12b
    const/16 v25, 0x0

    #@12d
    const v26, 0x101005d

    #@130
    const/16 v27, 0x0

    #@132
    .line 575
    move-object/from16 v0, v25

    #@134
    move-object/from16 v1, v24

    #@136
    move/from16 v2, v26

    #@138
    move/from16 v3, v27

    #@13a
    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@13d
    move-result-object v5

    #@13e
    .local v5, "a":Landroid/content/res/TypedArray;
    move-object/from16 v4, p0

    #@140
    .line 577
    invoke-direct/range {v4 .. v12}, Lcom/android/internal/app/AlertController;->setBackground(Landroid/content/res/TypedArray;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZZ)V

    #@143
    .line 579
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    #@146
    .line 486
    return-void

    #@147
    .line 511
    .end local v5    # "a":Landroid/content/res/TypedArray;
    .end local v10    # "hasTopPanel":Z
    .end local v11    # "hasCustomPanel":Z
    .end local v12    # "hasButtonPanel":Z
    :cond_9
    const/4 v11, 0x0

    #@148
    .restart local v11    # "hasCustomPanel":Z
    goto/16 :goto_0

    #@14a
    .line 510
    .end local v11    # "hasCustomPanel":Z
    :cond_a
    const/4 v11, 0x0

    #@14b
    .restart local v11    # "hasCustomPanel":Z
    goto/16 :goto_0

    #@14d
    .line 513
    :cond_b
    const/4 v10, 0x0

    #@14e
    .restart local v10    # "hasTopPanel":Z
    goto/16 :goto_1

    #@150
    .line 512
    .end local v10    # "hasTopPanel":Z
    :cond_c
    const/4 v10, 0x0

    #@151
    .restart local v10    # "hasTopPanel":Z
    goto/16 :goto_1

    #@153
    .line 515
    :cond_d
    const/4 v12, 0x0

    #@154
    goto/16 :goto_2

    #@156
    .line 514
    :cond_e
    const/4 v12, 0x0

    #@157
    goto/16 :goto_2

    #@159
    .line 536
    .restart local v12    # "hasButtonPanel":Z
    .restart local v20    # "divider":Landroid/view/View;
    :cond_f
    if-nez v11, :cond_3

    #@15b
    .line 545
    const v4, 0x102032e

    #@15e
    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@161
    move-result-object v20

    #@162
    .local v20, "divider":Landroid/view/View;
    goto :goto_3

    #@163
    .line 552
    .end local v20    # "divider":Landroid/view/View;
    :cond_10
    if-eqz v7, :cond_6

    #@165
    .line 553
    const v4, 0x1020330

    #@168
    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@16b
    move-result-object v23

    #@16c
    .line 554
    .restart local v23    # "spacer":Landroid/view/View;
    if-eqz v23, :cond_6

    #@16e
    .line 555
    const/4 v4, 0x0

    #@16f
    move-object/from16 v0, v23

    #@171
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    #@174
    goto :goto_4

    #@175
    .line 566
    .end local v23    # "spacer":Landroid/view/View;
    :cond_11
    move-object/from16 v0, p0

    #@177
    iget-object v13, v0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    #@179
    goto :goto_5

    #@17a
    .line 568
    .restart local v13    # "content":Landroid/view/View;
    :cond_12
    const/4 v4, 0x0

    #@17b
    move/from16 v24, v4

    #@17d
    goto :goto_6

    #@17e
    .line 569
    :cond_13
    const/4 v4, 0x0

    #@17f
    goto :goto_7
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
    .line 176
    new-instance v0, Landroid/util/TypedValue;

    #@4
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@7
    .line 177
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@a
    move-result-object v3

    #@b
    const v4, 0x1160016

    #@e
    invoke-virtual {v3, v4, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@11
    .line 178
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
    .line 428
    packed-switch p1, :pswitch_data_0

    #@3
    .line 436
    const/4 v0, 0x0

    #@4
    return-object v0

    #@5
    .line 430
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    #@7
    return-object v0

    #@8
    .line 432
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    #@a
    return-object v0

    #@b
    .line 434
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    #@d
    return-object v0

    #@e
    .line 428
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
    .line 414
    new-instance v0, Landroid/util/TypedValue;

    #@2
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@5
    .line 415
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
    .line 416
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    #@11
    return v1
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    #@0
    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    #@2
    return-object v0
.end method

.method public installContent()V
    .locals 2

    #@0
    .prologue
    .line 251
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->selectContentView()I

    #@3
    move-result v0

    #@4
    .line 252
    .local v0, "contentView":I
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    #@6
    invoke-virtual {v1, v0}, Landroid/view/Window;->setContentView(I)V

    #@9
    .line 253
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->setupView()V

    #@c
    .line 250
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 442
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
    .line 447
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
    .line 342
    if-nez p4, :cond_0

    #@2
    if-eqz p3, :cond_0

    #@4
    .line 343
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    #@6
    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@9
    move-result-object p4

    #@a
    .line 346
    :cond_0
    packed-switch p1, :pswitch_data_0

    #@d
    .line 364
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v1, "Button does not exist"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 349
    :pswitch_0
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    #@18
    .line 350
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    #@1a
    .line 340
    :goto_0
    return-void

    #@1b
    .line 354
    :pswitch_1
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    #@1d
    .line 355
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    #@1f
    goto :goto_0

    #@20
    .line 359
    :pswitch_2
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    #@22
    .line 360
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    #@24
    goto :goto_0

    #@25
    .line 346
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
    .line 324
    iput p1, p0, Lcom/android/internal/app/AlertController;->mButtonPanelLayoutHint:I

    #@2
    .line 323
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0
    .param p1, "customTitleView"    # Landroid/view/View;

    #@0
    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    #@2
    .line 277
    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .param p1, "resId"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 375
    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    #@4
    .line 376
    iput p1, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    #@6
    .line 378
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 379
    if-eqz p1, :cond_1

    #@c
    .line 380
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    #@e
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    #@11
    .line 381
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    #@13
    iget v1, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    #@15
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    #@18
    .line 374
    :cond_0
    :goto_0
    return-void

    #@19
    .line 383
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    #@1b
    const/16 v1, 0x8

    #@1d
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    #@20
    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 394
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    #@3
    .line 395
    iput v1, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    #@5
    .line 397
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 398
    if-eqz p1, :cond_1

    #@b
    .line 399
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    #@d
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    #@10
    .line 400
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    #@12
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@15
    .line 393
    :cond_0
    :goto_0
    return-void

    #@16
    .line 402
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    #@18
    const/16 v1, 0x8

    #@1a
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    #@1d
    goto :goto_0
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 0
    .param p1, "forceInverseBackground"    # Z

    #@0
    .prologue
    .line 420
    iput-boolean p1, p0, Lcom/android/internal/app/AlertController;->mForceInverseBackground:Z

    #@2
    .line 419
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 282
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    #@2
    .line 283
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 284
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    #@8
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@b
    .line 281
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 268
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    #@2
    .line 269
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 270
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    #@8
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@b
    .line 267
    :cond_0
    return-void
.end method

.method public setView(I)V
    .locals 1
    .param p1, "layoutResId"    # I

    #@0
    .prologue
    .line 292
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    #@3
    .line 293
    iput p1, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    #@5
    .line 294
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    #@8
    .line 291
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 301
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    #@3
    .line 302
    iput v0, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    #@5
    .line 303
    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    #@7
    .line 300
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
    .line 311
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    #@2
    .line 312
    const/4 v0, 0x0

    #@3
    iput v0, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    #@5
    .line 313
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    #@8
    .line 314
    iput p2, p0, Lcom/android/internal/app/AlertController;->mViewSpacingLeft:I

    #@a
    .line 315
    iput p3, p0, Lcom/android/internal/app/AlertController;->mViewSpacingTop:I

    #@c
    .line 316
    iput p4, p0, Lcom/android/internal/app/AlertController;->mViewSpacingRight:I

    #@e
    .line 317
    iput p5, p0, Lcom/android/internal/app/AlertController;->mViewSpacingBottom:I

    #@10
    .line 310
    return-void
.end method

.method protected setupButtons(Landroid/view/ViewGroup;)V
    .locals 6
    .param p1, "buttonPanel"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/16 v5, 0x8

    #@3
    const/4 v3, 0x0

    #@4
    .line 703
    const/4 v1, 0x0

    #@5
    .line 704
    .local v1, "whichButtons":I
    const v2, 0x1020019

    #@8
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@b
    move-result-object v2

    #@c
    check-cast v2, Landroid/widget/Button;

    #@e
    iput-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    #@10
    .line 705
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    #@12
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    #@14
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@17
    .line 707
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    #@19
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_2

    #@1f
    .line 708
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    #@21
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    #@24
    .line 715
    :goto_0
    const v2, 0x102001a

    #@27
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@2a
    move-result-object v2

    #@2b
    check-cast v2, Landroid/widget/Button;

    #@2d
    iput-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    #@2f
    .line 716
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    #@31
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    #@33
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@36
    .line 718
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    #@38
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3b
    move-result v2

    #@3c
    if-eqz v2, :cond_3

    #@3e
    .line 719
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    #@40
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    #@43
    .line 727
    :goto_1
    const v2, 0x102001b

    #@46
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@49
    move-result-object v2

    #@4a
    check-cast v2, Landroid/widget/Button;

    #@4c
    iput-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    #@4e
    .line 728
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    #@50
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    #@52
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@55
    .line 730
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    #@57
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@5a
    move-result v2

    #@5b
    if-eqz v2, :cond_4

    #@5d
    .line 731
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    #@5f
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    #@62
    .line 739
    :goto_2
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    #@64
    invoke-static {v2}, Lcom/android/internal/app/AlertController;->shouldCenterSingleButton(Landroid/content/Context;)Z

    #@67
    move-result v2

    #@68
    if-eqz v2, :cond_0

    #@6a
    .line 744
    if-ne v1, v0, :cond_5

    #@6c
    .line 745
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    #@6e
    invoke-direct {p0, v2}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    #@71
    .line 753
    :cond_0
    :goto_3
    if-eqz v1, :cond_7

    #@73
    .line 754
    .local v0, "hasButtons":Z
    :goto_4
    if-nez v0, :cond_1

    #@75
    .line 755
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    #@78
    .line 699
    :cond_1
    return-void

    #@79
    .line 710
    .end local v0    # "hasButtons":Z
    :cond_2
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    #@7b
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    #@7d
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    #@80
    .line 711
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    #@82
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    #@85
    .line 712
    const/4 v1, 0x1

    #@86
    goto :goto_0

    #@87
    .line 721
    :cond_3
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    #@89
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    #@8b
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    #@8e
    .line 722
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    #@90
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    #@93
    .line 724
    or-int/lit8 v1, v1, 0x2

    #@95
    goto :goto_1

    #@96
    .line 733
    :cond_4
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    #@98
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    #@9a
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    #@9d
    .line 734
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    #@9f
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    #@a2
    .line 736
    or-int/lit8 v1, v1, 0x4

    #@a4
    goto :goto_2

    #@a5
    .line 701
    :cond_5
    const/4 v2, 0x2

    #@a6
    .line 746
    if-ne v1, v2, :cond_6

    #@a8
    .line 747
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    #@aa
    invoke-direct {p0, v2}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    #@ad
    goto :goto_3

    #@ae
    .line 702
    :cond_6
    const/4 v2, 0x4

    #@af
    .line 748
    if-ne v1, v2, :cond_0

    #@b1
    .line 749
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    #@b3
    invoke-direct {p0, v2}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    #@b6
    goto :goto_3

    #@b7
    :cond_7
    move v0, v3

    #@b8
    .line 753
    goto :goto_4
.end method

.method protected setupContent(Landroid/view/ViewGroup;)V
    .locals 6
    .param p1, "contentPanel"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    const/16 v5, 0x8

    #@2
    const/4 v4, -0x1

    #@3
    .line 663
    const v2, 0x102032b

    #@6
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@9
    move-result-object v2

    #@a
    check-cast v2, Landroid/widget/ScrollView;

    #@c
    iput-object v2, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    #@e
    .line 664
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    #@10
    const/4 v3, 0x0

    #@11
    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setFocusable(Z)V

    #@14
    .line 667
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
    .line 668
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    #@21
    if-nez v2, :cond_0

    #@23
    .line 669
    return-void

    #@24
    .line 672
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    #@26
    if-eqz v2, :cond_1

    #@28
    .line 673
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    #@2a
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    #@2c
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@2f
    .line 662
    :goto_0
    return-void

    #@30
    .line 675
    :cond_1
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    #@32
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    #@35
    .line 676
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    #@37
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    #@39
    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    #@3c
    .line 678
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    #@3e
    if-eqz v2, :cond_2

    #@40
    .line 679
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    #@42
    invoke-virtual {v2}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    #@45
    move-result-object v1

    #@46
    check-cast v1, Landroid/view/ViewGroup;

    #@48
    .line 680
    .local v1, "scrollParent":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    #@4a
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    #@4d
    move-result v0

    #@4e
    .line 681
    .local v0, "childIndex":I
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    #@51
    .line 682
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    #@53
    .line 683
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    #@55
    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@58
    .line 682
    invoke-virtual {v1, v2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@5b
    goto :goto_0

    #@5c
    .line 685
    .end local v0    # "childIndex":I
    .end local v1    # "scrollParent":Landroid/view/ViewGroup;
    :cond_2
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    #@5f
    goto :goto_0
.end method

.method protected setupTitle(Landroid/view/ViewGroup;)V
    .locals 9
    .param p1, "topPanel"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    const v5, 0x1020324

    #@3
    const/4 v0, 0x0

    #@4
    const/16 v8, 0x8

    #@6
    .line 617
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    #@8
    if-eqz v3, :cond_0

    #@a
    iget-boolean v3, p0, Lcom/android/internal/app/AlertController;->mShowTitle:Z

    #@c
    if-eqz v3, :cond_0

    #@e
    .line 619
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    #@10
    .line 620
    const/4 v3, -0x1

    #@11
    const/4 v4, -0x2

    #@12
    .line 619
    invoke-direct {v1, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@15
    .line 622
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    #@17
    invoke-virtual {p1, v3, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@1a
    .line 625
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    #@1c
    invoke-virtual {v3, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    #@1f
    move-result-object v2

    #@20
    .line 626
    .local v2, "titleTemplate":Landroid/view/View;
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    #@23
    .line 616
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "titleTemplate":Landroid/view/View;
    :goto_0
    return-void

    #@24
    .line 628
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    #@26
    const v4, 0x1020006

    #@29
    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    #@2c
    move-result-object v3

    #@2d
    check-cast v3, Landroid/widget/ImageView;

    #@2f
    iput-object v3, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    #@31
    .line 630
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    #@33
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@36
    move-result v3

    #@37
    if-eqz v3, :cond_1

    #@39
    .line 631
    .local v0, "hasTextTitle":Z
    :goto_1
    if-eqz v0, :cond_4

    #@3b
    iget-boolean v3, p0, Lcom/android/internal/app/AlertController;->mShowTitle:Z

    #@3d
    if-eqz v3, :cond_4

    #@3f
    .line 633
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    #@41
    const v4, 0x1020325

    #@44
    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    #@47
    move-result-object v3

    #@48
    check-cast v3, Landroid/widget/TextView;

    #@4a
    iput-object v3, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    #@4c
    .line 634
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    #@4e
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    #@50
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@53
    .line 639
    iget v3, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    #@55
    if-eqz v3, :cond_2

    #@57
    .line 640
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    #@59
    iget v4, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    #@5b
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    #@5e
    goto :goto_0

    #@5f
    .line 630
    .end local v0    # "hasTextTitle":Z
    :cond_1
    const/4 v0, 0x1

    #@60
    goto :goto_1

    #@61
    .line 641
    .restart local v0    # "hasTextTitle":Z
    :cond_2
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    #@63
    if-eqz v3, :cond_3

    #@65
    .line 642
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    #@67
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    #@69
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@6c
    goto :goto_0

    #@6d
    .line 646
    :cond_3
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    #@6f
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    #@71
    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingLeft()I

    #@74
    move-result v4

    #@75
    .line 647
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    #@77
    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingTop()I

    #@7a
    move-result v5

    #@7b
    .line 648
    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    #@7d
    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingRight()I

    #@80
    move-result v6

    #@81
    .line 649
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    #@83
    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingBottom()I

    #@86
    move-result v7

    #@87
    .line 646
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    #@8a
    .line 650
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    #@8c
    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    #@8f
    goto :goto_0

    #@90
    .line 654
    :cond_4
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    #@92
    invoke-virtual {v3, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    #@95
    move-result-object v2

    #@96
    .line 655
    .restart local v2    # "titleTemplate":Landroid/view/View;
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    #@99
    .line 656
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    #@9b
    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    #@9e
    .line 657
    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    #@a1
    goto :goto_0
.end method
