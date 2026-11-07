.class final Landroid/inputmethodservice/NavigationBarController;
.super Ljava/lang/Object;
.source "NavigationBarController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/NavigationBarController$Impl;,
        Landroid/inputmethodservice/NavigationBarController$Callback;
    }
.end annotation


# instance fields
.field private final blacklist mImpl:Landroid/inputmethodservice/NavigationBarController$Callback;


# direct methods
.method constructor blacklist <init>(Landroid/inputmethodservice/InputMethodService;)V
    .registers 3
    .param p1, "inputMethodService"    # Landroid/inputmethodservice/InputMethodService;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-static {}, Landroid/inputmethodservice/InputMethodService;->canImeRenderGesturalNavButtons()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 103
    new-instance v0, Landroid/inputmethodservice/NavigationBarController$Impl;

    invoke-direct {v0, p1}, Landroid/inputmethodservice/NavigationBarController$Impl;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    goto :goto_11

    :cond_f
    sget-object v0, Landroid/inputmethodservice/NavigationBarController$Callback;->NOOP:Landroid/inputmethodservice/NavigationBarController$Callback;

    :goto_11
    iput-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mImpl:Landroid/inputmethodservice/NavigationBarController$Callback;

    .line 104
    return-void
.end method


# virtual methods
.method blacklist isShown()Z
    .registers 2

    .line 144
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mImpl:Landroid/inputmethodservice/NavigationBarController$Callback;

    invoke-interface {v0}, Landroid/inputmethodservice/NavigationBarController$Callback;->isShown()Z

    move-result v0

    return v0
.end method

.method blacklist onDestroy()V
    .registers 2

    .line 133
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mImpl:Landroid/inputmethodservice/NavigationBarController$Callback;

    invoke-interface {v0}, Landroid/inputmethodservice/NavigationBarController$Callback;->onDestroy()V

    .line 134
    return-void
.end method

.method blacklist onNavButtonFlagsChanged(I)V
    .registers 3
    .param p1, "navButtonFlags"    # I

    .line 137
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mImpl:Landroid/inputmethodservice/NavigationBarController$Callback;

    invoke-interface {v0, p1}, Landroid/inputmethodservice/NavigationBarController$Callback;->onNavButtonFlagsChanged(I)V

    .line 138
    return-void
.end method

.method blacklist onSoftInputWindowCreated(Landroid/inputmethodservice/SoftInputWindow;)V
    .registers 3
    .param p1, "softInputWindow"    # Landroid/inputmethodservice/SoftInputWindow;

    .line 121
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mImpl:Landroid/inputmethodservice/NavigationBarController$Callback;

    invoke-interface {v0, p1}, Landroid/inputmethodservice/NavigationBarController$Callback;->onSoftInputWindowCreated(Landroid/inputmethodservice/SoftInputWindow;)V

    .line 122
    return-void
.end method

.method blacklist onViewInitialized()V
    .registers 2

    .line 125
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mImpl:Landroid/inputmethodservice/NavigationBarController$Callback;

    invoke-interface {v0}, Landroid/inputmethodservice/NavigationBarController$Callback;->onViewInitialized()V

    .line 126
    return-void
.end method

.method blacklist onWindowShown()V
    .registers 2

    .line 129
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mImpl:Landroid/inputmethodservice/NavigationBarController$Callback;

    invoke-interface {v0}, Landroid/inputmethodservice/NavigationBarController$Callback;->onWindowShown()V

    .line 130
    return-void
.end method

.method blacklist toDebugString()Ljava/lang/String;
    .registers 2

    .line 148
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mImpl:Landroid/inputmethodservice/NavigationBarController$Callback;

    invoke-interface {v0}, Landroid/inputmethodservice/NavigationBarController$Callback;->toDebugString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist updateInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V
    .registers 3
    .param p1, "originalInsets"    # Landroid/inputmethodservice/InputMethodService$Insets;

    .line 112
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mImpl:Landroid/inputmethodservice/NavigationBarController$Callback;

    invoke-interface {v0, p1}, Landroid/inputmethodservice/NavigationBarController$Callback;->updateInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V

    .line 113
    return-void
.end method

.method blacklist updateTouchableInsets(Landroid/inputmethodservice/InputMethodService$Insets;Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .registers 4
    .param p1, "originalInsets"    # Landroid/inputmethodservice/InputMethodService$Insets;
    .param p2, "dest"    # Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .line 117
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mImpl:Landroid/inputmethodservice/NavigationBarController$Callback;

    invoke-interface {v0, p1, p2}, Landroid/inputmethodservice/NavigationBarController$Callback;->updateTouchableInsets(Landroid/inputmethodservice/InputMethodService$Insets;Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    .line 118
    return-void
.end method
