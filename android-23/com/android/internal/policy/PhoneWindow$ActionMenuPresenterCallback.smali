.class final Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActionMenuPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/PhoneWindow;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/PhoneWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/policy/PhoneWindow;

    #@0
    .prologue
    .line 2175
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/policy/PhoneWindow;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;-><init>(Lcom/android/internal/policy/PhoneWindow;)V

    #@3
    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    #@0
    .prologue
    .line 2188
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->checkCloseActionMenu(Landroid/view/Menu;)V

    #@5
    .line 2187
    return-void
.end method

.method public onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z
    .locals 2
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/MenuBuilder;

    #@0
    .prologue
    .line 2178
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@2
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@5
    move-result-object v0

    #@6
    .line 2179
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    #@8
    .line 2180
    const/16 v1, 0x8

    #@a
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    #@d
    .line 2181
    const/4 v1, 0x1

    #@e
    return v1

    #@f
    .line 2183
    :cond_0
    const/4 v1, 0x0

    #@10
    return v1
.end method
