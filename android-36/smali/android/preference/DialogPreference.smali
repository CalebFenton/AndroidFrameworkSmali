.class public abstract Landroid/preference/DialogPreference;
.super Landroid/preference/Preference;
.source "DialogPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/PreferenceManager$OnActivityDestroyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/DialogPreference$SavedState;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private greylist mBuilder:Landroid/app/AlertDialog$Builder;

.field private greylist mDialog:Landroid/app/Dialog;

.field private greylist mDialogIcon:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mDialogLayoutResId:I

.field private greylist mDialogMessage:Ljava/lang/CharSequence;

.field private greylist mDialogTitle:Ljava/lang/CharSequence;

.field private final blacklist mDismissRunnable:Ljava/lang/Runnable;

.field private greylist mNegativeButtonText:Ljava/lang/CharSequence;

.field private greylist mPositiveButtonText:Ljava/lang/CharSequence;

.field private greylist mWhichButtonClicked:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDialog(Landroid/preference/DialogPreference;)Landroid/app/Dialog;
    .registers 1

    iget-object p0, p0, Landroid/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveDismissCallbacks(Landroid/preference/DialogPreference;)V
    .registers 1

    invoke-direct {p0}, Landroid/preference/DialogPreference;->removeDismissCallbacks()V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 125
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 120
    const v0, 0x1010091

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 121
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 117
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 96
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 87
    new-instance v0, Landroid/preference/DialogPreference$1;

    invoke-direct {v0, p0}, Landroid/preference/DialogPreference$1;-><init>(Landroid/preference/DialogPreference;)V

    iput-object v0, p0, Landroid/preference/DialogPreference;->mDismissRunnable:Ljava/lang/Runnable;

    .line 98
    sget-object v0, Lcom/android/internal/R$styleable;->DialogPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 100
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 101
    iget-object v1, p0, Landroid/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    if-nez v1, :cond_21

    .line 104
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 106
    :cond_21
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/DialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    .line 107
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/DialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    .line 108
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/DialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 109
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/DialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 110
    const/4 v1, 0x5

    iget v2, p0, Landroid/preference/DialogPreference;->mDialogLayoutResId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/preference/DialogPreference;->mDialogLayoutResId:I

    .line 112
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 113
    return-void
.end method

.method private blacklist getDecorView()Landroid/view/View;
    .registers 2

    .line 355
    iget-object v0, p0, Landroid/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 356
    iget-object v0, p0, Landroid/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 358
    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist removeDismissCallbacks()V
    .registers 3

    .line 371
    invoke-direct {p0}, Landroid/preference/DialogPreference;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 372
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_b

    .line 373
    iget-object v1, p0, Landroid/preference/DialogPreference;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 375
    :cond_b
    return-void
.end method


# virtual methods
.method public whitelist getDialog()Landroid/app/Dialog;
    .registers 2

    .line 452
    iget-object v0, p0, Landroid/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public whitelist getDialogIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 206
    iget-object v0, p0, Landroid/preference/DialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getDialogLayoutResource()I
    .registers 2

    .line 283
    iget v0, p0, Landroid/preference/DialogPreference;->mDialogLayoutResId:I

    return v0
.end method

.method public whitelist getDialogMessage()Ljava/lang/CharSequence;
    .registers 2

    .line 179
    iget-object v0, p0, Landroid/preference/DialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getDialogTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 149
    iget-object v0, p0, Landroid/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getNegativeButtonText()Ljava/lang/CharSequence;
    .registers 2

    .line 262
    iget-object v0, p0, Landroid/preference/DialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getPositiveButtonText()Ljava/lang/CharSequence;
    .registers 2

    .line 234
    iget-object v0, p0, Landroid/preference/DialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist onActivityDestroy()V
    .registers 2

    .line 460
    iget-object v0, p0, Landroid/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_13

    .line 464
    :cond_d
    iget-object v0, p0, Landroid/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 465
    return-void

    .line 461
    :cond_13
    :goto_13
    return-void
.end method

.method protected whitelist onBindDialogView(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .line 403
    const v0, 0x102000b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 405
    .local v0, "dialogMessageView":Landroid/view/View;
    if-eqz v0, :cond_29

    .line 406
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v1

    .line 407
    .local v1, "message":Ljava/lang/CharSequence;
    const/16 v2, 0x8

    .line 409
    .local v2, "newVisibility":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 410
    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_1f

    .line 411
    move-object v3, v0

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    :cond_1f
    const/4 v2, 0x0

    .line 417
    :cond_20
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v2, :cond_29

    .line 418
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 421
    .end local v1    # "message":Ljava/lang/CharSequence;
    .end local v2    # "newVisibility":I
    :cond_29
    return-void
.end method

.method protected whitelist onClick()V
    .registers 2

    .line 298
    iget-object v0, p0, Landroid/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 300
    :cond_d
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 301
    return-void
.end method

.method public whitelist onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 424
    iput p2, p0, Landroid/preference/DialogPreference;->mWhichButtonClicked:I

    .line 425
    return-void
.end method

.method protected whitelist onCreateDialogView()Landroid/view/View;
    .registers 4

    .line 386
    iget v0, p0, Landroid/preference/DialogPreference;->mDialogLayoutResId:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 387
    return-object v1

    .line 390
    :cond_6
    iget-object v0, p0, Landroid/preference/DialogPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 391
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget v2, p0, Landroid/preference/DialogPreference;->mDialogLayoutResId:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method protected whitelist onDialogClosed(Z)V
    .registers 2
    .param p1, "positiveResult"    # Z

    .line 444
    return-void
.end method

.method public whitelist onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 429
    invoke-direct {p0}, Landroid/preference/DialogPreference;->removeDismissCallbacks()V

    .line 430
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceManager;->unregisterOnActivityDestroyListener(Landroid/preference/PreferenceManager$OnActivityDestroyListener;)V

    .line 432
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    .line 433
    iget v0, p0, Landroid/preference/DialogPreference;->mWhichButtonClicked:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 434
    return-void
.end method

.method protected whitelist onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .registers 2
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .line 294
    return-void
.end method

.method protected whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 482
    if-eqz p1, :cond_23

    invoke-interface {p1}, Landroid/os/Parcelable;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/preference/DialogPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_23

    .line 488
    :cond_f
    move-object v0, p1

    check-cast v0, Landroid/preference/DialogPreference$SavedState;

    .line 489
    .local v0, "myState":Landroid/preference/DialogPreference$SavedState;
    invoke-virtual {v0}, Landroid/preference/DialogPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 490
    iget-boolean v1, v0, Landroid/preference/DialogPreference$SavedState;->isDialogShowing:Z

    if-eqz v1, :cond_22

    .line 491
    iget-object v1, v0, Landroid/preference/DialogPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 493
    :cond_22
    return-void

    .line 484
    .end local v0    # "myState":Landroid/preference/DialogPreference$SavedState;
    :cond_23
    :goto_23
    invoke-super {p0, p1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 485
    return-void
.end method

.method protected whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .line 469
    invoke-super {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 470
    .local v0, "superState":Landroid/os/Parcelable;
    iget-object v1, p0, Landroid/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_22

    iget-object v1, p0, Landroid/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_22

    .line 474
    :cond_11
    new-instance v1, Landroid/preference/DialogPreference$SavedState;

    invoke-direct {v1, v0}, Landroid/preference/DialogPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 475
    .local v1, "myState":Landroid/preference/DialogPreference$SavedState;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/preference/DialogPreference$SavedState;->isDialogShowing:Z

    .line 476
    iget-object v2, p0, Landroid/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/DialogPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    .line 477
    return-object v1

    .line 471
    .end local v1    # "myState":Landroid/preference/DialogPreference$SavedState;
    :cond_22
    :goto_22
    return-object v0
.end method

.method blacklist postDismiss()V
    .registers 3

    .line 362
    invoke-direct {p0}, Landroid/preference/DialogPreference;->removeDismissCallbacks()V

    .line 363
    invoke-direct {p0}, Landroid/preference/DialogPreference;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 364
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_e

    .line 366
    iget-object v1, p0, Landroid/preference/DialogPreference;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 368
    :cond_e
    return-void
.end method

.method public whitelist setDialogIcon(I)V
    .registers 3
    .param p1, "dialogIconRes"    # I

    .line 198
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/DialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    .line 199
    return-void
.end method

.method public whitelist setDialogIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "dialogIcon"    # Landroid/graphics/drawable/Drawable;

    .line 188
    iput-object p1, p0, Landroid/preference/DialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    .line 189
    return-void
.end method

.method public whitelist setDialogLayoutResource(I)V
    .registers 2
    .param p1, "dialogLayoutResId"    # I

    .line 273
    iput p1, p0, Landroid/preference/DialogPreference;->mDialogLayoutResId:I

    .line 274
    return-void
.end method

.method public whitelist setDialogMessage(I)V
    .registers 3
    .param p1, "dialogMessageResId"    # I

    .line 171
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 172
    return-void
.end method

.method public whitelist setDialogMessage(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "dialogMessage"    # Ljava/lang/CharSequence;

    .line 163
    iput-object p1, p0, Landroid/preference/DialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    .line 164
    return-void
.end method

.method public whitelist setDialogTitle(I)V
    .registers 3
    .param p1, "dialogTitleResId"    # I

    .line 141
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 142
    return-void
.end method

.method public whitelist setDialogTitle(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "dialogTitle"    # Ljava/lang/CharSequence;

    .line 133
    iput-object p1, p0, Landroid/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 134
    return-void
.end method

.method public whitelist setNegativeButtonText(I)V
    .registers 3
    .param p1, "negativeButtonTextResId"    # I

    .line 252
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    .line 253
    return-void
.end method

.method public whitelist setNegativeButtonText(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "negativeButtonText"    # Ljava/lang/CharSequence;

    .line 244
    iput-object p1, p0, Landroid/preference/DialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 245
    return-void
.end method

.method public whitelist setPositiveButtonText(I)V
    .registers 3
    .param p1, "positiveButtonTextResId"    # I

    .line 224
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->setPositiveButtonText(Ljava/lang/CharSequence;)V

    .line 225
    return-void
.end method

.method public whitelist setPositiveButtonText(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "positiveButtonText"    # Ljava/lang/CharSequence;

    .line 216
    iput-object p1, p0, Landroid/preference/DialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 217
    return-void
.end method

.method protected whitelist showDialog(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "state"    # Landroid/os/Bundle;

    .line 311
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 313
    .local v0, "context":Landroid/content/Context;
    const/4 v1, -0x2

    iput v1, p0, Landroid/preference/DialogPreference;->mWhichButtonClicked:I

    .line 315
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Landroid/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 316
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/DialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    .line 317
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/DialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 318
    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/DialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 319
    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/DialogPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    .line 321
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->onCreateDialogView()Landroid/view/View;

    move-result-object v1

    .line 322
    .local v1, "contentView":Landroid/view/View;
    if-eqz v1, :cond_35

    .line 323
    invoke-virtual {p0, v1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 324
    iget-object v2, p0, Landroid/preference/DialogPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    goto :goto_3c

    .line 326
    :cond_35
    iget-object v2, p0, Landroid/preference/DialogPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Landroid/preference/DialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 329
    :goto_3c
    iget-object v2, p0, Landroid/preference/DialogPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v2}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 331
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/PreferenceManager;->registerOnActivityDestroyListener(Landroid/preference/PreferenceManager$OnActivityDestroyListener;)V

    .line 334
    iget-object v2, p0, Landroid/preference/DialogPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Landroid/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    .line 335
    .local v2, "dialog":Landroid/app/Dialog;
    if-eqz p1, :cond_55

    .line 336
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 338
    :cond_55
    new-instance v3, Landroid/preference/DialogPreference$2;

    invoke-direct {v3, p0}, Landroid/preference/DialogPreference$2;-><init>(Landroid/preference/DialogPreference;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 344
    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 345
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 346
    return-void
.end method
