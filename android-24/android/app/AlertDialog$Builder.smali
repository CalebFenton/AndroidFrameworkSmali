.class public Landroid/app/AlertDialog$Builder;
.super Ljava/lang/Object;
.source "AlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final P:Lcom/android/internal/app/AlertController$AlertParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 452
    const/4 v0, 0x0

    #@1
    invoke-static {p1, v0}, Landroid/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    #@4
    move-result v0

    #@5
    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    #@8
    .line 451
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I

    #@0
    .prologue
    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 482
    new-instance v0, Lcom/android/internal/app/AlertController$AlertParams;

    #@5
    new-instance v1, Landroid/view/ContextThemeWrapper;

    #@7
    .line 483
    invoke-static {p1, p2}, Landroid/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    #@a
    move-result v2

    #@b
    .line 482
    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    #@e
    invoke-direct {v0, v1}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    #@11
    iput-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@13
    .line 481
    return-void
.end method


# virtual methods
.method public create()Landroid/app/AlertDialog;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1086
    new-instance v0, Landroid/app/AlertDialog;

    #@3
    iget-object v1, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@5
    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    #@7
    invoke-direct {v0, v1, v2, v2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;IZ)V

    #@a
    .line 1087
    .local v0, "dialog":Landroid/app/AlertDialog;
    iget-object v1, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@c
    invoke-static {v0}, Landroid/app/AlertDialog;->-get0(Landroid/app/AlertDialog;)Lcom/android/internal/app/AlertController;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v1, v2}, Lcom/android/internal/app/AlertController$AlertParams;->apply(Lcom/android/internal/app/AlertController;)V

    #@13
    .line 1088
    iget-object v1, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@15
    iget-boolean v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mCancelable:Z

    #@17
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    #@1a
    .line 1089
    iget-object v1, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@1c
    iget-boolean v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mCancelable:Z

    #@1e
    if-eqz v1, :cond_0

    #@20
    .line 1090
    const/4 v1, 0x1

    #@21
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    #@24
    .line 1092
    :cond_0
    iget-object v1, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@26
    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    #@28
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    #@2b
    .line 1093
    iget-object v1, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@2d
    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    #@2f
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    #@32
    .line 1094
    iget-object v1, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@34
    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    #@36
    if-eqz v1, :cond_1

    #@38
    .line 1095
    iget-object v1, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@3a
    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    #@3c
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    #@3f
    .line 1097
    :cond_1
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    #@0
    .prologue
    .line 495
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@2
    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    #@4
    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    #@0
    .prologue
    .line 763
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@2
    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    #@4
    .line 764
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@6
    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    #@8
    .line 765
    return-object p0
.end method

.method public setCancelable(Z)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "cancelable"    # Z

    #@0
    .prologue
    .line 686
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@2
    iput-boolean p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCancelable:Z

    #@4
    .line 687
    return-object p0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "labelColumn"    # Ljava/lang/String;

    #@0
    .prologue
    .line 782
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@2
    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    #@4
    .line 783
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@6
    iput-object p3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    #@8
    .line 784
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@a
    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    #@c
    .line 785
    return-object p0
.end method

.method public setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "customTitleView"    # Landroid/view/View;

    #@0
    .prologue
    .line 535
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@2
    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    #@4
    .line 536
    return-object p0
.end method

.method public setIcon(I)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "iconId"    # I

    #@0
    .prologue
    .line 567
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@2
    iput p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    #@4
    .line 568
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 582
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@2
    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    #@4
    .line 583
    return-object p0
.end method

.method public setIconAttribute(I)Landroid/app/AlertDialog$Builder;
    .locals 3
    .param p1, "attrId"    # I

    #@0
    .prologue
    .line 596
    new-instance v0, Landroid/util/TypedValue;

    #@2
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@5
    .line 597
    .local v0, "out":Landroid/util/TypedValue;
    iget-object v1, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@7
    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    #@9
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@c
    move-result-object v1

    #@d
    const/4 v2, 0x1

    #@e
    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@11
    .line 598
    iget-object v1, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@13
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    #@15
    iput v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    #@17
    .line 599
    return-object p0
.end method

.method public setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "useInverseBackground"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1063
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@2
    iput-boolean p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    #@4
    .line 1064
    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 2
    .param p1, "itemsId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    #@0
    .prologue
    .line 735
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@2
    iget-object v1, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@4
    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    #@d
    move-result-object v1

    #@e
    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    #@10
    .line 736
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@12
    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    #@14
    .line 737
    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    #@0
    .prologue
    .line 747
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@2
    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    #@4
    .line 748
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@6
    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    #@8
    .line 749
    return-object p0
.end method

.method public setMessage(I)Landroid/app/AlertDialog$Builder;
    .locals 2
    .param p1, "messageId"    # I

    #@0
    .prologue
    .line 545
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@2
    iget-object v1, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@4
    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@9
    move-result-object v1

    #@a
    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    #@c
    .line 546
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 555
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@2
    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    #@4
    .line 556
    return-object p0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 2
    .param p1, "itemsId"    # I
    .param p2, "checkedItems"    # [Z
    .param p3, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    #@0
    .prologue
    .line 808
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@2
    iget-object v1, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@4
    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    #@d
    move-result-object v1

    #@e
    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    #@10
    .line 809
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@12
    iput-object p3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    #@14
    .line 810
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@16
    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItems:[Z

    #@18
    .line 811
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@1a
    const/4 v1, 0x1

    #@1b
    iput-boolean v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIsMultiChoice:Z

    #@1d
    .line 812
    return-object p0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "isCheckedColumn"    # Ljava/lang/String;
    .param p3, "labelColumn"    # Ljava/lang/String;
    .param p4, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    #@0
    .prologue
    .line 862
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@2
    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    #@4
    .line 863
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@6
    iput-object p4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    #@8
    .line 864
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@a
    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    #@c
    .line 865
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@e
    iput-object p3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    #@10
    .line 866
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@12
    const/4 v1, 0x1

    #@13
    iput-boolean v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIsMultiChoice:Z

    #@15
    .line 867
    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 2
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "checkedItems"    # [Z
    .param p3, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    #@0
    .prologue
    .line 834
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@2
    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    #@4
    .line 835
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@6
    iput-object p3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    #@8
    .line 836
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@a
    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItems:[Z

    #@c
    .line 837
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@e
    const/4 v1, 0x1

    #@f
    iput-boolean v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIsMultiChoice:Z

    #@11
    .line 838
    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    #@0
    .prologue
    .line 636
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@2
    iget-object v1, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@4
    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@9
    move-result-object v1

    #@a
    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    #@c
    .line 637
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@e
    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    #@10
    .line 638
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    #@0
    .prologue
    .line 649
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@2
    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    #@4
    .line 650
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@6
    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    #@8
    .line 651
    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    #@0
    .prologue
    .line 662
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@2
    iget-object v1, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@4
    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@9
    move-result-object v1

    #@a
    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    #@c
    .line 663
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@e
    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    #@10
    .line 664
    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    #@0
    .prologue
    .line 675
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@2
    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    #@4
    .line 676
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@6
    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    #@8
    .line 677
    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "onCancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    #@0
    .prologue
    .line 704
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@2
    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    #@4
    .line 705
    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "onDismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    #@0
    .prologue
    .line 714
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@2
    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    #@4
    .line 715
    return-object p0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    #@0
    .prologue
    .line 972
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@2
    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    #@4
    .line 973
    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "onKeyListener"    # Landroid/content/DialogInterface$OnKeyListener;

    #@0
    .prologue
    .line 724
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@2
    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    #@4
    .line 725
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    #@0
    .prologue
    .line 610
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@2
    iget-object v1, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@4
    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@9
    move-result-object v1

    #@a
    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    #@c
    .line 611
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@e
    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    #@10
    .line 612
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    #@0
    .prologue
    .line 623
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@2
    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    #@4
    .line 624
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@6
    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    #@8
    .line 625
    return-object p0
.end method

.method public setRecycleOnMeasureEnabled(Z)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 1071
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@2
    iput-boolean p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mRecycleOnMeasure:Z

    #@4
    .line 1072
    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 2
    .param p1, "itemsId"    # I
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    #@0
    .prologue
    .line 887
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@2
    iget-object v1, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@4
    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    #@d
    move-result-object v1

    #@e
    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    #@10
    .line 888
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@12
    iput-object p3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    #@14
    .line 889
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@16
    iput p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItem:I

    #@18
    .line 890
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@1a
    const/4 v1, 0x1

    #@1b
    iput-boolean v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    #@1d
    .line 891
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "checkedItem"    # I
    .param p3, "labelColumn"    # Ljava/lang/String;
    .param p4, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    #@0
    .prologue
    .line 912
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@2
    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    #@4
    .line 913
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@6
    iput-object p4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    #@8
    .line 914
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@a
    iput p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItem:I

    #@c
    .line 915
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@e
    iput-object p3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    #@10
    .line 916
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@12
    const/4 v1, 0x1

    #@13
    iput-boolean v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    #@15
    .line 917
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    #@0
    .prologue
    .line 957
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@2
    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    #@4
    .line 958
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@6
    iput-object p3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    #@8
    .line 959
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@a
    iput p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItem:I

    #@c
    .line 960
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@e
    const/4 v1, 0x1

    #@f
    iput-boolean v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    #@11
    .line 961
    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 2
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    #@0
    .prologue
    .line 935
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@2
    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    #@4
    .line 936
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@6
    iput-object p3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    #@8
    .line 937
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@a
    iput p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItem:I

    #@c
    .line 938
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@e
    const/4 v1, 0x1

    #@f
    iput-boolean v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    #@11
    .line 939
    return-object p0
.end method

.method public setTitle(I)Landroid/app/AlertDialog$Builder;
    .locals 2
    .param p1, "titleId"    # I

    #@0
    .prologue
    .line 504
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@2
    iget-object v1, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@4
    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@9
    move-result-object v1

    #@a
    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    #@c
    .line 505
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 514
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@2
    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    #@4
    .line 515
    return-object p0
.end method

.method public setView(I)Landroid/app/AlertDialog$Builder;
    .locals 2
    .param p1, "layoutResId"    # I

    #@0
    .prologue
    .line 985
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@2
    const/4 v1, 0x0

    #@3
    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    #@5
    .line 986
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@7
    iput p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewLayoutResId:I

    #@9
    .line 987
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@b
    const/4 v1, 0x0

    #@c
    iput-boolean v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    #@e
    .line 988
    return-object p0
.end method

.method public setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1006
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@3
    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    #@5
    .line 1007
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@7
    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewLayoutResId:I

    #@9
    .line 1008
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@b
    iput-boolean v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    #@d
    .line 1009
    return-object p0
.end method

.method public setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1041
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@2
    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    #@4
    .line 1042
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@6
    const/4 v1, 0x0

    #@7
    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewLayoutResId:I

    #@9
    .line 1043
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@b
    const/4 v1, 0x1

    #@c
    iput-boolean v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    #@e
    .line 1044
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@10
    iput p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingLeft:I

    #@12
    .line 1045
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@14
    iput p3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingTop:I

    #@16
    .line 1046
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@18
    iput p4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingRight:I

    #@1a
    .line 1047
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    #@1c
    iput p5, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingBottom:I

    #@1e
    .line 1048
    return-object p0
.end method

.method public show()Landroid/app/AlertDialog;
    .locals 1

    #@0
    .prologue
    .line 1111
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    #@3
    move-result-object v0

    #@4
    .line 1112
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    #@7
    .line 1113
    return-object v0
.end method
