.class public Lcom/android/internal/view/menu/MenuDialogHelper;
.super Ljava/lang/Object;
.source "MenuDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/android/internal/view/menu/MenuPresenter$Callback;


# instance fields
.field private mDialog:Landroid/app/AlertDialog;

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field mPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

.field private mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 43
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@5
    .line 42
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    #@0
    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 139
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    #@6
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    #@9
    .line 137
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    #@0
    .prologue
    .line 167
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@2
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    #@4
    invoke-virtual {v0}, Lcom/android/internal/view/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    #@7
    move-result-object v0

    #@8
    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Lcom/android/internal/view/menu/MenuItemImpl;

    #@e
    const/4 v2, 0x0

    #@f
    invoke-virtual {v1, v0, v2}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    #@12
    .line 166
    return-void
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    #@0
    .prologue
    .line 150
    if-nez p2, :cond_0

    #@2
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@4
    if-ne p1, v0, :cond_1

    #@6
    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuDialogHelper;->dismiss()V

    #@9
    .line 153
    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    #@b
    if-eqz v0, :cond_2

    #@d
    .line 154
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    #@f
    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    #@12
    .line 149
    :cond_2
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    #@0
    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    #@2
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@4
    const/4 v2, 0x1

    #@5
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/menu/ListMenuPresenter;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    #@8
    .line 144
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    .line 93
    const/16 v3, 0x52

    #@4
    if-eq p2, v3, :cond_0

    #@6
    const/4 v3, 0x4

    #@7
    if-ne p2, v3, :cond_2

    #@9
    .line 94
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    #@c
    move-result v3

    #@d
    if-nez v3, :cond_1

    #@f
    .line 95
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@12
    move-result v3

    #@13
    if-nez v3, :cond_1

    #@15
    .line 96
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    #@17
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    #@1a
    move-result-object v2

    #@1b
    .line 97
    .local v2, "win":Landroid/view/Window;
    if-eqz v2, :cond_2

    #@1d
    .line 98
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@20
    move-result-object v0

    #@21
    .line 99
    .local v0, "decor":Landroid/view/View;
    if-eqz v0, :cond_2

    #@23
    .line 100
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    #@26
    move-result-object v1

    #@27
    .line 101
    .local v1, "ds":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_2

    #@29
    .line 102
    invoke-virtual {v1, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    #@2c
    .line 103
    return v4

    #@2d
    .line 107
    .end local v0    # "decor":Landroid/view/View;
    .end local v1    # "ds":Landroid/view/KeyEvent$DispatcherState;
    .end local v2    # "win":Landroid/view/Window;
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    #@30
    move-result v3

    #@31
    if-ne v3, v4, :cond_2

    #@33
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    #@36
    move-result v3

    #@37
    if-eqz v3, :cond_3

    #@39
    .line 124
    :cond_2
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@3b
    invoke-virtual {v3, p2, p3, v5}, Lcom/android/internal/view/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    #@3e
    move-result v3

    #@3f
    return v3

    #@40
    .line 108
    :cond_3
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    #@42
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    #@45
    move-result-object v2

    #@46
    .line 109
    .restart local v2    # "win":Landroid/view/Window;
    if-eqz v2, :cond_2

    #@48
    .line 110
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@4b
    move-result-object v0

    #@4c
    .line 111
    .restart local v0    # "decor":Landroid/view/View;
    if-eqz v0, :cond_2

    #@4e
    .line 112
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    #@51
    move-result-object v1

    #@52
    .line 113
    .restart local v1    # "ds":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_2

    #@54
    invoke-virtual {v1, p3}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    #@57
    move-result v3

    #@58
    if-eqz v3, :cond_2

    #@5a
    .line 114
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@5c
    invoke-virtual {v3, v4}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    #@5f
    .line 115
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    #@62
    .line 116
    return v4
.end method

.method public onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z
    .locals 1
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/MenuBuilder;

    #@0
    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 161
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    #@6
    invoke-interface {v0, p1}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 163
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method public setPresenterCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    #@0
    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    #@2
    .line 128
    return-void
.end method

.method public show(Landroid/os/IBinder;)V
    .locals 7
    .param p1, "windowToken"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 53
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@2
    .line 56
    .local v3, "menu":Lcom/android/internal/view/menu/MenuBuilder;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    #@4
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    #@7
    move-result-object v4

    #@8
    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    #@b
    .line 58
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v4, Lcom/android/internal/view/menu/ListMenuPresenter;

    #@d
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    #@10
    move-result-object v5

    #@11
    .line 59
    const v6, 0x1090076

    #@14
    .line 58
    invoke-direct {v4, v5, v6}, Lcom/android/internal/view/menu/ListMenuPresenter;-><init>(Landroid/content/Context;I)V

    #@17
    iput-object v4, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    #@19
    .line 61
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    #@1b
    invoke-virtual {v4, p0}, Lcom/android/internal/view/menu/ListMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    #@1e
    .line 62
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@20
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    #@22
    invoke-virtual {v4, v5}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    #@25
    .line 63
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    #@27
    invoke-virtual {v4}, Lcom/android/internal/view/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v0, v4, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    #@2e
    .line 66
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->getHeaderView()Landroid/view/View;

    #@31
    move-result-object v1

    #@32
    .line 67
    .local v1, "headerView":Landroid/view/View;
    if-eqz v1, :cond_1

    #@34
    .line 69
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    #@37
    .line 76
    :goto_0
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    #@3a
    .line 79
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    #@3d
    move-result-object v4

    #@3e
    iput-object v4, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    #@40
    .line 80
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    #@42
    invoke-virtual {v4, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    #@45
    .line 82
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    #@47
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    #@4a
    move-result-object v4

    #@4b
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@4e
    move-result-object v2

    #@4f
    .line 83
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x3eb

    #@51
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    #@53
    .line 84
    if-eqz p1, :cond_0

    #@55
    .line 85
    iput-object p1, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@57
    .line 87
    :cond_0
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@59
    const/high16 v5, 0x20000

    #@5b
    or-int/2addr v4, v5

    #@5c
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@5e
    .line 89
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    #@60
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    #@63
    .line 51
    return-void

    #@64
    .line 72
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->getHeaderIcon()Landroid/graphics/drawable/Drawable;

    #@67
    move-result-object v4

    #@68
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    #@6b
    move-result-object v4

    #@6c
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    #@6f
    move-result-object v5

    #@70
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    #@73
    goto :goto_0
.end method
