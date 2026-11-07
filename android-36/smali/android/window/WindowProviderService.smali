.class public abstract Landroid/window/WindowProviderService;
.super Landroid/app/Service;
.source "WindowProviderService.java"

# interfaces
.implements Landroid/window/WindowProvider;
.implements Landroid/window/ConfigurationDispatcher;


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mCallbacksController:Landroid/content/ComponentCallbacksController;

.field private final blacklist mController:Landroid/window/WindowContextController;

.field private blacklist mInitialized:Z

.field private final blacklist mOptions:Landroid/os/Bundle;

.field private blacklist mWindowManager:Landroid/view/WindowManager;

.field private final blacklist mWindowToken:Landroid/window/WindowTokenClient;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 58
    const-class v0, Landroid/window/WindowProviderService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/window/WindowProviderService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 4

    .line 81
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 61
    new-instance v0, Landroid/window/WindowTokenClient;

    invoke-direct {v0}, Landroid/window/WindowTokenClient;-><init>()V

    iput-object v0, p0, Landroid/window/WindowProviderService;->mWindowToken:Landroid/window/WindowTokenClient;

    .line 62
    new-instance v0, Landroid/window/WindowContextController;

    iget-object v1, p0, Landroid/window/WindowProviderService;->mWindowToken:Landroid/window/WindowTokenClient;

    invoke-direct {v0, v1}, Landroid/window/WindowContextController;-><init>(Landroid/window/WindowTokenClient;)V

    iput-object v0, p0, Landroid/window/WindowProviderService;->mController:Landroid/window/WindowContextController;

    .line 65
    new-instance v0, Landroid/content/ComponentCallbacksController;

    invoke-direct {v0}, Landroid/content/ComponentCallbacksController;-><init>()V

    iput-object v0, p0, Landroid/window/WindowProviderService;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    .line 82
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/window/WindowProviderService;->mOptions:Landroid/os/Bundle;

    .line 83
    iget-object v0, p0, Landroid/window/WindowProviderService;->mOptions:Landroid/os/Bundle;

    const-string v1, "android.windowContext.isWindowProviderService"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 84
    return-void
.end method

.method public static blacklist isWindowProviderService(Landroid/os/Bundle;)Z
    .registers 3
    .param p0, "windowContextOptions"    # Landroid/os/Bundle;

    .line 75
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 76
    return v0

    .line 78
    :cond_4
    const-string v1, "android.windowContext.isWindowProviderService"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected whitelist attachBaseContext(Landroid/content/Context;)V
    .registers 6
    .param p1, "newBase"    # Landroid/content/Context;

    .line 217
    invoke-super {p0, p1}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    .line 218
    iget-boolean v0, p0, Landroid/window/WindowProviderService;->mInitialized:Z

    if-nez v0, :cond_26

    .line 219
    iget-object v0, p0, Landroid/window/WindowProviderService;->mWindowToken:Landroid/window/WindowTokenClient;

    invoke-virtual {v0, p0}, Landroid/window/WindowTokenClient;->attachContext(Landroid/content/Context;)V

    .line 220
    iget-object v0, p0, Landroid/window/WindowProviderService;->mController:Landroid/window/WindowContextController;

    invoke-virtual {p0}, Landroid/window/WindowProviderService;->getWindowType()I

    move-result v1

    invoke-virtual {p0}, Landroid/window/WindowProviderService;->getDisplayId()I

    move-result v2

    .line 221
    invoke-virtual {p0}, Landroid/window/WindowProviderService;->getWindowContextOptions()Landroid/os/Bundle;

    move-result-object v3

    .line 220
    invoke-virtual {v0, v1, v2, v3}, Landroid/window/WindowContextController;->attachToDisplayArea(IILandroid/os/Bundle;)V

    .line 222
    invoke-static {p0}, Landroid/view/WindowManagerImpl;->createWindowContextWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowProviderService;->mWindowManager:Landroid/view/WindowManager;

    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/window/WindowProviderService;->mInitialized:Z

    .line 225
    :cond_26
    return-void
.end method

.method public final blacklist attachToWindowToken(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .line 193
    iget-object v0, p0, Landroid/window/WindowProviderService;->mController:Landroid/window/WindowContextController;

    invoke-virtual {v0, p1}, Landroid/window/WindowContextController;->attachToWindowToken(Landroid/os/IBinder;)V

    .line 194
    return-void
.end method

.method public final blacklist createServiceBaseContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/content/Context;
    .registers 10
    .param p1, "mainThread"    # Landroid/app/ActivityThread;
    .param p2, "packageInfo"    # Landroid/app/LoadedApk;

    .line 200
    invoke-super {p0, p1, p2}, Landroid/app/Service;->createServiceBaseContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/content/Context;

    move-result-object v0

    .line 201
    .local v0, "context":Landroid/content/Context;
    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 202
    .local v1, "displayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {p0}, Landroid/window/WindowProviderService;->getInitialDisplayId()I

    move-result v2

    .line 203
    .local v2, "initialDisplayId":I
    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v3

    .line 206
    .local v3, "display":Landroid/view/Display;
    if-nez v3, :cond_39

    .line 207
    sget-object v4, Landroid/window/WindowProviderService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Display with id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found, falling back to DEFAULT_DISPLAY"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v3

    .line 211
    :cond_39
    iget-object v4, p0, Landroid/window/WindowProviderService;->mWindowToken:Landroid/window/WindowTokenClient;

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->createTokenContext(Landroid/os/IBinder;Landroid/view/Display;)Landroid/content/Context;

    move-result-object v4

    return-object v4
.end method

.method public blacklist dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .line 253
    invoke-virtual {p0, p1}, Landroid/window/WindowProviderService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 254
    return-void
.end method

.method public blacklist getInitialDisplayId()I
    .registers 2

    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 232
    const-string/jumbo v0, "window"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 233
    iget-object v0, p0, Landroid/window/WindowProviderService;->mWindowManager:Landroid/view/WindowManager;

    return-object v0

    .line 235
    :cond_c
    invoke-super {p0, p1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getWindowContextOptions()Landroid/os/Bundle;
    .registers 2

    .line 128
    iget-object v0, p0, Landroid/window/WindowProviderService;->mOptions:Landroid/os/Bundle;

    return-object v0
.end method

.method public abstract blacklist getWindowType()I
.end method

.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .line 155
    iget-object v0, p0, Landroid/window/WindowProviderService;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {v0, p1}, Landroid/content/ComponentCallbacksController;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 156
    return-void
.end method

.method public whitelist onDestroy()V
    .registers 2

    .line 241
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 242
    iget-object v0, p0, Landroid/window/WindowProviderService;->mController:Landroid/window/WindowContextController;

    invoke-virtual {v0}, Landroid/window/WindowContextController;->detachIfNeeded()V

    .line 243
    iget-object v0, p0, Landroid/window/WindowProviderService;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {v0}, Landroid/content/ComponentCallbacksController;->clearCallbacks()V

    .line 244
    return-void
.end method

.method public whitelist onLowMemory()V
    .registers 2

    .line 164
    iget-object v0, p0, Landroid/window/WindowProviderService;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {v0}, Landroid/content/ComponentCallbacksController;->dispatchLowMemory()V

    .line 165
    return-void
.end method

.method public whitelist onTrimMemory(I)V
    .registers 3
    .param p1, "level"    # I

    .line 169
    iget-object v0, p0, Landroid/window/WindowProviderService;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {v0, p1}, Landroid/content/ComponentCallbacksController;->dispatchTrimMemory(I)V

    .line 170
    return-void
.end method

.method public whitelist registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .registers 3
    .param p1, "callback"    # Landroid/content/ComponentCallbacks;

    .line 142
    iget-object v0, p0, Landroid/window/WindowProviderService;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {v0, p1}, Landroid/content/ComponentCallbacksController;->registerCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 143
    return-void
.end method

.method public whitelist unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .registers 3
    .param p1, "callback"    # Landroid/content/ComponentCallbacks;

    .line 148
    iget-object v0, p0, Landroid/window/WindowProviderService;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {v0, p1}, Landroid/content/ComponentCallbacksController;->unregisterCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 149
    return-void
.end method
