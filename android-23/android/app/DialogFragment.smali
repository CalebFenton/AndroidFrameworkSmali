.class public Landroid/app/DialogFragment;
.super Landroid/app/Fragment;
.source "DialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 187
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    #@5
    .line 176
    iput v0, p0, Landroid/app/DialogFragment;->mStyle:I

    #@7
    .line 177
    iput v0, p0, Landroid/app/DialogFragment;->mTheme:I

    #@9
    .line 178
    iput-boolean v1, p0, Landroid/app/DialogFragment;->mCancelable:Z

    #@b
    .line 179
    iput-boolean v1, p0, Landroid/app/DialogFragment;->mShowsDialog:Z

    #@d
    .line 180
    const/4 v0, -0x1

    #@e
    iput v0, p0, Landroid/app/DialogFragment;->mBackStackId:I

    #@10
    .line 187
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    #@0
    .prologue
    .line 258
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Landroid/app/DialogFragment;->dismissInternal(Z)V

    #@4
    .line 257
    return-void
.end method

.method public dismissAllowingStateLoss()V
    .locals 1

    #@0
    .prologue
    .line 268
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Landroid/app/DialogFragment;->dismissInternal(Z)V

    #@4
    .line 267
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
    .line 272
    iget-boolean v1, p0, Landroid/app/DialogFragment;->mDismissed:Z

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 273
    return-void

    #@8
    .line 275
    :cond_0
    iput-boolean v3, p0, Landroid/app/DialogFragment;->mDismissed:Z

    #@a
    .line 276
    iput-boolean v2, p0, Landroid/app/DialogFragment;->mShownByMe:Z

    #@c
    .line 277
    iget-object v1, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 278
    iget-object v1, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@12
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    #@15
    .line 279
    iput-object v4, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@17
    .line 281
    :cond_1
    iput-boolean v3, p0, Landroid/app/DialogFragment;->mViewDestroyed:Z

    #@19
    .line 282
    iget v1, p0, Landroid/app/DialogFragment;->mBackStackId:I

    #@1b
    if-ltz v1, :cond_2

    #@1d
    .line 283
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    #@20
    move-result-object v1

    #@21
    iget v2, p0, Landroid/app/DialogFragment;->mBackStackId:I

    #@23
    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentManager;->popBackStack(II)V

    #@26
    .line 285
    const/4 v1, -0x1

    #@27
    iput v1, p0, Landroid/app/DialogFragment;->mBackStackId:I

    #@29
    .line 271
    :goto_0
    return-void

    #@2a
    .line 287
    :cond_2
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    #@31
    move-result-object v0

    #@32
    .line 288
    .local v0, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    #@35
    .line 289
    if-eqz p1, :cond_3

    #@37
    .line 290
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    #@3a
    goto :goto_0

    #@3b
    .line 292
    :cond_3
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    #@3e
    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 546
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@3
    .line 547
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6
    const-string/jumbo v0, "DialogFragment:"

    #@9
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c
    .line 548
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f
    const-string/jumbo v0, "  mStyle="

    #@12
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15
    iget v0, p0, Landroid/app/DialogFragment;->mStyle:I

    #@17
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    #@1a
    .line 549
    const-string/jumbo v0, " mTheme=0x"

    #@1d
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@20
    iget v0, p0, Landroid/app/DialogFragment;->mTheme:I

    #@22
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@29
    .line 550
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2c
    const-string/jumbo v0, "  mCancelable="

    #@2f
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@32
    iget-boolean v0, p0, Landroid/app/DialogFragment;->mCancelable:Z

    #@34
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@37
    .line 551
    const-string/jumbo v0, " mShowsDialog="

    #@3a
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3d
    iget-boolean v0, p0, Landroid/app/DialogFragment;->mShowsDialog:Z

    #@3f
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@42
    .line 552
    const-string/jumbo v0, " mBackStackId="

    #@45
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@48
    iget v0, p0, Landroid/app/DialogFragment;->mBackStackId:I

    #@4a
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    #@4d
    .line 553
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@50
    const-string/jumbo v0, "  mDialog="

    #@53
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@56
    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@58
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@5b
    .line 554
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5e
    const-string/jumbo v0, "  mViewDestroyed="

    #@61
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@64
    iget-boolean v0, p0, Landroid/app/DialogFragment;->mViewDestroyed:Z

    #@66
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@69
    .line 555
    const-string/jumbo v0, " mDismissed="

    #@6c
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6f
    iget-boolean v0, p0, Landroid/app/DialogFragment;->mDismissed:Z

    #@71
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@74
    .line 556
    const-string/jumbo v0, " mShownByMe="

    #@77
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7a
    iget-boolean v0, p0, Landroid/app/DialogFragment;->mShownByMe:Z

    #@7c
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@7f
    .line 545
    return-void
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 1

    #@0
    .prologue
    .line 298
    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@2
    return-object v0
.end method

.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 394
    iget-boolean v0, p0, Landroid/app/DialogFragment;->mShowsDialog:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 395
    invoke-super {p0, p1}, Landroid/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 398
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@f
    .line 399
    iget v0, p0, Landroid/app/DialogFragment;->mStyle:I

    #@11
    packed-switch v0, :pswitch_data_0

    #@14
    .line 409
    :goto_0
    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 410
    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@1a
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    #@1d
    move-result-object v0

    #@1e
    .line 411
    const-string/jumbo v1, "layout_inflater"

    #@21
    .line 410
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Landroid/view/LayoutInflater;

    #@27
    return-object v0

    #@28
    .line 401
    :pswitch_0
    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@2a
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    #@2d
    move-result-object v0

    #@2e
    .line 402
    const/16 v1, 0x18

    #@30
    .line 401
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    #@33
    .line 407
    :pswitch_1
    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@35
    const/4 v1, 0x1

    #@36
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    #@39
    goto :goto_0

    #@3a
    .line 413
    :cond_1
    iget-object v0, p0, Landroid/app/DialogFragment;->mHost:Landroid/app/FragmentHostCallback;

    #@3c
    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    #@3f
    move-result-object v0

    #@40
    .line 414
    const-string/jumbo v1, "layout_inflater"

    #@43
    .line 413
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@46
    move-result-object v0

    #@47
    check-cast v0, Landroid/view/LayoutInflater;

    #@49
    return-object v0

    #@4a
    .line 399
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getShowsDialog()Z
    .locals 1

    #@0
    .prologue
    .line 351
    iget-boolean v0, p0, Landroid/app/DialogFragment;->mShowsDialog:Z

    #@2
    return v0
.end method

.method public getTheme()I
    .locals 1

    #@0
    .prologue
    .line 302
    iget v0, p0, Landroid/app/DialogFragment;->mTheme:I

    #@2
    return v0
.end method

.method public isCancelable()Z
    .locals 1

    #@0
    .prologue
    .line 323
    iget-boolean v0, p0, Landroid/app/DialogFragment;->mCancelable:Z

    #@2
    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 458
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    #@3
    .line 460
    iget-boolean v2, p0, Landroid/app/DialogFragment;->mShowsDialog:Z

    #@5
    if-nez v2, :cond_0

    #@7
    .line 461
    return-void

    #@8
    .line 464
    :cond_0
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getView()Landroid/view/View;

    #@b
    move-result-object v1

    #@c
    .line 465
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_2

    #@e
    .line 466
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@11
    move-result-object v2

    #@12
    if-eqz v2, :cond_1

    #@14
    .line 467
    new-instance v2, Ljava/lang/IllegalStateException;

    #@16
    const-string/jumbo v3, "DialogFragment can not be attached to a container view"

    #@19
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v2

    #@1d
    .line 469
    :cond_1
    iget-object v2, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@1f
    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    #@22
    .line 471
    :cond_2
    iget-object v2, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@24
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    #@2b
    .line 472
    iget-object v2, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@2d
    iget-boolean v3, p0, Landroid/app/DialogFragment;->mCancelable:Z

    #@2f
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    #@32
    .line 473
    iget-object v2, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@34
    const-string/jumbo v3, "DialogFragment"

    #@37
    invoke-virtual {v2, v3, p0, p0}, Landroid/app/Dialog;->takeCancelAndDismissListeners(Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;)Z

    #@3a
    move-result v2

    #@3b
    if-nez v2, :cond_3

    #@3d
    .line 474
    new-instance v2, Ljava/lang/IllegalStateException;

    #@3f
    .line 475
    const-string/jumbo v3, "You can not set Dialog\'s OnCancelListener or OnDismissListener"

    #@42
    .line 474
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@45
    throw v2

    #@46
    .line 477
    :cond_3
    if-eqz p1, :cond_4

    #@48
    .line 478
    const-string/jumbo v2, "android:savedDialogState"

    #@4b
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@4e
    move-result-object v0

    #@4f
    .line 479
    .local v0, "dialogState":Landroid/os/Bundle;
    if-eqz v0, :cond_4

    #@51
    .line 480
    iget-object v2, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@53
    invoke-virtual {v2, v0}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    #@56
    .line 457
    .end local v0    # "dialogState":Landroid/os/Bundle;
    :cond_4
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 356
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    #@3
    .line 357
    iget-boolean v0, p0, Landroid/app/DialogFragment;->mShownByMe:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 360
    const/4 v0, 0x0

    #@8
    iput-boolean v0, p0, Landroid/app/DialogFragment;->mDismissed:Z

    #@a
    .line 355
    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    #@0
    .prologue
    .line 443
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 377
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    #@5
    .line 379
    iget v0, p0, Landroid/app/DialogFragment;->mContainerId:I

    #@7
    if-nez v0, :cond_1

    #@9
    move v0, v1

    #@a
    :goto_0
    iput-boolean v0, p0, Landroid/app/DialogFragment;->mShowsDialog:Z

    #@c
    .line 381
    if-eqz p1, :cond_0

    #@e
    .line 382
    const-string/jumbo v0, "android:style"

    #@11
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@14
    move-result v0

    #@15
    iput v0, p0, Landroid/app/DialogFragment;->mStyle:I

    #@17
    .line 383
    const-string/jumbo v0, "android:theme"

    #@1a
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@1d
    move-result v0

    #@1e
    iput v0, p0, Landroid/app/DialogFragment;->mTheme:I

    #@20
    .line 384
    const-string/jumbo v0, "android:cancelable"

    #@23
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@26
    move-result v0

    #@27
    iput-boolean v0, p0, Landroid/app/DialogFragment;->mCancelable:Z

    #@29
    .line 385
    const-string/jumbo v0, "android:showsDialog"

    #@2c
    iget-boolean v1, p0, Landroid/app/DialogFragment;->mShowsDialog:Z

    #@2e
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@31
    move-result v0

    #@32
    iput-boolean v0, p0, Landroid/app/DialogFragment;->mShowsDialog:Z

    #@34
    .line 386
    const-string/jumbo v0, "android:backStackId"

    #@37
    const/4 v1, -0x1

    #@38
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@3b
    move-result v0

    #@3c
    iput v0, p0, Landroid/app/DialogFragment;->mBackStackId:I

    #@3e
    .line 376
    :cond_0
    return-void

    #@3f
    :cond_1
    move v0, v2

    #@40
    .line 379
    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 440
    new-instance v0, Landroid/app/Dialog;

    #@2
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getTheme()I

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
    .line 533
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    #@4
    .line 534
    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 538
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Landroid/app/DialogFragment;->mViewDestroyed:Z

    #@b
    .line 539
    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@d
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    #@10
    .line 540
    iput-object v1, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@12
    .line 532
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    #@0
    .prologue
    .line 366
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    #@3
    .line 367
    iget-boolean v0, p0, Landroid/app/DialogFragment;->mShownByMe:Z

    #@5
    if-nez v0, :cond_0

    #@7
    iget-boolean v0, p0, Landroid/app/DialogFragment;->mDismissed:Z

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 365
    :cond_0
    :goto_0
    return-void

    #@c
    .line 371
    :cond_1
    const/4 v0, 0x1

    #@d
    iput-boolean v0, p0, Landroid/app/DialogFragment;->mDismissed:Z

    #@f
    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    #@0
    .prologue
    .line 447
    iget-boolean v0, p0, Landroid/app/DialogFragment;->mViewDestroyed:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 452
    const/4 v0, 0x1

    #@5
    invoke-virtual {p0, v0}, Landroid/app/DialogFragment;->dismissInternal(Z)V

    #@8
    .line 446
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 496
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    #@3
    .line 497
    iget-object v1, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 498
    iget-object v1, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@9
    invoke-virtual {v1}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    #@c
    move-result-object v0

    #@d
    .line 499
    .local v0, "dialogState":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    #@f
    .line 500
    const-string/jumbo v1, "android:savedDialogState"

    #@12
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@15
    .line 503
    .end local v0    # "dialogState":Landroid/os/Bundle;
    :cond_0
    iget v1, p0, Landroid/app/DialogFragment;->mStyle:I

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 504
    const-string/jumbo v1, "android:style"

    #@1c
    iget v2, p0, Landroid/app/DialogFragment;->mStyle:I

    #@1e
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@21
    .line 506
    :cond_1
    iget v1, p0, Landroid/app/DialogFragment;->mTheme:I

    #@23
    if-eqz v1, :cond_2

    #@25
    .line 507
    const-string/jumbo v1, "android:theme"

    #@28
    iget v2, p0, Landroid/app/DialogFragment;->mTheme:I

    #@2a
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@2d
    .line 509
    :cond_2
    iget-boolean v1, p0, Landroid/app/DialogFragment;->mCancelable:Z

    #@2f
    if-nez v1, :cond_3

    #@31
    .line 510
    const-string/jumbo v1, "android:cancelable"

    #@34
    iget-boolean v2, p0, Landroid/app/DialogFragment;->mCancelable:Z

    #@36
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@39
    .line 512
    :cond_3
    iget-boolean v1, p0, Landroid/app/DialogFragment;->mShowsDialog:Z

    #@3b
    if-nez v1, :cond_4

    #@3d
    .line 513
    const-string/jumbo v1, "android:showsDialog"

    #@40
    iget-boolean v2, p0, Landroid/app/DialogFragment;->mShowsDialog:Z

    #@42
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@45
    .line 515
    :cond_4
    iget v1, p0, Landroid/app/DialogFragment;->mBackStackId:I

    #@47
    const/4 v2, -0x1

    #@48
    if-eq v1, v2, :cond_5

    #@4a
    .line 516
    const-string/jumbo v1, "android:backStackId"

    #@4d
    iget v2, p0, Landroid/app/DialogFragment;->mBackStackId:I

    #@4f
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@52
    .line 495
    :cond_5
    return-void
.end method

.method public onStart()V
    .locals 1

    #@0
    .prologue
    .line 487
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    #@3
    .line 488
    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 489
    const/4 v0, 0x0

    #@8
    iput-boolean v0, p0, Landroid/app/DialogFragment;->mViewDestroyed:Z

    #@a
    .line 490
    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@c
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    #@f
    .line 486
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    #@0
    .prologue
    .line 522
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    #@3
    .line 523
    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 524
    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@9
    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    #@c
    .line 521
    :cond_0
    return-void
.end method

.method public setCancelable(Z)V
    .locals 1
    .param p1, "cancelable"    # Z

    #@0
    .prologue
    .line 315
    iput-boolean p1, p0, Landroid/app/DialogFragment;->mCancelable:Z

    #@2
    .line 316
    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@8
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    #@b
    .line 314
    :cond_0
    return-void
.end method

.method public setShowsDialog(Z)V
    .locals 0
    .param p1, "showsDialog"    # Z

    #@0
    .prologue
    .line 344
    iput-boolean p1, p0, Landroid/app/DialogFragment;->mShowsDialog:Z

    #@2
    .line 343
    return-void
.end method

.method public setStyle(II)V
    .locals 2
    .param p1, "style"    # I
    .param p2, "theme"    # I

    #@0
    .prologue
    .line 205
    iput p1, p0, Landroid/app/DialogFragment;->mStyle:I

    #@2
    .line 206
    iget v0, p0, Landroid/app/DialogFragment;->mStyle:I

    #@4
    const/4 v1, 0x2

    #@5
    if-eq v0, v1, :cond_0

    #@7
    iget v0, p0, Landroid/app/DialogFragment;->mStyle:I

    #@9
    const/4 v1, 0x3

    #@a
    if-ne v0, v1, :cond_1

    #@c
    .line 207
    :cond_0
    const v0, 0x1030484

    #@f
    iput v0, p0, Landroid/app/DialogFragment;->mTheme:I

    #@11
    .line 209
    :cond_1
    if-eqz p2, :cond_2

    #@13
    .line 210
    iput p2, p0, Landroid/app/DialogFragment;->mTheme:I

    #@15
    .line 204
    :cond_2
    return-void
.end method

.method public show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I
    .locals 2
    .param p1, "transaction"    # Landroid/app/FragmentTransaction;
    .param p2, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 243
    iput-boolean v1, p0, Landroid/app/DialogFragment;->mDismissed:Z

    #@3
    .line 244
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Landroid/app/DialogFragment;->mShownByMe:Z

    #@6
    .line 245
    invoke-virtual {p1, p0, p2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    #@9
    .line 246
    iput-boolean v1, p0, Landroid/app/DialogFragment;->mViewDestroyed:Z

    #@b
    .line 247
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    #@e
    move-result v0

    #@f
    iput v0, p0, Landroid/app/DialogFragment;->mBackStackId:I

    #@11
    .line 248
    iget v0, p0, Landroid/app/DialogFragment;->mBackStackId:I

    #@13
    return v0
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 2
    .param p1, "manager"    # Landroid/app/FragmentManager;
    .param p2, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 226
    const/4 v1, 0x0

    #@1
    iput-boolean v1, p0, Landroid/app/DialogFragment;->mDismissed:Z

    #@3
    .line 227
    const/4 v1, 0x1

    #@4
    iput-boolean v1, p0, Landroid/app/DialogFragment;->mShownByMe:Z

    #@6
    .line 228
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    #@9
    move-result-object v0

    #@a
    .line 229
    .local v0, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {v0, p0, p2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    #@d
    .line 230
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    #@10
    .line 225
    return-void
.end method
