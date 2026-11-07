.class public Lcom/android/internal/view/menu/MenuDialogHelper;
.super Ljava/lang/Object;
.source "MenuDialogHelper.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuHelper;
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/android/internal/view/menu/MenuPresenter$Callback;


# instance fields
.field private blacklist mDialog:Landroid/app/AlertDialog;

.field private blacklist mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field blacklist mPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

.field private blacklist mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;


# direct methods
.method public constructor greylist <init>(Lcom/android/internal/view/menu/MenuBuilder;)V
    .registers 2
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 43
    return-void
.end method


# virtual methods
.method public greylist dismiss()V
    .registers 2

    .line 141
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_9

    .line 142
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 144
    :cond_9
    return-void
.end method

.method public whitelist onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 170
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 171
    return-void
.end method

.method public blacklist onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .registers 4
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .line 153
    if-nez p2, :cond_6

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_9

    .line 154
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuDialogHelper;->dismiss()V

    .line 156
    :cond_9
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_12

    .line 157
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    .line 159
    :cond_12
    return-void
.end method

.method public whitelist onDismiss(Landroid/content/DialogInterface;)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 148
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    iget-object v1, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/menu/ListMenuPresenter;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    .line 149
    return-void
.end method

.method public whitelist onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 93
    const/16 v0, 0x52

    if-eq p2, v0, :cond_7

    const/4 v0, 0x4

    if-ne p2, v0, :cond_5c

    .line 94
    :cond_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2c

    .line 95
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2c

    .line 96
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 97
    .local v0, "win":Landroid/view/Window;
    if-eqz v0, :cond_5b

    .line 98
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 99
    .local v2, "decor":Landroid/view/View;
    if-eqz v2, :cond_5b

    .line 100
    invoke-virtual {v2}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v3

    .line 101
    .local v3, "ds":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v3, :cond_5b

    .line 102
    invoke-virtual {v3, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 103
    return v1

    .line 107
    .end local v0    # "win":Landroid/view/Window;
    .end local v2    # "decor":Landroid/view/View;
    .end local v3    # "ds":Landroid/view/KeyEvent$DispatcherState;
    :cond_2c
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_5b

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_5b

    .line 108
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 109
    .restart local v0    # "win":Landroid/view/Window;
    if-eqz v0, :cond_5c

    .line 110
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 111
    .restart local v2    # "decor":Landroid/view/View;
    if-eqz v2, :cond_5c

    .line 112
    invoke-virtual {v2}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v3

    .line 113
    .restart local v3    # "ds":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v3, :cond_5c

    invoke-virtual {v3, p3}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 114
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v4, v1}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    .line 115
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 116
    return v1

    .line 107
    .end local v0    # "win":Landroid/view/Window;
    .end local v2    # "decor":Landroid/view/View;
    .end local v3    # "ds":Landroid/view/KeyEvent$DispatcherState;
    :cond_5b
    nop

    .line 124
    :cond_5c
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Lcom/android/internal/view/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method public blacklist onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z
    .registers 3
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .line 163
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_b

    .line 164
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z

    move-result v0

    return v0

    .line 166
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setPresenterCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .registers 2
    .param p1, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 130
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 131
    return-void
.end method

.method public greylist show(Landroid/os/IBinder;)V
    .registers 8
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .line 53
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 56
    .local v0, "menu":Lcom/android/internal/view/menu/MenuBuilder;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 58
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v2, Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x10900ac

    invoke-direct {v2, v3, v4}, Lcom/android/internal/view/menu/ListMenuPresenter;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    .line 61
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v2, p0}, Lcom/android/internal/view/menu/ListMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 62
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v3, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 63
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 66
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->getHeaderView()Landroid/view/View;

    move-result-object v2

    .line 67
    .local v2, "headerView":Landroid/view/View;
    if-eqz v2, :cond_38

    .line 69
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    goto :goto_47

    .line 72
    :cond_38
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->getHeaderIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 76
    :goto_47
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 79
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    .line 80
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 82
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 83
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x3eb

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 84
    if-eqz p1, :cond_67

    .line 85
    iput-object p1, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 87
    :cond_67
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x20000

    or-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 89
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 90
    return-void
.end method
