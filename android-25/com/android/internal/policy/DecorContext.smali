.class Lcom/android/internal/policy/DecorContext;
.super Landroid/view/ContextThemeWrapper;
.source "DecorContext.java"


# instance fields
.field private mActivityResources:Landroid/content/res/Resources;

.field private mPhoneWindow:Lcom/android/internal/policy/PhoneWindow;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityResources"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 39
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    #@4
    .line 40
    iput-object p2, p0, Lcom/android/internal/policy/DecorContext;->mActivityResources:Landroid/content/res/Resources;

    #@6
    .line 38
    return-void
.end method


# virtual methods
.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    #@0
    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/DecorContext;->mActivityResources:Landroid/content/res/Resources;

    #@2
    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    #@0
    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/policy/DecorContext;->mActivityResources:Landroid/content/res/Resources;

    #@2
    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 50
    const-string/jumbo v1, "window"

    #@3
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_1

    #@9
    .line 51
    iget-object v1, p0, Lcom/android/internal/policy/DecorContext;->mWindowManager:Landroid/view/WindowManager;

    #@b
    if-nez v1, :cond_0

    #@d
    .line 53
    const-string/jumbo v1, "window"

    #@10
    invoke-super {p0, v1}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/view/WindowManagerImpl;

    #@16
    .line 54
    .local v0, "wm":Landroid/view/WindowManagerImpl;
    iget-object v1, p0, Lcom/android/internal/policy/DecorContext;->mPhoneWindow:Lcom/android/internal/policy/PhoneWindow;

    #@18
    invoke-virtual {v0, v1}, Landroid/view/WindowManagerImpl;->createLocalWindowManager(Landroid/view/Window;)Landroid/view/WindowManagerImpl;

    #@1b
    move-result-object v1

    #@1c
    iput-object v1, p0, Lcom/android/internal/policy/DecorContext;->mWindowManager:Landroid/view/WindowManager;

    #@1e
    .line 56
    .end local v0    # "wm":Landroid/view/WindowManagerImpl;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/DecorContext;->mWindowManager:Landroid/view/WindowManager;

    #@20
    return-object v1

    #@21
    .line 58
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@24
    move-result-object v1

    #@25
    return-object v1
.end method

.method setPhoneWindow(Lcom/android/internal/policy/PhoneWindow;)V
    .locals 1
    .param p1, "phoneWindow"    # Lcom/android/internal/policy/PhoneWindow;

    #@0
    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/internal/policy/DecorContext;->mPhoneWindow:Lcom/android/internal/policy/PhoneWindow;

    #@2
    .line 45
    const/4 v0, 0x0

    #@3
    iput-object v0, p0, Lcom/android/internal/policy/DecorContext;->mWindowManager:Landroid/view/WindowManager;

    #@5
    .line 43
    return-void
.end method
