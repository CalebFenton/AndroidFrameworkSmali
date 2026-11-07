.class public Landroid/window/WindowContext;
.super Landroid/content/ContextWrapper;
.source "WindowContext.java"

# interfaces
.implements Landroid/window/WindowProvider;
.implements Landroid/window/ConfigurationDispatcher;


# instance fields
.field private final blacklist mCallbacksController:Landroid/content/ComponentCallbacksController;

.field private final blacklist mController:Landroid/window/WindowContextController;

.field private final blacklist mOptions:Landroid/os/Bundle;

.field private final blacklist mType:I

.field private final blacklist mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "base"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .line 77
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 54
    new-instance v0, Landroid/content/ComponentCallbacksController;

    invoke-direct {v0}, Landroid/content/ComponentCallbacksController;-><init>()V

    iput-object v0, p0, Landroid/window/WindowContext;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    .line 79
    iput p2, p0, Landroid/window/WindowContext;->mType:I

    .line 80
    iput-object p3, p0, Landroid/window/WindowContext;->mOptions:Landroid/os/Bundle;

    .line 81
    invoke-static {p0}, Landroid/view/WindowManagerImpl;->createWindowContextWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowContext;->mWindowManager:Landroid/view/WindowManager;

    .line 82
    invoke-virtual {p0}, Landroid/window/WindowContext;->getWindowContextToken()Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/window/WindowTokenClient;

    .line 83
    .local v0, "token":Landroid/window/WindowTokenClient;
    new-instance v1, Landroid/window/WindowContextController;

    invoke-direct {v1, v0}, Landroid/window/WindowContextController;-><init>(Landroid/window/WindowTokenClient;)V

    iput-object v1, p0, Landroid/window/WindowContext;->mController:Landroid/window/WindowContextController;

    .line 85
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 86
    return-void
.end method


# virtual methods
.method public blacklist attachToDisplayArea()V
    .registers 5

    .line 94
    iget-object v0, p0, Landroid/window/WindowContext;->mController:Landroid/window/WindowContextController;

    iget v1, p0, Landroid/window/WindowContext;->mType:I

    invoke-virtual {p0}, Landroid/window/WindowContext;->getDisplayId()I

    move-result v2

    iget-object v3, p0, Landroid/window/WindowContext;->mOptions:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/window/WindowContextController;->attachToDisplayArea(IILandroid/os/Bundle;)V

    .line 95
    return-void
.end method

.method public blacklist destroy()V
    .registers 2

    .line 138
    :try_start_0
    iget-object v0, p0, Landroid/window/WindowContext;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {v0}, Landroid/content/ComponentCallbacksController;->clearCallbacks()V

    .line 140
    invoke-virtual {p0}, Landroid/window/WindowContext;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->destroy()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_11

    .line 142
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 143
    nop

    .line 144
    return-void

    .line 142
    :catchall_11
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 143
    throw v0
.end method

.method public blacklist dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 159
    iget-object v0, p0, Landroid/window/WindowContext;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {v0, p1}, Landroid/content/ComponentCallbacksController;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 160
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 124
    invoke-virtual {p0}, Landroid/window/WindowContext;->release()V

    .line 125
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 126
    return-void
.end method

.method public whitelist getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 116
    const-string/jumbo v0, "window"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 117
    iget-object v0, p0, Landroid/window/WindowContext;->mWindowManager:Landroid/view/WindowManager;

    return-object v0

    .line 119
    :cond_c
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getWindowContextOptions()Landroid/os/Bundle;
    .registers 2

    .line 170
    iget-object v0, p0, Landroid/window/WindowContext;->mOptions:Landroid/os/Bundle;

    return-object v0
.end method

.method public blacklist getWindowType()I
    .registers 2

    .line 164
    iget v0, p0, Landroid/window/WindowContext;->mType:I

    return v0
.end method

.method public whitelist registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .registers 3
    .param p1, "callback"    # Landroid/content/ComponentCallbacks;

    .line 148
    iget-object v0, p0, Landroid/window/WindowContext;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {v0, p1}, Landroid/content/ComponentCallbacksController;->registerCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 149
    return-void
.end method

.method public blacklist release()V
    .registers 2

    .line 131
    iget-object v0, p0, Landroid/window/WindowContext;->mController:Landroid/window/WindowContextController;

    invoke-virtual {v0}, Landroid/window/WindowContextController;->detachIfNeeded()V

    .line 132
    invoke-virtual {p0}, Landroid/window/WindowContext;->destroy()V

    .line 133
    return-void
.end method

.method public blacklist reparentToDisplay(I)V
    .registers 5
    .param p1, "displayId"    # I

    .line 105
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->reparentWindowTokenApi()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 106
    invoke-virtual {p0}, Landroid/window/WindowContext;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_d

    .line 107
    return-void

    .line 109
    :cond_d
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->updateDisplay(I)V

    .line 110
    iget-object v0, p0, Landroid/window/WindowContext;->mController:Landroid/window/WindowContextController;

    iget v1, p0, Landroid/window/WindowContext;->mType:I

    iget-object v2, p0, Landroid/window/WindowContext;->mOptions:Landroid/os/Bundle;

    invoke-virtual {v0, v1, p1, v2}, Landroid/window/WindowContextController;->reparentToDisplayArea(IILandroid/os/Bundle;)V

    .line 112
    :cond_19
    return-void
.end method

.method public blacklist shouldReportPrivateChanges()Z
    .registers 2

    .line 176
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .registers 3
    .param p1, "callback"    # Landroid/content/ComponentCallbacks;

    .line 153
    iget-object v0, p0, Landroid/window/WindowContext;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {v0, p1}, Landroid/content/ComponentCallbacksController;->unregisterCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 154
    return-void
.end method
