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
        Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;
    }
.end annotation


# instance fields
.field private mListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mService:Landroid/accessibilityservice/AccessibilityService;


# direct methods
.method constructor <init>(Landroid/accessibilityservice/AccessibilityService;Ljava/lang/Object;)V
    .locals 0
    .param p1, "service"    # Landroid/accessibilityservice/AccessibilityService;
    .param p2, "lock"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1107
    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mService:Landroid/accessibilityservice/AccessibilityService;

    #@5
    .line 1108
    iput-object p2, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mLock:Ljava/lang/Object;

    #@7
    .line 1106
    return-void
.end method

.method private setSoftKeyboardCallbackEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 1188
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@3
    move-result-object v2

    #@4
    .line 1189
    iget-object v3, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mService:Landroid/accessibilityservice/AccessibilityService;

    #@6
    invoke-static {v3}, Landroid/accessibilityservice/AccessibilityService;->-get0(Landroid/accessibilityservice/AccessibilityService;)I

    #@9
    move-result v3

    #@a
    .line 1188
    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    #@d
    move-result-object v0

    #@e
    .line 1190
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_0

    #@10
    .line 1192
    :try_start_0
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setSoftKeyboardCallbackEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 1186
    :cond_0
    return-void

    #@14
    .line 1193
    :catch_0
    move-exception v1

    #@15
    .line 1194
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@17
    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@1a
    throw v2
.end method


# virtual methods
.method public addOnShowModeChangedListener(Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;

    #@0
    .prologue
    .line 1127
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->addOnShowModeChangedListener(Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;Landroid/os/Handler;)V

    #@4
    .line 1126
    return-void
.end method

.method public addOnShowModeChangedListener(Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;Landroid/os/Handler;)V
    .locals 3
    .param p1, "listener"    # Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1141
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 1142
    :try_start_0
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mListeners:Landroid/util/ArrayMap;

    #@5
    if-nez v1, :cond_0

    #@7
    .line 1143
    new-instance v1, Landroid/util/ArrayMap;

    #@9
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    #@c
    iput-object v1, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mListeners:Landroid/util/ArrayMap;

    #@e
    .line 1146
    :cond_0
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mListeners:Landroid/util/ArrayMap;

    #@10
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    #@13
    move-result v0

    #@14
    .line 1147
    .local v0, "shouldEnableCallback":Z
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mListeners:Landroid/util/ArrayMap;

    #@16
    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    .line 1149
    if-eqz v0, :cond_1

    #@1b
    .line 1152
    const/4 v1, 0x1

    #@1c
    invoke-direct {p0, v1}, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->setSoftKeyboardCallbackEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    :cond_1
    monitor-exit v2

    #@20
    .line 1140
    return-void

    #@21
    .line 1141
    .end local v0    # "shouldEnableCallback":Z
    :catchall_0
    move-exception v1

    #@22
    monitor-exit v2

    #@23
    throw v1
.end method

.method dispatchSoftKeyboardShowModeChanged(I)V
    .locals 8
    .param p1, "showMode"    # I

    #@0
    .prologue
    .line 1205
    iget-object v6, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v6

    #@3
    .line 1206
    :try_start_0
    iget-object v5, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mListeners:Landroid/util/ArrayMap;

    #@5
    if-eqz v5, :cond_0

    #@7
    iget-object v5, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mListeners:Landroid/util/ArrayMap;

    #@9
    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    #@c
    move-result v5

    #@d
    if-eqz v5, :cond_1

    #@f
    .line 1207
    :cond_0
    const-string/jumbo v5, "AccessibilityService"

    #@12
    const-string/jumbo v7, "Received soft keyboard show mode changed callback with no listeners registered!"

    #@15
    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    .line 1209
    const/4 v5, 0x0

    #@19
    invoke-direct {p0, v5}, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->setSoftKeyboardCallbackEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    monitor-exit v6

    #@1d
    .line 1210
    return-void

    #@1e
    .line 1215
    :cond_1
    :try_start_1
    new-instance v1, Landroid/util/ArrayMap;

    #@20
    iget-object v5, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mListeners:Landroid/util/ArrayMap;

    #@22
    invoke-direct {v1, v5}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    .local v1, "entries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;Landroid/os/Handler;>;"
    monitor-exit v6

    #@26
    .line 1218
    const/4 v3, 0x0

    #@27
    .local v3, "i":I
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    #@2a
    move-result v0

    #@2b
    .local v0, "count":I
    :goto_0
    if-ge v3, v0, :cond_3

    #@2d
    .line 1219
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@30
    move-result-object v4

    #@31
    check-cast v4, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;

    #@33
    .line 1220
    .local v4, "listener":Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@36
    move-result-object v2

    #@37
    check-cast v2, Landroid/os/Handler;

    #@39
    .line 1221
    .local v2, "handler":Landroid/os/Handler;
    if-eqz v2, :cond_2

    #@3b
    .line 1222
    new-instance v5, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$1;

    #@3d
    invoke-direct {v5, p0, v4, p1}, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$1;-><init>(Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;I)V

    #@40
    invoke-virtual {v2, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@43
    .line 1218
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@45
    goto :goto_0

    #@46
    .line 1205
    .end local v0    # "count":I
    .end local v1    # "entries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;Landroid/os/Handler;>;"
    .end local v2    # "handler":Landroid/os/Handler;
    .end local v3    # "i":I
    .end local v4    # "listener":Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;
    :catchall_0
    move-exception v5

    #@47
    monitor-exit v6

    #@48
    throw v5

    #@49
    .line 1230
    .restart local v0    # "count":I
    .restart local v1    # "entries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;Landroid/os/Handler;>;"
    .restart local v2    # "handler":Landroid/os/Handler;
    .restart local v3    # "i":I
    .restart local v4    # "listener":Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;
    :cond_2
    invoke-interface {v4, p0, p1}, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;->onShowModeChanged(Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;I)V

    #@4c
    goto :goto_1

    #@4d
    .line 1203
    .end local v2    # "handler":Landroid/os/Handler;
    .end local v4    # "listener":Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;
    :cond_3
    return-void
.end method

.method public getShowMode()I
    .locals 3

    #@0
    .prologue
    .line 1246
    :try_start_0
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mService:Landroid/accessibilityservice/AccessibilityService;

    #@2
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v1

    #@6
    .line 1247
    const-string/jumbo v2, "accessibility_soft_keyboard_mode"

    #@9
    .line 1246
    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result v1

    #@d
    return v1

    #@e
    .line 1248
    :catch_0
    move-exception v0

    #@f
    .line 1249
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v1, "AccessibilityService"

    #@12
    const-string/jumbo v2, "Failed to obtain the soft keyboard mode"

    #@15
    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@18
    .line 1251
    const/4 v1, 0x0

    #@19
    return v1
.end method

.method onServiceConnected()V
    .locals 2

    #@0
    .prologue
    .line 1115
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1116
    :try_start_0
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mListeners:Landroid/util/ArrayMap;

    #@5
    if-eqz v0, :cond_0

    #@7
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mListeners:Landroid/util/ArrayMap;

    #@9
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_1

    #@f
    :cond_0
    :goto_0
    monitor-exit v1

    #@10
    .line 1114
    return-void

    #@11
    .line 1117
    :cond_1
    const/4 v0, 0x1

    #@12
    :try_start_1
    invoke-direct {p0, v0}, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->setSoftKeyboardCallbackEnabled(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    goto :goto_0

    #@16
    .line 1115
    :catchall_0
    move-exception v0

    #@17
    monitor-exit v1

    #@18
    throw v0
.end method

.method public removeOnShowModeChangedListener(Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;)Z
    .locals 4
    .param p1, "listener"    # Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1165
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mListeners:Landroid/util/ArrayMap;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 1166
    return v3

    #@6
    .line 1169
    :cond_0
    iget-object v3, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mLock:Ljava/lang/Object;

    #@8
    monitor-enter v3

    #@9
    .line 1170
    :try_start_0
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mListeners:Landroid/util/ArrayMap;

    #@b
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    #@e
    move-result v1

    #@f
    .line 1171
    .local v1, "keyIndex":I
    if-ltz v1, :cond_3

    #@11
    const/4 v0, 0x1

    #@12
    .line 1172
    .local v0, "hasKey":Z
    :goto_0
    if-eqz v0, :cond_1

    #@14
    .line 1173
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mListeners:Landroid/util/ArrayMap;

    #@16
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    #@19
    .line 1176
    :cond_1
    if-eqz v0, :cond_2

    #@1b
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mListeners:Landroid/util/ArrayMap;

    #@1d
    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_2

    #@23
    .line 1179
    const/4 v2, 0x0

    #@24
    invoke-direct {p0, v2}, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->setSoftKeyboardCallbackEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    :cond_2
    monitor-exit v3

    #@28
    .line 1182
    return v0

    #@29
    .line 1171
    .end local v0    # "hasKey":Z
    :cond_3
    const/4 v0, 0x0

    #@2a
    .restart local v0    # "hasKey":Z
    goto :goto_0

    #@2b
    .line 1169
    .end local v0    # "hasKey":Z
    .end local v1    # "keyIndex":I
    :catchall_0
    move-exception v2

    #@2c
    monitor-exit v3

    #@2d
    throw v2
.end method

.method public setShowMode(I)Z
    .locals 4
    .param p1, "showMode"    # I

    #@0
    .prologue
    .line 1272
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@3
    move-result-object v2

    #@4
    .line 1273
    iget-object v3, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mService:Landroid/accessibilityservice/AccessibilityService;

    #@6
    invoke-static {v3}, Landroid/accessibilityservice/AccessibilityService;->-get0(Landroid/accessibilityservice/AccessibilityService;)I

    #@9
    move-result v3

    #@a
    .line 1272
    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    #@d
    move-result-object v0

    #@e
    .line 1274
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_0

    #@10
    .line 1276
    :try_start_0
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setSoftKeyboardShowMode(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result v2

    #@14
    return v2

    #@15
    .line 1277
    :catch_0
    move-exception v1

    #@16
    .line 1278
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "AccessibilityService"

    #@19
    const-string/jumbo v3, "Failed to set soft keyboard behavior"

    #@1c
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1f
    .line 1279
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@22
    .line 1282
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    #@23
    return v2
.end method
