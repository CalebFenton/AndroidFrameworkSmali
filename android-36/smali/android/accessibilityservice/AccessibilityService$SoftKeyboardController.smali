.class public final Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;
.super Ljava/lang/Object;
.source "AccessibilityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/AccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SoftKeyboardController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;,
        Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$EnableImeResult;
    }
.end annotation


# static fields
.field public static final whitelist ENABLE_IME_FAIL_BY_ADMIN:I = 0x1

.field public static final whitelist ENABLE_IME_FAIL_UNKNOWN:I = 0x2

.field public static final whitelist ENABLE_IME_SUCCESS:I


# instance fields
.field private greylist-max-o mListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private final greylist-max-o mService:Landroid/accessibilityservice/AccessibilityService;


# direct methods
.method constructor greylist-max-o <init>(Landroid/accessibilityservice/AccessibilityService;Ljava/lang/Object;)V
    .registers 3
    .param p1, "service"    # Landroid/accessibilityservice/AccessibilityService;
    .param p2, "lock"    # Ljava/lang/Object;

    .line 2107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2108
    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 2109
    iput-object p2, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mLock:Ljava/lang/Object;

    .line 2110
    return-void
.end method

.method private greylist-max-o setSoftKeyboardCallbackEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .line 2189
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 2190
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->-$$Nest$fgetmConnectionId(Landroid/accessibilityservice/AccessibilityService;)I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 2192
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_1c

    .line 2194
    :try_start_11
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setSoftKeyboardCallbackEnabled(Z)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_15

    .line 2197
    goto :goto_1c

    .line 2195
    :catch_15
    move-exception v1

    .line 2196
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 2199
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_1c
    :goto_1c
    return-void
.end method


# virtual methods
.method public whitelist addOnShowModeChangedListener(Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;

    .line 2128
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->addOnShowModeChangedListener(Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;Landroid/os/Handler;)V

    .line 2129
    return-void
.end method

.method public whitelist addOnShowModeChangedListener(Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;Landroid/os/Handler;)V
    .registers 6
    .param p1, "listener"    # Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 2142
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2143
    :try_start_3
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mListeners:Landroid/util/ArrayMap;

    if-nez v1, :cond_e

    .line 2144
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mListeners:Landroid/util/ArrayMap;

    .line 2147
    :cond_e
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    .line 2148
    .local v1, "shouldEnableCallback":Z
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2150
    if-eqz v1, :cond_1f

    .line 2153
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->setSoftKeyboardCallbackEnabled(Z)V

    .line 2155
    .end local v1    # "shouldEnableCallback":Z
    :cond_1f
    monitor-exit v0

    .line 2156
    return-void

    .line 2155
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method greylist-max-o dispatchSoftKeyboardShowModeChanged(I)V
    .registers 8
    .param p1, "showMode"    # I

    .line 2207
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2208
    :try_start_3
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mListeners:Landroid/util/ArrayMap;

    if-eqz v1, :cond_3d

    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_3d

    .line 2217
    :cond_10
    new-instance v1, Landroid/util/ArrayMap;

    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mListeners:Landroid/util/ArrayMap;

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 2218
    .local v1, "entries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;Landroid/os/Handler;>;"
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_4a

    .line 2220
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .local v2, "count":I
    :goto_1d
    if-ge v0, v2, :cond_3c

    .line 2221
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;

    .line 2222
    .local v3, "listener":Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Handler;

    .line 2223
    .local v4, "handler":Landroid/os/Handler;
    if-eqz v4, :cond_36

    .line 2224
    new-instance v5, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$1;

    invoke-direct {v5, p0, v3, p1}, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$1;-><init>(Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_39

    .line 2232
    :cond_36
    invoke-interface {v3, p0, p1}, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;->onShowModeChanged(Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;I)V

    .line 2220
    .end local v3    # "listener":Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;
    .end local v4    # "handler":Landroid/os/Handler;
    :goto_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 2235
    .end local v0    # "i":I
    .end local v2    # "count":I
    :cond_3c
    return-void

    .line 2209
    .end local v1    # "entries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;Landroid/os/Handler;>;"
    :cond_3d
    :goto_3d
    :try_start_3d
    const-string v1, "AccessibilityService"

    const-string v2, "Received soft keyboard show mode changed callback with no listeners registered!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->setSoftKeyboardCallbackEnabled(Z)V

    .line 2212
    monitor-exit v0

    return-void

    .line 2218
    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3d .. :try_end_4c} :catchall_4a

    throw v1
.end method

.method public whitelist getShowMode()I
    .registers 5

    .line 2248
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 2249
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->-$$Nest$fgetmConnectionId(Landroid/accessibilityservice/AccessibilityService;)I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 2251
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_21

    .line 2253
    :try_start_11
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getSoftKeyboardShowMode()I

    move-result v1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_15} :catch_16

    return v1

    .line 2254
    :catch_16
    move-exception v1

    .line 2255
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityService"

    const-string v3, "Failed to set soft keyboard behavior"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2256
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 2259
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_21
    const/4 v1, 0x0

    return v1
.end method

.method greylist-max-o onServiceConnected()V
    .registers 3

    .line 2116
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2117
    :try_start_3
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mListeners:Landroid/util/ArrayMap;

    if-eqz v1, :cond_13

    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13

    .line 2118
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->setSoftKeyboardCallbackEnabled(Z)V

    .line 2120
    :cond_13
    monitor-exit v0

    .line 2121
    return-void

    .line 2120
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public whitelist removeOnShowModeChangedListener(Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;)Z
    .registers 7
    .param p1, "listener"    # Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;

    .line 2167
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mListeners:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2168
    return v1

    .line 2171
    :cond_6
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2172
    :try_start_9
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v2

    .line 2173
    .local v2, "keyIndex":I
    if-ltz v2, :cond_13

    const/4 v3, 0x1

    goto :goto_14

    :cond_13
    move v3, v1

    .line 2174
    .local v3, "hasKey":Z
    :goto_14
    if-eqz v3, :cond_1b

    .line 2175
    iget-object v4, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 2178
    :cond_1b
    if-eqz v3, :cond_28

    iget-object v4, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 2181
    invoke-direct {p0, v1}, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->setSoftKeyboardCallbackEnabled(Z)V

    .line 2184
    :cond_28
    monitor-exit v0

    return v3

    .line 2185
    .end local v2    # "keyIndex":I
    .end local v3    # "hasKey":Z
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public whitelist setInputMethodEnabled(Ljava/lang/String;Z)I
    .registers 6
    .param p1, "imeId"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2356
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 2357
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->-$$Nest$fgetmConnectionId(Landroid/accessibilityservice/AccessibilityService;)I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 2359
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_1d

    .line 2361
    :try_start_11
    invoke-interface {v0, p1, p2}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setInputMethodEnabled(Ljava/lang/String;Z)I

    move-result v1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_15} :catch_16

    return v1

    .line 2362
    :catch_16
    move-exception v1

    .line 2363
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 2366
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_1d
    const/4 v1, 0x2

    return v1
.end method

.method public whitelist setShowMode(I)Z
    .registers 6
    .param p1, "showMode"    # I

    .line 2277
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 2278
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->-$$Nest$fgetmConnectionId(Landroid/accessibilityservice/AccessibilityService;)I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 2280
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_21

    .line 2282
    :try_start_11
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setSoftKeyboardShowMode(I)Z

    move-result v1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_15} :catch_16

    return v1

    .line 2283
    :catch_16
    move-exception v1

    .line 2284
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityService"

    const-string v3, "Failed to set soft keyboard behavior"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2285
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 2288
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_21
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist switchToInputMethod(Ljava/lang/String;)Z
    .registers 5
    .param p1, "imeId"    # Ljava/lang/String;

    .line 2323
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 2324
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->-$$Nest$fgetmConnectionId(Landroid/accessibilityservice/AccessibilityService;)I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 2326
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_1d

    .line 2328
    :try_start_11
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->switchToInputMethod(Ljava/lang/String;)Z

    move-result v1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_15} :catch_16

    return v1

    .line 2329
    :catch_16
    move-exception v1

    .line 2330
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 2333
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_1d
    const/4 v1, 0x0

    return v1
.end method
