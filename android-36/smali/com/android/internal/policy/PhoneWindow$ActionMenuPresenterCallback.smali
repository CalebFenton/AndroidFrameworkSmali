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
.field final synthetic blacklist this$0:Lcom/android/internal/policy/PhoneWindow;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/policy/PhoneWindow;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2486
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/policy/PhoneWindow-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;-><init>(Lcom/android/internal/policy/PhoneWindow;)V

    return-void
.end method


# virtual methods
.method public blacklist onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .registers 4
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .line 2499
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->checkCloseActionMenu(Landroid/view/Menu;)V

    .line 2500
    return-void
.end method

.method public blacklist onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z
    .registers 4
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .line 2489
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2490
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_f

    .line 2491
    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 2492
    const/4 v1, 0x1

    return v1

    .line 2494
    :cond_f
    const/4 v1, 0x0

    return v1
.end method
