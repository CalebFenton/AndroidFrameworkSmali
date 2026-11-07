.class public Landroid/window/SystemUiContext;
.super Landroid/content/ContextWrapper;
.source "SystemUiContext.java"

# interfaces
.implements Landroid/window/ConfigurationDispatcher;


# instance fields
.field private final blacklist mCallbacksController:Landroid/content/ComponentCallbacksController;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "base"    # Landroid/content/Context;

    .line 41
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v0, Landroid/content/ComponentCallbacksController;

    invoke-direct {v0}, Landroid/content/ComponentCallbacksController;-><init>()V

    iput-object v0, p0, Landroid/window/SystemUiContext;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    .line 42
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->trackSystemUiContextBeforeWms()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 46
    return-void

    .line 43
    :cond_11
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "SystemUiContext can only be used after flag is enabled."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 61
    iget-object v0, p0, Landroid/window/SystemUiContext;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {v0, p1}, Landroid/content/ComponentCallbacksController;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 62
    return-void
.end method

.method public whitelist registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .registers 3
    .param p1, "callback"    # Landroid/content/ComponentCallbacks;

    .line 50
    iget-object v0, p0, Landroid/window/SystemUiContext;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {v0, p1}, Landroid/content/ComponentCallbacksController;->registerCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 51
    return-void
.end method

.method public blacklist shouldReportPrivateChanges()Z
    .registers 2

    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .registers 3
    .param p1, "callback"    # Landroid/content/ComponentCallbacks;

    .line 55
    iget-object v0, p0, Landroid/window/SystemUiContext;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {v0, p1}, Landroid/content/ComponentCallbacksController;->unregisterCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 56
    return-void
.end method
