.class public Lcom/android/internal/app/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/AlertController$ButtonHandler;,
        Lcom/android/internal/app/AlertController$AlertParams;,
        Lcom/android/internal/app/AlertController$RecycleListView;,
        Lcom/android/internal/app/AlertController$CheckedItemAdapter;
    }
.end annotation


# static fields
.field public static final greylist-max-o MICRO:I = 0x1

.field private static final blacklist WEAR_MATERIAL3_ALERTDIALOG:J = 0x169ca792L

.field private static blacklist sUseWearMaterial3Style:Z


# instance fields
.field private greylist-max-o mAdapter:Landroid/widget/ListAdapter;

.field private greylist-max-o mAlertDialogLayout:I

.field private final greylist-max-o mButtonHandler:Landroid/view/View$OnClickListener;

.field private greylist-max-o mButtonNegative:Landroid/widget/Button;

.field private greylist-max-o mButtonNegativeMessage:Landroid/os/Message;

.field private greylist-max-o mButtonNegativeText:Ljava/lang/CharSequence;

.field private greylist-max-o mButtonNeutral:Landroid/widget/Button;

.field private greylist-max-o mButtonNeutralMessage:Landroid/os/Message;

.field private greylist-max-o mButtonNeutralText:Ljava/lang/CharSequence;

.field private greylist-max-o mButtonPanelLayoutHint:I

.field private greylist-max-o mButtonPanelSideLayout:I

.field private greylist-max-o mButtonPositive:Landroid/widget/Button;

.field private greylist-max-o mButtonPositiveMessage:Landroid/os/Message;

.field private greylist-max-o mButtonPositiveText:Ljava/lang/CharSequence;

.field private greylist-max-o mCheckedItem:I

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private greylist mCustomTitleView:Landroid/view/View;

.field private final greylist-max-o mDialogInterface:Landroid/content/DialogInterface;

.field private greylist mForceInverseBackground:Z

.field private greylist-max-o mHandler:Landroid/os/Handler;

.field private greylist-max-o mIcon:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mIconId:I

.field private greylist-max-o mIconView:Landroid/widget/ImageView;

.field private greylist-max-o mListItemLayout:I

.field private greylist-max-o mListLayout:I

.field protected greylist-max-o mListView:Landroid/widget/ListView;

.field protected greylist-max-o mMessage:Ljava/lang/CharSequence;

.field private greylist-max-o mMessageHyphenationFrequency:Ljava/lang/Integer;

.field private greylist-max-o mMessageMovementMethod:Landroid/text/method/MovementMethod;

.field protected greylist-max-o mMessageView:Landroid/widget/TextView;

.field private greylist-max-o mMultiChoiceItemLayout:I

.field protected greylist-max-o mScrollView:Landroid/widget/ScrollView;

.field private greylist-max-o mShowTitle:Z

.field private greylist-max-o mSingleChoiceItemLayout:I

.field private greylist mTitle:Ljava/lang/CharSequence;

.field private greylist-max-o mTitleView:Landroid/widget/TextView;

.field private greylist mView:Landroid/view/View;

.field private greylist-max-o mViewLayoutResId:I

.field private greylist-max-o mViewSpacingBottom:I

.field private greylist-max-o mViewSpacingLeft:I

.field private greylist-max-o mViewSpacingRight:I

.field private greylist-max-o mViewSpacingSpecified:Z

.field private greylist-max-o mViewSpacingTop:I

.field protected final greylist-max-o mWindow:Landroid/view/Window;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmButtonNegative(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmButtonNegativeMessage(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmButtonNeutral(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmButtonNeutralMessage(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmButtonPositive(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmButtonPositiveMessage(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDialogInterface(Lcom/android/internal/app/AlertController;)Landroid/content/DialogInterface;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/android/internal/app/AlertController;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListItemLayout(Lcom/android/internal/app/AlertController;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/app/AlertController;->mListItemLayout:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListLayout(Lcom/android/internal/app/AlertController;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/app/AlertController;->mListLayout:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMultiChoiceItemLayout(Lcom/android/internal/app/AlertController;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/app/AlertController;->mMultiChoiceItemLayout:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSingleChoiceItemLayout(Lcom/android/internal/app/AlertController;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/app/AlertController;->mSingleChoiceItemLayout:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAdapter(Lcom/android/internal/app/AlertController;Landroid/widget/ListAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCheckedItem(Lcom/android/internal/app/AlertController;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    return-void
.end method

.method protected constructor greylist <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Landroid/content/DialogInterface;
    .param p3, "window"    # Landroid/view/Window;

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 113
    iput v0, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    .line 130
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    .line 141
    iput v0, p0, Lcom/android/internal/app/AlertController;->mButtonPanelLayoutHint:I

    .line 145
    new-instance v1, Lcom/android/internal/app/AlertController$1;

    invoke-direct {v1, p0}, Lcom/android/internal/app/AlertController$1;-><init>(Lcom/android/internal/app/AlertController;)V

    iput-object v1, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 218
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    .line 219
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    .line 220
    iput-object p3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    .line 221
    new-instance v1, Lcom/android/internal/app/AlertController$ButtonHandler;

    invoke-direct {v1, p2}, Lcom/android/internal/app/AlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v1, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    .line 223
    sget-object v1, Lcom/android/internal/R$styleable;->AlertDialog:[I

    .line 224
    invoke-direct {p0, p1}, Lcom/android/internal/app/AlertController;->getAlertDialogDefStyleAttr(Landroid/content/Context;)I

    move-result v2

    .line 225
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->getAlertDialogDefStyleRes()I

    move-result v3

    .line 223
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 227
    .local v1, "a":Landroid/content/res/TypedArray;
    const/16 v2, 0xa

    const v3, 0x109002d

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    .line 229
    const/16 v2, 0xb

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/AlertController;->mButtonPanelSideLayout:I

    .line 231
    const/16 v0, 0xf

    const v2, 0x109013f

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/AlertController;->mListLayout:I

    .line 234
    const/16 v0, 0x10

    const v2, 0x1090013

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/AlertController;->mMultiChoiceItemLayout:I

    .line 237
    const/16 v0, 0x15

    const v2, 0x1090012

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/AlertController;->mSingleChoiceItemLayout:I

    .line 240
    const/16 v0, 0xe

    const v2, 0x1090011

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/AlertController;->mListItemLayout:I

    .line 243
    const/16 v0, 0x14

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mShowTitle:Z

    .line 245
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 248
    invoke-virtual {p3, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 249
    return-void
.end method

.method static greylist-max-o canTextInput(Landroid/view/View;)Z
    .registers 6
    .param p0, "v"    # Landroid/view/View;

    .line 276
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 277
    return v1

    .line 280
    :cond_8
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_e

    .line 281
    return v2

    .line 284
    :cond_e
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    .line 285
    .local v0, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 286
    .local v3, "i":I
    :cond_15
    if-lez v3, :cond_24

    .line 287
    add-int/lit8 v3, v3, -0x1

    .line 288
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 289
    invoke-static {p0}, Lcom/android/internal/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 290
    return v1

    .line 294
    :cond_24
    return v2
.end method

.method private greylist-max-o centerButton(Landroid/widget/Button;)V
    .registers 7
    .param p1, "button"    # Landroid/widget/Button;

    .line 876
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 877
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 878
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 879
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 880
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v2, 0x10203bb

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 881
    .local v1, "leftSpacer":Landroid/view/View;
    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    .line 882
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 884
    :cond_1f
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v4, 0x10204ce

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 885
    .local v3, "rightSpacer":Landroid/view/View;
    if-eqz v3, :cond_2d

    .line 886
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 888
    :cond_2d
    return-void
.end method

.method public static final greylist-max-o create(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)Lcom/android/internal/app/AlertController;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "di"    # Landroid/content/DialogInterface;
    .param p2, "window"    # Landroid/view/Window;

    .line 202
    sget-object v0, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const v1, 0x101005d

    const v2, 0x1030223

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 205
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 206
    .local v1, "controllerType":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 208
    packed-switch v1, :pswitch_data_26

    .line 212
    new-instance v2, Lcom/android/internal/app/AlertController;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/internal/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    return-object v2

    .line 210
    :pswitch_20
    new-instance v2, Lcom/android/internal/app/MicroAlertController;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/internal/app/MicroAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    return-object v2

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_20
    .end packed-switch
.end method

.method private blacklist getAlertDialogDefStyleAttr(Landroid/content/Context;)I
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 252
    invoke-static {p1}, Lcom/android/internal/app/AlertController;->useWearMaterial3Style(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/app/AlertController;->sUseWearMaterial3Style:Z

    .line 253
    sget-boolean v0, Lcom/android/internal/app/AlertController;->sUseWearMaterial3Style:Z

    if-eqz v0, :cond_c

    .line 254
    const/4 v0, 0x0

    return v0

    .line 256
    :cond_c
    const v0, 0x101005d

    return v0
.end method

.method private blacklist getAlertDialogDefStyleRes()I
    .registers 2

    .line 260
    sget-boolean v0, Lcom/android/internal/app/AlertController;->sUseWearMaterial3Style:Z

    if-eqz v0, :cond_8

    .line 261
    const v0, 0x10302ff

    return v0

    .line 263
    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private static greylist-max-o manageScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .registers 6
    .param p0, "v"    # Landroid/view/View;
    .param p1, "upIndicator"    # Landroid/view/View;
    .param p2, "downIndicator"    # Landroid/view/View;

    .line 807
    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eqz p1, :cond_11

    .line 808
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-eqz v2, :cond_d

    move v2, v0

    goto :goto_e

    :cond_d
    move v2, v1

    :goto_e
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 810
    :cond_11
    if-eqz p2, :cond_1f

    .line 811
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    goto :goto_1c

    :cond_1b
    move v0, v1

    :goto_1c
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 813
    :cond_1f
    return-void
.end method

.method private blacklist requestFocusForContent(Landroid/view/View;)Z
    .registers 5
    .param p1, "content"    # Landroid/view/View;

    .line 670
    const/4 v0, 0x1

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 671
    return v0

    .line 674
    :cond_a
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    .line 675
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 676
    return v0

    .line 679
    :cond_15
    return v2
.end method

.method private blacklist requestFocusForDefaultButton()V
    .registers 2

    .line 683
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    .line 684
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_29

    .line 685
    :cond_e
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1c

    .line 686
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_29

    .line 687
    :cond_1c
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_29

    .line 688
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 690
    :cond_29
    :goto_29
    return-void
.end method

.method private greylist-max-o resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    .registers 5
    .param p1, "customPanel"    # Landroid/view/View;
    .param p2, "defaultPanel"    # Landroid/view/View;

    .line 541
    if-nez p1, :cond_11

    .line 543
    instance-of v0, p2, Landroid/view/ViewStub;

    if-eqz v0, :cond_d

    .line 544
    move-object v0, p2

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    .line 547
    :cond_d
    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0

    .line 551
    :cond_11
    if-eqz p2, :cond_21

    .line 552
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 553
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_21

    .line 554
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 559
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_21
    instance-of v0, p1, Landroid/view/ViewStub;

    if-eqz v0, :cond_2c

    .line 560
    move-object v0, p1

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    .line 563
    :cond_2c
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method private greylist-max-o selectContentView()I
    .registers 3

    .line 310
    iget v0, p0, Lcom/android/internal/app/AlertController;->mButtonPanelSideLayout:I

    if-nez v0, :cond_7

    .line 311
    iget v0, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    return v0

    .line 313
    :cond_7
    iget v0, p0, Lcom/android/internal/app/AlertController;->mButtonPanelLayoutHint:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 314
    iget v0, p0, Lcom/android/internal/app/AlertController;->mButtonPanelSideLayout:I

    return v0

    .line 317
    :cond_f
    iget v0, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    return v0
.end method

.method private greylist-max-o setBackground(Landroid/content/res/TypedArray;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZZ)V
    .registers 31
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "topPanel"    # Landroid/view/View;
    .param p3, "contentPanel"    # Landroid/view/View;
    .param p4, "customPanel"    # Landroid/view/View;
    .param p5, "buttonPanel"    # Landroid/view/View;
    .param p6, "hasTitle"    # Z
    .param p7, "hasCustomView"    # Z
    .param p8, "hasButtons"    # Z

    .line 892
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 893
    .local v2, "fullDark":I
    const/4 v3, 0x0

    .line 894
    .local v3, "topDark":I
    const/4 v4, 0x0

    .line 895
    .local v4, "centerDark":I
    const/4 v5, 0x0

    .line 896
    .local v5, "bottomDark":I
    const/4 v6, 0x0

    .line 897
    .local v6, "fullBright":I
    const/4 v7, 0x0

    .line 898
    .local v7, "topBright":I
    const/4 v8, 0x0

    .line 899
    .local v8, "centerBright":I
    const/4 v9, 0x0

    .line 900
    .local v9, "bottomBright":I
    const/4 v10, 0x0

    .line 904
    .local v10, "bottomMedium":I
    const/16 v11, 0x11

    const/4 v12, 0x1

    invoke-virtual {v1, v11, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 906
    .local v11, "needsDefaultBackgrounds":Z
    if-eqz v11, :cond_31

    .line 907
    const v2, 0x108089f

    .line 908
    const v3, 0x10808ad

    .line 909
    const v4, 0x108089c

    .line 910
    const v5, 0x1080899

    .line 911
    const v6, 0x108089e

    .line 912
    const v7, 0x10808ac

    .line 913
    const v8, 0x108089b

    .line 914
    const v9, 0x1080898

    .line 915
    const v10, 0x108089a

    .line 918
    :cond_31
    const/4 v13, 0x5

    invoke-virtual {v1, v13, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 919
    invoke-virtual {v1, v12, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 920
    const/4 v13, 0x6

    invoke-virtual {v1, v13, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 921
    const/4 v13, 0x2

    invoke-virtual {v1, v13, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 931
    const/4 v13, 0x4

    new-array v14, v13, [Landroid/view/View;

    .line 932
    .local v14, "views":[Landroid/view/View;
    new-array v15, v13, [Z

    .line 933
    .local v15, "light":[Z
    const/16 v16, 0x0

    .line 934
    .local v16, "lastView":Landroid/view/View;
    const/16 v17, 0x0

    .line 936
    .local v17, "lastLight":Z
    const/16 v18, 0x0

    .line 937
    .local v18, "pos":I
    move/from16 v19, v12

    const/4 v12, 0x0

    if-eqz p6, :cond_5a

    .line 938
    aput-object p2, v14, v18

    .line 939
    aput-boolean v12, v15, v18

    .line 940
    add-int/lit8 v18, v18, 0x1

    .line 948
    :cond_5a
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_64

    const/4 v12, 0x0

    goto :goto_66

    :cond_64
    move-object/from16 v12, p3

    :goto_66
    aput-object v12, v14, v18

    .line 949
    iget-object v12, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v12, :cond_6f

    move/from16 v12, v19

    goto :goto_70

    :cond_6f
    const/4 v12, 0x0

    :goto_70
    aput-boolean v12, v15, v18

    .line 950
    add-int/lit8 v18, v18, 0x1

    .line 952
    if-eqz p7, :cond_7e

    .line 953
    aput-object p4, v14, v18

    .line 954
    iget-boolean v12, v0, Lcom/android/internal/app/AlertController;->mForceInverseBackground:Z

    aput-boolean v12, v15, v18

    .line 955
    add-int/lit8 v18, v18, 0x1

    .line 958
    :cond_7e
    if-eqz p8, :cond_84

    .line 959
    aput-object p5, v14, v18

    .line 960
    aput-boolean v19, v15, v18

    .line 963
    :cond_84
    const/4 v12, 0x0

    .line 964
    .local v12, "setView":Z
    const/16 v18, 0x0

    move/from16 v13, v18

    move/from16 v18, v3

    move v3, v13

    move-object/from16 v13, v16

    .end local v16    # "lastView":Landroid/view/View;
    .local v3, "pos":I
    .local v13, "lastView":Landroid/view/View;
    .local v18, "topDark":I
    :goto_8e
    move/from16 v20, v4

    .end local v4    # "centerDark":I
    .local v20, "centerDark":I
    array-length v4, v14

    if-ge v3, v4, :cond_c4

    .line 965
    aget-object v4, v14, v3

    .line 966
    .local v4, "v":Landroid/view/View;
    if-nez v4, :cond_9a

    .line 967
    move/from16 v21, v3

    goto :goto_bf

    .line 970
    :cond_9a
    if-eqz v13, :cond_b7

    .line 971
    if-nez v12, :cond_aa

    .line 972
    move/from16 v21, v3

    if-eqz v17, :cond_a4

    move v3, v7

    goto :goto_a6

    :cond_a4
    move/from16 v3, v18

    .end local v3    # "pos":I
    .local v21, "pos":I
    :goto_a6
    invoke-virtual {v13, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_b5

    .line 974
    .end local v21    # "pos":I
    .restart local v3    # "pos":I
    :cond_aa
    move/from16 v21, v3

    .end local v3    # "pos":I
    .restart local v21    # "pos":I
    if-eqz v17, :cond_b0

    move v3, v8

    goto :goto_b2

    :cond_b0
    move/from16 v3, v20

    :goto_b2
    invoke-virtual {v13, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 976
    :goto_b5
    const/4 v12, 0x1

    goto :goto_b9

    .line 970
    .end local v21    # "pos":I
    .restart local v3    # "pos":I
    :cond_b7
    move/from16 v21, v3

    .line 979
    .end local v3    # "pos":I
    .restart local v21    # "pos":I
    :goto_b9
    move-object v3, v4

    .line 980
    .end local v13    # "lastView":Landroid/view/View;
    .local v3, "lastView":Landroid/view/View;
    aget-boolean v13, v15, v21

    move/from16 v17, v13

    move-object v13, v3

    .line 964
    .end local v3    # "lastView":Landroid/view/View;
    .end local v4    # "v":Landroid/view/View;
    .restart local v13    # "lastView":Landroid/view/View;
    :goto_bf
    add-int/lit8 v3, v21, 0x1

    move/from16 v4, v20

    .end local v21    # "pos":I
    .local v3, "pos":I
    goto :goto_8e

    .line 983
    :cond_c4
    move/from16 v21, v3

    .end local v3    # "pos":I
    .restart local v21    # "pos":I
    if-eqz v13, :cond_fa

    .line 984
    if-eqz v12, :cond_e8

    .line 985
    const/4 v3, 0x7

    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 986
    const/16 v3, 0x8

    invoke-virtual {v1, v3, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 987
    const/4 v3, 0x3

    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 991
    nop

    .line 992
    if-eqz v17, :cond_e3

    if-eqz p8, :cond_e1

    move v3, v10

    goto :goto_e4

    :cond_e1
    move v3, v9

    goto :goto_e4

    :cond_e3
    move v3, v5

    .line 991
    :goto_e4
    invoke-virtual {v13, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_fa

    .line 994
    :cond_e8
    const/4 v3, 0x4

    invoke-virtual {v1, v3, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 995
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 997
    if-eqz v17, :cond_f6

    move v3, v6

    goto :goto_f7

    :cond_f6
    move v3, v2

    :goto_f7
    invoke-virtual {v13, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1001
    :cond_fa
    :goto_fa
    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    .line 1002
    .local v3, "listView":Landroid/widget/ListView;
    if-eqz v3, :cond_122

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_122

    .line 1003
    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1004
    iget v4, v0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    .line 1005
    .local v4, "checkedItem":I
    const/4 v0, -0x1

    if-le v4, v0, :cond_11f

    .line 1006
    move/from16 v0, v19

    invoke-virtual {v3, v4, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1007
    nop

    .line 1008
    const/16 v0, 0x13

    move/from16 v16, v2

    const/4 v2, 0x0

    .end local v2    # "fullDark":I
    .local v16, "fullDark":I
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 1007
    invoke-virtual {v3, v4, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_124

    .line 1005
    .end local v16    # "fullDark":I
    .restart local v2    # "fullDark":I
    :cond_11f
    move/from16 v16, v2

    .end local v2    # "fullDark":I
    .restart local v16    # "fullDark":I
    goto :goto_124

    .line 1002
    .end local v4    # "checkedItem":I
    .end local v16    # "fullDark":I
    .restart local v2    # "fullDark":I
    :cond_122
    move/from16 v16, v2

    .line 1011
    .end local v2    # "fullDark":I
    .restart local v16    # "fullDark":I
    :goto_124
    return-void
.end method

.method private greylist-max-o setupCustomContent(Landroid/view/ViewGroup;)V
    .registers 9
    .param p1, "customPanel"    # Landroid/view/ViewGroup;

    .line 694
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 695
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .local v0, "customView":Landroid/view/View;
    goto :goto_1a

    .line 696
    .end local v0    # "customView":Landroid/view/View;
    :cond_8
    iget v0, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    if-eqz v0, :cond_19

    .line 697
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 698
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget v2, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 699
    .local v0, "customView":Landroid/view/View;
    goto :goto_1a

    .line 700
    .end local v0    # "customView":Landroid/view/View;
    :cond_19
    const/4 v0, 0x0

    .line 703
    .restart local v0    # "customView":Landroid/view/View;
    :goto_1a
    if-eqz v0, :cond_1d

    const/4 v1, 0x1

    .line 704
    .local v1, "hasCustomView":Z
    :cond_1d
    if-eqz v1, :cond_25

    invoke-static {v0}, Lcom/android/internal/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 705
    :cond_25
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const/high16 v3, 0x20000

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 709
    :cond_2c
    if-eqz v1, :cond_5f

    .line 710
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v3, 0x102002b

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 711
    .local v2, "custom":Landroid/widget/FrameLayout;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 713
    iget-boolean v3, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    if-eqz v3, :cond_51

    .line 714
    iget v3, p0, Lcom/android/internal/app/AlertController;->mViewSpacingLeft:I

    iget v4, p0, Lcom/android/internal/app/AlertController;->mViewSpacingTop:I

    iget v5, p0, Lcom/android/internal/app/AlertController;->mViewSpacingRight:I

    iget v6, p0, Lcom/android/internal/app/AlertController;->mViewSpacingBottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 718
    :cond_51
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v3, :cond_5e

    .line 719
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 721
    .end local v2    # "custom":Landroid/widget/FrameLayout;
    :cond_5e
    goto :goto_64

    .line 722
    :cond_5f
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 724
    :goto_64
    return-void
.end method

.method private greylist-max-o setupView()V
    .registers 20

    .line 567
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v2, 0x1020460

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 568
    .local v9, "parentPanel":Landroid/view/View;
    const v1, 0x10205aa

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 569
    .local v10, "defaultTopPanel":Landroid/view/View;
    const v2, 0x1020295

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 570
    .local v11, "defaultContentPanel":Landroid/view/View;
    const v3, 0x1020258

    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 574
    .local v12, "defaultButtonPanel":Landroid/view/View;
    const v4, 0x10202bc

    invoke-virtual {v9, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 575
    .local v4, "customPanel":Landroid/view/ViewGroup;
    invoke-direct {v0, v4}, Lcom/android/internal/app/AlertController;->setupCustomContent(Landroid/view/ViewGroup;)V

    .line 577
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 578
    .local v13, "customTopPanel":Landroid/view/View;
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 579
    .local v14, "customContentPanel":Landroid/view/View;
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 582
    .local v15, "customButtonPanel":Landroid/view/View;
    invoke-direct {v0, v13, v10}, Lcom/android/internal/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v2

    .line 583
    .local v2, "topPanel":Landroid/view/ViewGroup;
    invoke-direct {v0, v14, v11}, Lcom/android/internal/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v3

    .line 584
    .local v3, "contentPanel":Landroid/view/ViewGroup;
    invoke-direct {v0, v15, v12}, Lcom/android/internal/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v5

    .line 586
    .local v5, "buttonPanel":Landroid/view/ViewGroup;
    invoke-virtual {v0, v3}, Lcom/android/internal/app/AlertController;->setupContent(Landroid/view/ViewGroup;)V

    .line 587
    invoke-virtual {v0, v5}, Lcom/android/internal/app/AlertController;->setupButtons(Landroid/view/ViewGroup;)V

    .line 588
    invoke-virtual {v0, v2}, Lcom/android/internal/app/AlertController;->setupTitle(Landroid/view/ViewGroup;)V

    .line 590
    const/16 v1, 0x8

    if-eqz v4, :cond_59

    .line 591
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v8

    if-eq v8, v1, :cond_59

    const/4 v8, 0x1

    goto :goto_5a

    :cond_59
    const/4 v8, 0x0

    .line 592
    .local v8, "hasCustomPanel":Z
    :goto_5a
    if-eqz v2, :cond_64

    .line 593
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v6

    if-eq v6, v1, :cond_64

    const/4 v6, 0x1

    goto :goto_65

    :cond_64
    const/4 v6, 0x0

    .line 594
    .local v6, "hasTopPanel":Z
    :goto_65
    if-eqz v5, :cond_6f

    .line 595
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v7

    if-eq v7, v1, :cond_6f

    const/4 v1, 0x1

    goto :goto_70

    :cond_6f
    const/4 v1, 0x0

    .line 597
    .local v1, "hasButtonPanel":Z
    :goto_70
    invoke-virtual {v9}, Landroid/view/View;->isInTouchMode()Z

    move-result v7

    if-nez v7, :cond_84

    .line 598
    if-eqz v8, :cond_7a

    move-object v7, v4

    goto :goto_7b

    :cond_7a
    move-object v7, v3

    .line 599
    .local v7, "content":Landroid/view/View;
    :goto_7b
    invoke-direct {v0, v7}, Lcom/android/internal/app/AlertController;->requestFocusForContent(Landroid/view/View;)Z

    move-result v17

    if-nez v17, :cond_84

    .line 600
    invoke-direct {v0}, Lcom/android/internal/app/AlertController;->requestFocusForDefaultButton()V

    .line 605
    .end local v7    # "content":Landroid/view/View;
    :cond_84
    if-nez v1, :cond_a4

    .line 606
    if-eqz v3, :cond_9b

    .line 607
    const v7, 0x1020589

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 608
    .local v7, "spacer":Landroid/view/View;
    if-eqz v7, :cond_98

    .line 609
    move-object/from16 v17, v4

    const/4 v4, 0x0

    .end local v4    # "customPanel":Landroid/view/ViewGroup;
    .local v17, "customPanel":Landroid/view/ViewGroup;
    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9d

    .line 608
    .end local v17    # "customPanel":Landroid/view/ViewGroup;
    .restart local v4    # "customPanel":Landroid/view/ViewGroup;
    :cond_98
    move-object/from16 v17, v4

    .end local v4    # "customPanel":Landroid/view/ViewGroup;
    .restart local v17    # "customPanel":Landroid/view/ViewGroup;
    goto :goto_9d

    .line 606
    .end local v7    # "spacer":Landroid/view/View;
    .end local v17    # "customPanel":Landroid/view/ViewGroup;
    .restart local v4    # "customPanel":Landroid/view/ViewGroup;
    :cond_9b
    move-object/from16 v17, v4

    .line 612
    .end local v4    # "customPanel":Landroid/view/ViewGroup;
    .restart local v17    # "customPanel":Landroid/view/ViewGroup;
    :goto_9d
    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/view/Window;->setCloseOnTouchOutsideIfNotSet(Z)V

    goto :goto_a7

    .line 605
    .end local v17    # "customPanel":Landroid/view/ViewGroup;
    .restart local v4    # "customPanel":Landroid/view/ViewGroup;
    :cond_a4
    move-object/from16 v17, v4

    const/4 v7, 0x1

    .line 615
    .end local v4    # "customPanel":Landroid/view/ViewGroup;
    .restart local v17    # "customPanel":Landroid/view/ViewGroup;
    :goto_a7
    if-eqz v6, :cond_df

    .line 617
    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v4, :cond_b2

    .line 618
    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v4, v7}, Landroid/widget/ScrollView;->setClipToPadding(Z)V

    .line 622
    :cond_b2
    const/4 v4, 0x0

    .line 623
    .local v4, "divider":Landroid/view/View;
    iget-object v7, v0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez v7, :cond_c6

    iget-object v7, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-nez v7, :cond_c6

    if-eqz v8, :cond_be

    goto :goto_c6

    .line 632
    :cond_be
    const v7, 0x102059d

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    goto :goto_d8

    .line 624
    :cond_c6
    :goto_c6
    if-nez v8, :cond_cf

    .line 625
    const v7, 0x102059c

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 627
    :cond_cf
    if-nez v4, :cond_d8

    .line 628
    const v7, 0x102059b

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 635
    :cond_d8
    :goto_d8
    if-eqz v4, :cond_de

    .line 636
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 638
    .end local v4    # "divider":Landroid/view/View;
    :cond_de
    goto :goto_ee

    .line 639
    :cond_df
    if-eqz v3, :cond_ee

    .line 640
    const v4, 0x102058a

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 641
    .local v4, "spacer":Landroid/view/View;
    if-eqz v4, :cond_ee

    .line 642
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 647
    .end local v4    # "spacer":Landroid/view/View;
    :cond_ee
    :goto_ee
    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    instance-of v4, v4, Lcom/android/internal/app/AlertController$RecycleListView;

    if-eqz v4, :cond_fb

    .line 648
    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    check-cast v4, Lcom/android/internal/app/AlertController$RecycleListView;

    invoke-virtual {v4, v6, v1}, Lcom/android/internal/app/AlertController$RecycleListView;->setHasDecor(ZZ)V

    .line 652
    :cond_fb
    if-nez v8, :cond_120

    .line 653
    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_104

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    goto :goto_106

    :cond_104
    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    .line 654
    .local v4, "content":Landroid/view/View;
    :goto_106
    if-eqz v4, :cond_11d

    .line 655
    if-eqz v6, :cond_10d

    const/16 v16, 0x1

    goto :goto_10f

    :cond_10d
    const/16 v16, 0x0

    .line 656
    :goto_10f
    if-eqz v1, :cond_113

    const/4 v7, 0x2

    goto :goto_114

    :cond_113
    const/4 v7, 0x0

    :goto_114
    or-int v7, v16, v7

    .line 657
    .local v7, "indicators":I
    move/from16 v16, v1

    .end local v1    # "hasButtonPanel":Z
    .local v16, "hasButtonPanel":Z
    const/4 v1, 0x3

    invoke-virtual {v4, v7, v1}, Landroid/view/View;->setScrollIndicators(II)V

    goto :goto_122

    .line 654
    .end local v7    # "indicators":I
    .end local v16    # "hasButtonPanel":Z
    .restart local v1    # "hasButtonPanel":Z
    :cond_11d
    move/from16 v16, v1

    .end local v1    # "hasButtonPanel":Z
    .restart local v16    # "hasButtonPanel":Z
    goto :goto_122

    .line 652
    .end local v4    # "content":Landroid/view/View;
    .end local v16    # "hasButtonPanel":Z
    .restart local v1    # "hasButtonPanel":Z
    :cond_120
    move/from16 v16, v1

    .line 662
    .end local v1    # "hasButtonPanel":Z
    .restart local v16    # "hasButtonPanel":Z
    :goto_122
    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const v7, 0x101005d

    const/4 v0, 0x0

    move-object/from16 v18, v2

    const/4 v2, 0x0

    .end local v2    # "topPanel":Landroid/view/ViewGroup;
    .local v18, "topPanel":Landroid/view/ViewGroup;
    invoke-virtual {v1, v0, v4, v7, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 664
    .local v1, "a":Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    move v7, v8

    move/from16 v8, v16

    move-object/from16 v4, v17

    move-object/from16 v2, v18

    .end local v16    # "hasButtonPanel":Z
    .end local v17    # "customPanel":Landroid/view/ViewGroup;
    .end local v18    # "topPanel":Landroid/view/ViewGroup;
    .restart local v2    # "topPanel":Landroid/view/ViewGroup;
    .local v4, "customPanel":Landroid/view/ViewGroup;
    .local v7, "hasCustomPanel":Z
    .local v8, "hasButtonPanel":Z
    invoke-direct/range {v0 .. v8}, Lcom/android/internal/app/AlertController;->setBackground(Landroid/content/res/TypedArray;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZZ)V

    .line 666
    .end local v4    # "customPanel":Landroid/view/ViewGroup;
    .end local v8    # "hasButtonPanel":Z
    .restart local v16    # "hasButtonPanel":Z
    .restart local v17    # "customPanel":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 667
    return-void
.end method

.method private static greylist-max-o shouldCenterSingleButton(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 196
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 197
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x112000f

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 198
    iget v1, v0, Landroid/util/TypedValue;->data:I

    if-eqz v1, :cond_15

    goto :goto_16

    :cond_15
    const/4 v3, 0x0

    :goto_16
    return v3
.end method

.method private static blacklist useWearMaterial3Style(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 267
    invoke-static {}, Landroid/widget/flags/Flags;->useWearMaterial3Ui()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 268
    const-wide/32 v0, 0x169ca792

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 269
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 270
    invoke-virtual {p0}, Landroid/content/Context;->getThemeResId()I

    move-result v0

    const v1, 0x1030128

    if-eq v0, v1, :cond_2d

    .line 271
    invoke-virtual {p0}, Landroid/content/Context;->getThemeResId()I

    move-result v0

    const v1, 0x10302d1

    if-ne v0, v1, :cond_2f

    :cond_2d
    const/4 v0, 0x1

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    .line 267
    :goto_30
    return v0
.end method


# virtual methods
.method public greylist getButton(I)Landroid/widget/Button;
    .registers 3
    .param p1, "whichButton"    # I

    .line 506
    packed-switch p1, :pswitch_data_e

    .line 514
    const/4 v0, 0x0

    return-object v0

    .line 508
    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    return-object v0

    .line 510
    :pswitch_8
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0

    .line 512
    :pswitch_b
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object v0

    :pswitch_data_e
    .packed-switch -0x3
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public greylist-max-o getIconAttributeResId(I)I
    .registers 5
    .param p1, "attrId"    # I

    .line 490
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 491
    .local v0, "out":Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 492
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method public greylist getListView()Landroid/widget/ListView;
    .registers 2

    .line 501
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public greylist installContent()V
    .registers 3

    .line 304
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->selectContentView()I

    move-result v0

    .line 305
    .local v0, "contentView":I
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setContentView(I)V

    .line 306
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->setupView()V

    .line 307
    return-void
.end method

.method public greylist-max-o installContent(Lcom/android/internal/app/AlertController$AlertParams;)V
    .registers 2
    .param p1, "params"    # Lcom/android/internal/app/AlertController$AlertParams;

    .line 298
    invoke-virtual {p1, p0}, Lcom/android/internal/app/AlertController$AlertParams;->apply(Lcom/android/internal/app/AlertController;)V

    .line 299
    invoke-virtual {p0}, Lcom/android/internal/app/AlertController;->installContent()V

    .line 300
    return-void
.end method

.method public greylist onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 521
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public greylist onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 527
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public greylist setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .registers 7
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "msg"    # Landroid/os/Message;

    .line 416
    if-nez p4, :cond_a

    if-eqz p3, :cond_a

    .line 417
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 420
    :cond_a
    packed-switch p1, :pswitch_data_26

    .line 438
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 423
    :pswitch_15
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 424
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 425
    goto :goto_24

    .line 428
    :pswitch_1a
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 429
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    .line 430
    goto :goto_24

    .line 433
    :pswitch_1f
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 434
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    .line 435
    nop

    .line 440
    :goto_24
    return-void

    nop

    :pswitch_data_26
    .packed-switch -0x3
        :pswitch_1f
        :pswitch_1a
        :pswitch_15
    .end packed-switch
.end method

.method public greylist-max-o setButtonPanelLayoutHint(I)V
    .registers 2
    .param p1, "layoutHint"    # I

    .line 397
    iput p1, p0, Lcom/android/internal/app/AlertController;->mButtonPanelLayoutHint:I

    .line 398
    return-void
.end method

.method public greylist setCustomTitle(Landroid/view/View;)V
    .registers 2
    .param p1, "customTitleView"    # Landroid/view/View;

    .line 334
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    .line 335
    return-void
.end method

.method public greylist setIcon(I)V
    .registers 4
    .param p1, "resId"    # I

    .line 450
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 451
    iput p1, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    .line 453
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_20

    .line 454
    if-eqz p1, :cond_19

    .line 455
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 456
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_20

    .line 458
    :cond_19
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 461
    :cond_20
    :goto_20
    return-void
.end method

.method public greylist setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 470
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 471
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    .line 473
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1d

    .line 474
    if-eqz p1, :cond_16

    .line 475
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 476
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1d

    .line 478
    :cond_16
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 481
    :cond_1d
    :goto_1d
    return-void
.end method

.method public greylist-max-o setInverseBackgroundForced(Z)V
    .registers 2
    .param p1, "forceInverseBackground"    # Z

    .line 496
    iput-boolean p1, p0, Lcom/android/internal/app/AlertController;->mForceInverseBackground:Z

    .line 497
    return-void
.end method

.method public greylist setMessage(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 339
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    .line 340
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 341
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    :cond_b
    return-void
.end method

.method public greylist-max-o setMessageHyphenationFrequency(I)V
    .registers 3
    .param p1, "hyphenationFrequency"    # I

    .line 354
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageHyphenationFrequency:Ljava/lang/Integer;

    .line 355
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_f

    .line 356
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHyphenationFrequency(I)V

    .line 358
    :cond_f
    return-void
.end method

.method public greylist-max-o setMessageMovementMethod(Landroid/text/method/MovementMethod;)V
    .registers 3
    .param p1, "movementMethod"    # Landroid/text/method/MovementMethod;

    .line 346
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mMessageMovementMethod:Landroid/text/method/MovementMethod;

    .line 347
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 348
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 350
    :cond_b
    return-void
.end method

.method public greylist setTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 322
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 323
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 324
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    :cond_b
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 327
    return-void
.end method

.method public greylist-max-o setView(I)V
    .registers 3
    .param p1, "layoutResId"    # I

    .line 364
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .line 365
    iput p1, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    .line 366
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 367
    return-void
.end method

.method public greylist setView(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 374
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .line 375
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    .line 376
    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 377
    return-void
.end method

.method public greylist-max-o setView(Landroid/view/View;IIII)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .line 384
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .line 385
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    .line 386
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 387
    iput p2, p0, Lcom/android/internal/app/AlertController;->mViewSpacingLeft:I

    .line 388
    iput p3, p0, Lcom/android/internal/app/AlertController;->mViewSpacingTop:I

    .line 389
    iput p4, p0, Lcom/android/internal/app/AlertController;->mViewSpacingRight:I

    .line 390
    iput p5, p0, Lcom/android/internal/app/AlertController;->mViewSpacingBottom:I

    .line 391
    return-void
.end method

.method protected greylist-max-o setupButtons(Landroid/view/ViewGroup;)V
    .registers 10
    .param p1, "buttonPanel"    # Landroid/view/ViewGroup;

    .line 816
    const/4 v0, 0x1

    .line 817
    .local v0, "BIT_BUTTON_POSITIVE":I
    const/4 v1, 0x2

    .line 818
    .local v1, "BIT_BUTTON_NEGATIVE":I
    const/4 v2, 0x4

    .line 819
    .local v2, "BIT_BUTTON_NEUTRAL":I
    const/4 v3, 0x0

    .line 820
    .local v3, "whichButtons":I
    const v4, 0x1020019

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 821
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 823
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eqz v4, :cond_27

    .line 824
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_34

    .line 826
    :cond_27
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 827
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 828
    or-int/2addr v3, v0

    .line 831
    :goto_34
    const v4, 0x102001a

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 832
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 834
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 835
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_61

    .line 837
    :cond_54
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 838
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 840
    or-int/2addr v3, v1

    .line 843
    :goto_61
    const v4, 0x102001b

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 844
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 846
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_81

    .line 847
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_8e

    .line 849
    :cond_81
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 850
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 852
    or-int/2addr v3, v2

    .line 855
    :goto_8e
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/app/AlertController;->shouldCenterSingleButton(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_ad

    .line 860
    if-ne v3, v0, :cond_9e

    .line 861
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_ad

    .line 862
    :cond_9e
    if-ne v3, v1, :cond_a6

    .line 863
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_ad

    .line 864
    :cond_a6
    if-ne v3, v2, :cond_ad

    .line 865
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    .line 869
    :cond_ad
    :goto_ad
    if-eqz v3, :cond_b0

    const/4 v6, 0x1

    .line 870
    .local v6, "hasButtons":Z
    :cond_b0
    if-nez v6, :cond_b5

    .line 871
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 873
    :cond_b5
    return-void
.end method

.method protected greylist-max-o setupContent(Landroid/view/ViewGroup;)V
    .registers 7
    .param p1, "contentPanel"    # Landroid/view/ViewGroup;

    .line 773
    const v0, 0x10204e1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    .line 774
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 777
    const v0, 0x102000b

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 778
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_21

    .line 779
    return-void

    .line 782
    :cond_21
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_47

    .line 783
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 784
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageMovementMethod:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_37

    .line 785
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mMessageMovementMethod:Landroid/text/method/MovementMethod;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 787
    :cond_37
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageHyphenationFrequency:Ljava/lang/Integer;

    if-eqz v0, :cond_79

    .line 788
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mMessageHyphenationFrequency:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHyphenationFrequency(I)V

    goto :goto_79

    .line 791
    :cond_47
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 792
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 794
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_76

    .line 795
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 796
    .local v0, "scrollParent":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 797
    .local v1, "childIndex":I
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 798
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 800
    .end local v0    # "scrollParent":Landroid/view/ViewGroup;
    .end local v1    # "childIndex":I
    goto :goto_79

    .line 801
    :cond_76
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 804
    :cond_79
    :goto_79
    return-void
.end method

.method protected greylist-max-o setupTitle(Landroid/view/ViewGroup;)V
    .registers 9
    .param p1, "topPanel"    # Landroid/view/ViewGroup;

    .line 727
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    const v1, 0x10205a0

    const/16 v2, 0x8

    if-eqz v0, :cond_25

    iget-boolean v0, p0, Lcom/android/internal/app/AlertController;->mShowTitle:Z

    if-eqz v0, :cond_25

    .line 729
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v0, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 732
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 735
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 736
    .local v1, "titleTemplate":Landroid/view/View;
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 737
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "titleTemplate":Landroid/view/View;
    goto/16 :goto_a0

    .line 738
    :cond_25
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v3, 0x1020006

    invoke-virtual {v0, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 740
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 741
    .local v0, "hasTextTitle":Z
    if-eqz v0, :cond_8f

    iget-boolean v3, p0, Lcom/android/internal/app/AlertController;->mShowTitle:Z

    if-eqz v3, :cond_8f

    .line 743
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v3, 0x1020201

    invoke-virtual {v1, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 744
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 749
    iget v1, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    if-eqz v1, :cond_60

    .line 750
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_a0

    .line 751
    :cond_60
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_6c

    .line 752
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_a0

    .line 756
    :cond_6c
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 757
    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 758
    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 759
    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v6

    .line 756
    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 760
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_a0

    .line 764
    :cond_8f
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 765
    .restart local v1    # "titleTemplate":Landroid/view/View;
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 766
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 767
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 770
    .end local v0    # "hasTextTitle":Z
    .end local v1    # "titleTemplate":Landroid/view/View;
    :goto_a0
    return-void
.end method
