.class public Landroid/support/v4/app/DialogFragment;
.super Landroid/support/v4/app/Fragment;
.source "DialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/DialogFragment$DialogStyle;
    }
.end annotation


# static fields
.field private static final SAVED_BACK_STACK_ID:Ljava/lang/String; = "android:backStackId"

.field private static final SAVED_CANCELABLE:Ljava/lang/String; = "android:cancelable"

.field private static final SAVED_DIALOG_STATE_TAG:Ljava/lang/String; = "android:savedDialogState"

.field private static final SAVED_SHOWS_DIALOG:Ljava/lang/String; = "android:showsDialog"

.field private static final SAVED_STYLE:Ljava/lang/String; = "android:style"

.field private static final SAVED_THEME:Ljava/lang/String; = "android:theme"

.field public static final STYLE_NORMAL:I = 0x0

.field public static final STYLE_NO_FRAME:I = 0x2

.field public static final STYLE_NO_INPUT:I = 0x3

.field public static final STYLE_NO_TITLE:I = 0x1


# instance fields
.field mBackStackId:I

.field mCancelable:Z

.field mDialog:Landroid/app/Dialog;

.field mDismissed:Z

.field mShownByMe:Z

.field mShowsDialog:Z

.field mStyle:I

.field mTheme:I

.field mViewDestroyed:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    .line 96
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    #@5
    .line 85
    iput v0, p0, Landroid/support/v4/app/DialogFragment;->mStyle:I

    #@7
    .line 86
    iput v0, p0, Landroid/support/v4/app/DialogFragment;->mTheme:I

    #@9
    .line 87
    iput-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->mCancelable:Z

    #@b
    .line 88
    iput-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    #@d
    .line 89
    const/4 v0, -0x1

    #@e
    iput v0, p0, Landroid/support/v4/app/DialogFragment;->mBackStackId:I

    #@10
    .line 96
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    #@0
    .prologue
    .line 167
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Landroid/support/v4/app/DialogFragment;->dismissInternal(Z)V

    #@4
    .line 166
    return-void
.end method

.method public dismissAllowingStateLoss()V
    .locals 1

    #@0
    .prologue
    .line 177
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Landroid/support/v4/app/DialogFragment;->dismissInternal(Z)V

    #@4
    .line 176
    return-void
.end method

.method dismissInternal(Z)V
    .locals 5
    .param p1, "allowStateLoss"    # Z

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    const/4 v3, 0x1

    #@3
    .line 181
    iget-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->mDismissed:Z

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 182
    return-void

    #@8
    .line 184
    :cond_0
    iput-boolean v3, p0, Landroid/support/v4/app/DialogFragment;->mDismissed:Z

    #@a
    .line 185
    iput-boolean v2, p0, Landroid/support/v4/app/DialogFragment;->mShownByMe:Z

    #@c
    .line 186
    iget-object v1, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 187
    iget-object v1, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@12
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    #@15
    .line 188
    iput-object v4, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@17
    .line 190
    :cond_1
    iput-boolean v3, p0, Landroid/support/v4/app/DialogFragment;->mViewDestroyed:Z

    #@19
    .line 191
    iget v1, p0, Landroid/support/v4/app/DialogFragment;->mBackStackId:I

    #@1b
    if-ltz v1, :cond_2

    #@1d
    .line 192
    invoke-virtual {p0}, Landroid/support/v4/app/DialogFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    #@20
    move-result-object v1

    #@21
    iget v2, p0, Landroid/support/v4/app/DialogFragment;->mBackStackId:I

    #@23
    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentManager;->popBackStack(II)V

    #@26
    .line 194
    const/4 v1, -0x1

    #@27
    iput v1, p0, Landroid/support/v4/app/DialogFragment;->mBackStackId:I

    #@29
    .line 180
    :goto_0
    return-void

    #@2a
    .line 196
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/app/DialogFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    #@31
    move-result-object v0

    #@32
    .line 197
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    #@35
    .line 198
    if-eqz p1, :cond_3

    #@37
    .line 199
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    #@3a
    goto :goto_0

    #@3b
    .line 201
    :cond_3
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    #@3e
    goto :goto_0
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 1

    #@0
    .prologue
    .line 207
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@2
    return-object v0
.end method

.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 304
    iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 305
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 308
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@f
    .line 310
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 311
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@15
    iget v1, p0, Landroid/support/v4/app/DialogFragment;->mStyle:I

    #@17
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/DialogFragment;->setupDialog(Landroid/app/Dialog;I)V

    #@1a
    .line 313
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@1c
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    #@1f
    move-result-object v0

    #@20
    .line 314
    const-string/jumbo v1, "layout_inflater"

    #@23
    .line 313
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Landroid/view/LayoutInflater;

    #@29
    return-object v0

    #@2a
    .line 316
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@2c
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    #@2f
    move-result-object v0

    #@30
    .line 317
    const-string/jumbo v1, "layout_inflater"

    #@33
    .line 316
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@36
    move-result-object v0

    #@37
    check-cast v0, Landroid/view/LayoutInflater;

    #@39
    return-object v0
.end method

.method public getShowsDialog()Z
    .locals 1

    #@0
    .prologue
    .line 261
    iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    #@2
    return v0
.end method

.method public getTheme()I
    .locals 1
    .annotation build Landroid/support/annotation/StyleRes;
    .end annotation

    #@0
    .prologue
    .line 212
    iget v0, p0, Landroid/support/v4/app/DialogFragment;->mTheme:I

    #@2
    return v0
.end method

.method public isCancelable()Z
    .locals 1

    #@0
    .prologue
    .line 233
    iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mCancelable:Z

    #@2
    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 376
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    #@3
    .line 378
    iget-boolean v2, p0, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    #@5
    if-nez v2, :cond_0

    #@7
    .line 379
    return-void

    #@8
    .line 382
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/DialogFragment;->getView()Landroid/view/View;

    #@b
    move-result-object v1

    #@c
    .line 383
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_2

    #@e
    .line 384
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@11
    move-result-object v2

    #@12
    if-eqz v2, :cond_1

    #@14
    .line 385
    new-instance v2, Ljava/lang/IllegalStateException;

    #@16
    const-string/jumbo v3, "DialogFragment can not be attached to a container view"

    #@19
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v2

    #@1d
    .line 387
    :cond_1
    iget-object v2, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@1f
    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    #@22
    .line 389
    :cond_2
    iget-object v2, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@24
    invoke-virtual {p0}, Landroid/support/v4/app/DialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    #@2b
    .line 390
    iget-object v2, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@2d
    iget-boolean v3, p0, Landroid/support/v4/app/DialogFragment;->mCancelable:Z

    #@2f
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    #@32
    .line 391
    iget-object v2, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@34
    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    #@37
    .line 392
    iget-object v2, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@39
    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    #@3c
    .line 393
    if-eqz p1, :cond_3

    #@3e
    .line 394
    const-string/jumbo v2, "android:savedDialogState"

    #@41
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@44
    move-result-object v0

    #@45
    .line 395
    .local v0, "dialogState":Landroid/os/Bundle;
    if-eqz v0, :cond_3

    #@47
    .line 396
    iget-object v2, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@49
    invoke-virtual {v2, v0}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    #@4c
    .line 375
    .end local v0    # "dialogState":Landroid/os/Bundle;
    :cond_3
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 266
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    #@3
    .line 267
    iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mShownByMe:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 270
    const/4 v0, 0x0

    #@8
    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mDismissed:Z

    #@a
    .line 265
    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    #@0
    .prologue
    .line 361
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 287
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    #@5
    .line 289
    iget v0, p0, Landroid/support/v4/app/DialogFragment;->mContainerId:I

    #@7
    if-nez v0, :cond_1

    #@9
    move v0, v1

    #@a
    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    #@c
    .line 291
    if-eqz p1, :cond_0

    #@e
    .line 292
    const-string/jumbo v0, "android:style"

    #@11
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@14
    move-result v0

    #@15
    iput v0, p0, Landroid/support/v4/app/DialogFragment;->mStyle:I

    #@17
    .line 293
    const-string/jumbo v0, "android:theme"

    #@1a
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@1d
    move-result v0

    #@1e
    iput v0, p0, Landroid/support/v4/app/DialogFragment;->mTheme:I

    #@20
    .line 294
    const-string/jumbo v0, "android:cancelable"

    #@23
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@26
    move-result v0

    #@27
    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mCancelable:Z

    #@29
    .line 295
    const-string/jumbo v0, "android:showsDialog"

    #@2c
    iget-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    #@2e
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@31
    move-result v0

    #@32
    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    #@34
    .line 296
    const-string/jumbo v0, "android:backStackId"

    #@37
    const/4 v1, -0x1

    #@38
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@3b
    move-result v0

    #@3c
    iput v0, p0, Landroid/support/v4/app/DialogFragment;->mBackStackId:I

    #@3e
    .line 286
    :cond_0
    return-void

    #@3f
    :cond_1
    move v0, v2

    #@40
    .line 289
    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    #@0
    .prologue
    .line 358
    new-instance v0, Landroid/app/Dialog;

    #@2
    invoke-virtual {p0}, Landroid/support/v4/app/DialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p0}, Landroid/support/v4/app/DialogFragment;->getTheme()I

    #@9
    move-result v2

    #@a
    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    #@d
    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 449
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    #@4
    .line 450
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 454
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mViewDestroyed:Z

    #@b
    .line 455
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@d
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    #@10
    .line 456
    iput-object v1, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@12
    .line 448
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    #@0
    .prologue
    .line 276
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    #@3
    .line 277
    iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mShownByMe:Z

    #@5
    if-nez v0, :cond_0

    #@7
    iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mDismissed:Z

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 275
    :cond_0
    :goto_0
    return-void

    #@c
    .line 281
    :cond_1
    const/4 v0, 0x1

    #@d
    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mDismissed:Z

    #@f
    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    #@0
    .prologue
    .line 365
    iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mViewDestroyed:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 370
    const/4 v0, 0x1

    #@5
    invoke-virtual {p0, v0}, Landroid/support/v4/app/DialogFragment;->dismissInternal(Z)V

    #@8
    .line 364
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 412
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    #@3
    .line 413
    iget-object v1, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 414
    iget-object v1, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@9
    invoke-virtual {v1}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    #@c
    move-result-object v0

    #@d
    .line 415
    .local v0, "dialogState":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    #@f
    .line 416
    const-string/jumbo v1, "android:savedDialogState"

    #@12
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@15
    .line 419
    .end local v0    # "dialogState":Landroid/os/Bundle;
    :cond_0
    iget v1, p0, Landroid/support/v4/app/DialogFragment;->mStyle:I

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 420
    const-string/jumbo v1, "android:style"

    #@1c
    iget v2, p0, Landroid/support/v4/app/DialogFragment;->mStyle:I

    #@1e
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@21
    .line 422
    :cond_1
    iget v1, p0, Landroid/support/v4/app/DialogFragment;->mTheme:I

    #@23
    if-eqz v1, :cond_2

    #@25
    .line 423
    const-string/jumbo v1, "android:theme"

    #@28
    iget v2, p0, Landroid/support/v4/app/DialogFragment;->mTheme:I

    #@2a
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@2d
    .line 425
    :cond_2
    iget-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->mCancelable:Z

    #@2f
    if-nez v1, :cond_3

    #@31
    .line 426
    const-string/jumbo v1, "android:cancelable"

    #@34
    iget-boolean v2, p0, Landroid/support/v4/app/DialogFragment;->mCancelable:Z

    #@36
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@39
    .line 428
    :cond_3
    iget-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    #@3b
    if-nez v1, :cond_4

    #@3d
    .line 429
    const-string/jumbo v1, "android:showsDialog"

    #@40
    iget-boolean v2, p0, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    #@42
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@45
    .line 431
    :cond_4
    iget v1, p0, Landroid/support/v4/app/DialogFragment;->mBackStackId:I

    #@47
    const/4 v2, -0x1

    #@48
    if-eq v1, v2, :cond_5

    #@4a
    .line 432
    const-string/jumbo v1, "android:backStackId"

    #@4d
    iget v2, p0, Landroid/support/v4/app/DialogFragment;->mBackStackId:I

    #@4f
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@52
    .line 411
    :cond_5
    return-void
.end method

.method public onStart()V
    .locals 1

    #@0
    .prologue
    .line 403
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    #@3
    .line 404
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 405
    const/4 v0, 0x0

    #@8
    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mViewDestroyed:Z

    #@a
    .line 406
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@c
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    #@f
    .line 402
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    #@0
    .prologue
    .line 438
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    #@3
    .line 439
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 440
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@9
    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    #@c
    .line 437
    :cond_0
    return-void
.end method

.method public setCancelable(Z)V
    .locals 1
    .param p1, "cancelable"    # Z

    #@0
    .prologue
    .line 225
    iput-boolean p1, p0, Landroid/support/v4/app/DialogFragment;->mCancelable:Z

    #@2
    .line 226
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@8
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    #@b
    .line 224
    :cond_0
    return-void
.end method

.method public setShowsDialog(Z)V
    .locals 0
    .param p1, "showsDialog"    # Z

    #@0
    .prologue
    .line 254
    iput-boolean p1, p0, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    #@2
    .line 253
    return-void
.end method

.method public setStyle(II)V
    .locals 2
    .param p1, "style"    # I
    .param p2, "theme"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    #@0
    .prologue
    .line 114
    iput p1, p0, Landroid/support/v4/app/DialogFragment;->mStyle:I

    #@2
    .line 115
    iget v0, p0, Landroid/support/v4/app/DialogFragment;->mStyle:I

    #@4
    const/4 v1, 0x2

    #@5
    if-eq v0, v1, :cond_0

    #@7
    iget v0, p0, Landroid/support/v4/app/DialogFragment;->mStyle:I

    #@9
    const/4 v1, 0x3

    #@a
    if-ne v0, v1, :cond_1

    #@c
    .line 116
    :cond_0
    const v0, 0x1030059

    #@f
    iput v0, p0, Landroid/support/v4/app/DialogFragment;->mTheme:I

    #@11
    .line 118
    :cond_1
    if-eqz p2, :cond_2

    #@13
    .line 119
    iput p2, p0, Landroid/support/v4/app/DialogFragment;->mTheme:I

    #@15
    .line 113
    :cond_2
    return-void
.end method

.method public setupDialog(Landroid/app/Dialog;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/app/Dialog;
    .param p2, "style"    # I

    #@0
    .prologue
    .line 322
    packed-switch p2, :pswitch_data_0

    #@3
    .line 321
    :goto_0
    return-void

    #@4
    .line 324
    :pswitch_0
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    #@7
    move-result-object v0

    #@8
    .line 325
    const/16 v1, 0x18

    #@a
    .line 324
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    #@d
    .line 330
    :pswitch_1
    const/4 v0, 0x1

    #@e
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    #@11
    goto :goto_0

    #@12
    .line 322
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I
    .locals 2
    .param p1, "transaction"    # Landroid/support/v4/app/FragmentTransaction;
    .param p2, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 152
    iput-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->mDismissed:Z

    #@3
    .line 153
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mShownByMe:Z

    #@6
    .line 154
    invoke-virtual {p1, p0, p2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    #@9
    .line 155
    iput-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->mViewDestroyed:Z

    #@b
    .line 156
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    #@e
    move-result v0

    #@f
    iput v0, p0, Landroid/support/v4/app/DialogFragment;->mBackStackId:I

    #@11
    .line 157
    iget v0, p0, Landroid/support/v4/app/DialogFragment;->mBackStackId:I

    #@13
    return v0
.end method

.method public show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    .locals 2
    .param p1, "manager"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 135
    const/4 v1, 0x0

    #@1
    iput-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->mDismissed:Z

    #@3
    .line 136
    const/4 v1, 0x1

    #@4
    iput-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->mShownByMe:Z

    #@6
    .line 137
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    #@9
    move-result-object v0

    #@a
    .line 138
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v0, p0, p2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    #@d
    .line 139
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    #@10
    .line 134
    return-void
.end method
