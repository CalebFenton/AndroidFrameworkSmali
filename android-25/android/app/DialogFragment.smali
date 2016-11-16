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
    .line 267
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Landroid/app/DialogFragment;->dismissInternal(Z)V

    #@4
    .line 266
    return-void
.end method

.method public dismissAllowingStateLoss()V
    .locals 1

    #@0
    .prologue
    .line 277
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Landroid/app/DialogFragment;->dismissInternal(Z)V

    #@4
    .line 276
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
    .line 281
    iget-boolean v1, p0, Landroid/app/DialogFragment;->mDismissed:Z

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 282
    return-void

    #@8
    .line 284
    :cond_0
    iput-boolean v3, p0, Landroid/app/DialogFragment;->mDismissed:Z

    #@a
    .line 285
    iput-boolean v2, p0, Landroid/app/DialogFragment;->mShownByMe:Z

    #@c
    .line 286
    iget-object v1, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 287
    iget-object v1, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@12
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    #@15
    .line 288
    iput-object v4, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@17
    .line 290
    :cond_1
    iput-boolean v3, p0, Landroid/app/DialogFragment;->mViewDestroyed:Z

    #@19
    .line 291
    iget v1, p0, Landroid/app/DialogFragment;->mBackStackId:I

    #@1b
    if-ltz v1, :cond_2

    #@1d
    .line 292
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    #@20
    move-result-object v1

    #@21
    iget v2, p0, Landroid/app/DialogFragment;->mBackStackId:I

    #@23
    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentManager;->popBackStack(II)V

    #@26
    .line 294
    const/4 v1, -0x1

    #@27
    iput v1, p0, Landroid/app/DialogFragment;->mBackStackId:I

    #@29
    .line 280
    :goto_0
    return-void

    #@2a
    .line 296
    :cond_2
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    #@31
    move-result-object v0

    #@32
    .line 297
    .local v0, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    #@35
    .line 298
    if-eqz p1, :cond_3

    #@37
    .line 299
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    #@3a
    goto :goto_0

    #@3b
    .line 301
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
    .line 558
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@3
    .line 559
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6
    const-string/jumbo v0, "DialogFragment:"

    #@9
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c
    .line 560
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
    .line 561
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
    .line 562
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
    .line 563
    const-string/jumbo v0, " mShowsDialog="

    #@3a
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3d
    iget-boolean v0, p0, Landroid/app/DialogFragment;->mShowsDialog:Z

    #@3f
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@42
    .line 564
    const-string/jumbo v0, " mBackStackId="

    #@45
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@48
    iget v0, p0, Landroid/app/DialogFragment;->mBackStackId:I

    #@4a
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    #@4d
    .line 565
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
    .line 566
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
    .line 567
    const-string/jumbo v0, " mDismissed="

    #@6c
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6f
    iget-boolean v0, p0, Landroid/app/DialogFragment;->mDismissed:Z

    #@71
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@74
    .line 568
    const-string/jumbo v0, " mShownByMe="

    #@77
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7a
    iget-boolean v0, p0, Landroid/app/DialogFragment;->mShownByMe:Z

    #@7c
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@7f
    .line 557
    return-void
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 1

    #@0
    .prologue
    .line 307
    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@2
    return-object v0
.end method

.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 402
    iget-boolean v0, p0, Landroid/app/DialogFragment;->mShowsDialog:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 403
    invoke-super {p0, p1}, Landroid/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 406
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@f
    .line 407
    iget v0, p0, Landroid/app/DialogFragment;->mStyle:I

    #@11
    packed-switch v0, :pswitch_data_0

    #@14
    .line 417
    :goto_0
    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 418
    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@1a
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    #@1d
    move-result-object v0

    #@1e
    .line 419
    const-string/jumbo v1, "layout_inflater"

    #@21
    .line 418
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Landroid/view/LayoutInflater;

    #@27
    return-object v0

    #@28
    .line 409
    :pswitch_0
    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@2a
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    #@2d
    move-result-object v0

    #@2e
    .line 410
    const/16 v1, 0x18

    #@30
    .line 409
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    #@33
    .line 415
    :pswitch_1
    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@35
    const/4 v1, 0x1

    #@36
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    #@39
    goto :goto_0

    #@3a
    .line 421
    :cond_1
    iget-object v0, p0, Landroid/app/DialogFragment;->mHost:Landroid/app/FragmentHostCallback;

    #@3c
    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    #@3f
    move-result-object v0

    #@40
    .line 422
    const-string/jumbo v1, "layout_inflater"

    #@43
    .line 421
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@46
    move-result-object v0

    #@47
    check-cast v0, Landroid/view/LayoutInflater;

    #@49
    return-object v0

    #@4a
    .line 407
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
    .line 360
    iget-boolean v0, p0, Landroid/app/DialogFragment;->mShowsDialog:Z

    #@2
    return v0
.end method

.method public getTheme()I
    .locals 1

    #@0
    .prologue
    .line 311
    iget v0, p0, Landroid/app/DialogFragment;->mTheme:I

    #@2
    return v0
.end method

.method public isCancelable()Z
    .locals 1

    #@0
    .prologue
    .line 332
    iget-boolean v0, p0, Landroid/app/DialogFragment;->mCancelable:Z

    #@2
    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 466
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    #@3
    .line 468
    iget-boolean v3, p0, Landroid/app/DialogFragment;->mShowsDialog:Z

    #@5
    if-nez v3, :cond_0

    #@7
    .line 469
    return-void

    #@8
    .line 472
    :cond_0
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getView()Landroid/view/View;

    #@b
    move-result-object v2

    #@c
    .line 473
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_2

    #@e
    .line 474
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@11
    move-result-object v3

    #@12
    if-eqz v3, :cond_1

    #@14
    .line 475
    new-instance v3, Ljava/lang/IllegalStateException;

    #@16
    .line 476
    const-string/jumbo v4, "DialogFragment can not be attached to a container view"

    #@19
    .line 475
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v3

    #@1d
    .line 478
    :cond_1
    iget-object v3, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@1f
    invoke-virtual {v3, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    #@22
    .line 480
    :cond_2
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    #@25
    move-result-object v0

    #@26
    .line 481
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_3

    #@28
    .line 482
    iget-object v3, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@2a
    invoke-virtual {v3, v0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    #@2d
    .line 484
    :cond_3
    iget-object v3, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@2f
    iget-boolean v4, p0, Landroid/app/DialogFragment;->mCancelable:Z

    #@31
    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    #@34
    .line 485
    iget-object v3, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@36
    const-string/jumbo v4, "DialogFragment"

    #@39
    invoke-virtual {v3, v4, p0, p0}, Landroid/app/Dialog;->takeCancelAndDismissListeners(Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;)Z

    #@3c
    move-result v3

    #@3d
    if-nez v3, :cond_4

    #@3f
    .line 486
    new-instance v3, Ljava/lang/IllegalStateException;

    #@41
    .line 487
    const-string/jumbo v4, "You can not set Dialog\'s OnCancelListener or OnDismissListener"

    #@44
    .line 486
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@47
    throw v3

    #@48
    .line 489
    :cond_4
    if-eqz p1, :cond_5

    #@4a
    .line 490
    const-string/jumbo v3, "android:savedDialogState"

    #@4d
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@50
    move-result-object v1

    #@51
    .line 491
    .local v1, "dialogState":Landroid/os/Bundle;
    if-eqz v1, :cond_5

    #@53
    .line 492
    iget-object v3, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@55
    invoke-virtual {v3, v1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    #@58
    .line 465
    .end local v1    # "dialogState":Landroid/os/Bundle;
    :cond_5
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 365
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/content/Context;)V

    #@3
    .line 366
    iget-boolean v0, p0, Landroid/app/DialogFragment;->mShownByMe:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 369
    const/4 v0, 0x0

    #@8
    iput-boolean v0, p0, Landroid/app/DialogFragment;->mDismissed:Z

    #@a
    .line 364
    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    #@0
    .prologue
    .line 451
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
    .line 386
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    #@5
    .line 388
    iget v0, p0, Landroid/app/DialogFragment;->mContainerId:I

    #@7
    if-nez v0, :cond_1

    #@9
    move v0, v1

    #@a
    :goto_0
    iput-boolean v0, p0, Landroid/app/DialogFragment;->mShowsDialog:Z

    #@c
    .line 390
    if-eqz p1, :cond_0

    #@e
    .line 391
    const-string/jumbo v0, "android:style"

    #@11
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@14
    move-result v0

    #@15
    iput v0, p0, Landroid/app/DialogFragment;->mStyle:I

    #@17
    .line 392
    const-string/jumbo v0, "android:theme"

    #@1a
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@1d
    move-result v0

    #@1e
    iput v0, p0, Landroid/app/DialogFragment;->mTheme:I

    #@20
    .line 393
    const-string/jumbo v0, "android:cancelable"

    #@23
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@26
    move-result v0

    #@27
    iput-boolean v0, p0, Landroid/app/DialogFragment;->mCancelable:Z

    #@29
    .line 394
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
    .line 395
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
    .line 385
    :cond_0
    return-void

    #@3f
    :cond_1
    move v0, v2

    #@40
    .line 388
    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 448
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
    .line 545
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    #@4
    .line 546
    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 550
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Landroid/app/DialogFragment;->mViewDestroyed:Z

    #@b
    .line 551
    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@d
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    #@10
    .line 552
    iput-object v1, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@12
    .line 544
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    #@0
    .prologue
    .line 375
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    #@3
    .line 376
    iget-boolean v0, p0, Landroid/app/DialogFragment;->mShownByMe:Z

    #@5
    if-nez v0, :cond_0

    #@7
    iget-boolean v0, p0, Landroid/app/DialogFragment;->mDismissed:Z

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 374
    :cond_0
    :goto_0
    return-void

    #@c
    .line 380
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
    .line 455
    iget-boolean v0, p0, Landroid/app/DialogFragment;->mViewDestroyed:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 460
    const/4 v0, 0x1

    #@5
    invoke-virtual {p0, v0}, Landroid/app/DialogFragment;->dismissInternal(Z)V

    #@8
    .line 454
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 508
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    #@3
    .line 509
    iget-object v1, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 510
    iget-object v1, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@9
    invoke-virtual {v1}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    #@c
    move-result-object v0

    #@d
    .line 511
    .local v0, "dialogState":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    #@f
    .line 512
    const-string/jumbo v1, "android:savedDialogState"

    #@12
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@15
    .line 515
    .end local v0    # "dialogState":Landroid/os/Bundle;
    :cond_0
    iget v1, p0, Landroid/app/DialogFragment;->mStyle:I

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 516
    const-string/jumbo v1, "android:style"

    #@1c
    iget v2, p0, Landroid/app/DialogFragment;->mStyle:I

    #@1e
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@21
    .line 518
    :cond_1
    iget v1, p0, Landroid/app/DialogFragment;->mTheme:I

    #@23
    if-eqz v1, :cond_2

    #@25
    .line 519
    const-string/jumbo v1, "android:theme"

    #@28
    iget v2, p0, Landroid/app/DialogFragment;->mTheme:I

    #@2a
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@2d
    .line 521
    :cond_2
    iget-boolean v1, p0, Landroid/app/DialogFragment;->mCancelable:Z

    #@2f
    if-nez v1, :cond_3

    #@31
    .line 522
    const-string/jumbo v1, "android:cancelable"

    #@34
    iget-boolean v2, p0, Landroid/app/DialogFragment;->mCancelable:Z

    #@36
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@39
    .line 524
    :cond_3
    iget-boolean v1, p0, Landroid/app/DialogFragment;->mShowsDialog:Z

    #@3b
    if-nez v1, :cond_4

    #@3d
    .line 525
    const-string/jumbo v1, "android:showsDialog"

    #@40
    iget-boolean v2, p0, Landroid/app/DialogFragment;->mShowsDialog:Z

    #@42
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@45
    .line 527
    :cond_4
    iget v1, p0, Landroid/app/DialogFragment;->mBackStackId:I

    #@47
    const/4 v2, -0x1

    #@48
    if-eq v1, v2, :cond_5

    #@4a
    .line 528
    const-string/jumbo v1, "android:backStackId"

    #@4d
    iget v2, p0, Landroid/app/DialogFragment;->mBackStackId:I

    #@4f
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@52
    .line 507
    :cond_5
    return-void
.end method

.method public onStart()V
    .locals 1

    #@0
    .prologue
    .line 499
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    #@3
    .line 500
    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 501
    const/4 v0, 0x0

    #@8
    iput-boolean v0, p0, Landroid/app/DialogFragment;->mViewDestroyed:Z

    #@a
    .line 502
    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@c
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    #@f
    .line 498
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    #@0
    .prologue
    .line 534
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    #@3
    .line 535
    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 536
    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@9
    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    #@c
    .line 533
    :cond_0
    return-void
.end method

.method public setCancelable(Z)V
    .locals 1
    .param p1, "cancelable"    # Z

    #@0
    .prologue
    .line 324
    iput-boolean p1, p0, Landroid/app/DialogFragment;->mCancelable:Z

    #@2
    .line 325
    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@8
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    #@b
    .line 323
    :cond_0
    return-void
.end method

.method public setShowsDialog(Z)V
    .locals 0
    .param p1, "showsDialog"    # Z

    #@0
    .prologue
    .line 353
    iput-boolean p1, p0, Landroid/app/DialogFragment;->mShowsDialog:Z

    #@2
    .line 352
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
    const v0, 0x103048b

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
    .line 252
    iput-boolean v1, p0, Landroid/app/DialogFragment;->mDismissed:Z

    #@3
    .line 253
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Landroid/app/DialogFragment;->mShownByMe:Z

    #@6
    .line 254
    invoke-virtual {p1, p0, p2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    #@9
    .line 255
    iput-boolean v1, p0, Landroid/app/DialogFragment;->mViewDestroyed:Z

    #@b
    .line 256
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    #@e
    move-result v0

    #@f
    iput v0, p0, Landroid/app/DialogFragment;->mBackStackId:I

    #@11
    .line 257
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

.method public showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 2
    .param p1, "manager"    # Landroid/app/FragmentManager;
    .param p2, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 235
    const/4 v1, 0x0

    #@1
    iput-boolean v1, p0, Landroid/app/DialogFragment;->mDismissed:Z

    #@3
    .line 236
    const/4 v1, 0x1

    #@4
    iput-boolean v1, p0, Landroid/app/DialogFragment;->mShownByMe:Z

    #@6
    .line 237
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    #@9
    move-result-object v0

    #@a
    .line 238
    .local v0, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {v0, p0, p2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    #@d
    .line 239
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    #@10
    .line 234
    return-void
.end method
