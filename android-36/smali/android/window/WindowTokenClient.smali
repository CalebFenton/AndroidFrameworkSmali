.class public Landroid/window/WindowTokenClient;
.super Landroid/os/Binder;
.source "WindowTokenClient.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mConfiguration:Landroid/content/res/Configuration;

.field private blacklist mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mResourcesManager:Landroid/app/ResourcesManager;

.field private blacklist mShouldDumpConfigForIme:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 59
    const-class v0, Landroid/window/WindowTokenClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/window/WindowTokenClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/WindowTokenClient;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 67
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowTokenClient;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 69
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/window/WindowTokenClient;->mConfiguration:Landroid/content/res/Configuration;

    .line 74
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowTokenClient;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public blacklist attachContext(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 86
    iget-object v0, p0, Landroid/window/WindowTokenClient;->mContextRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_19

    .line 89
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/window/WindowTokenClient;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 90
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_15

    instance-of v0, p1, Landroid/inputmethodservice/AbstractInputMethodService;

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    iput-boolean v0, p0, Landroid/window/WindowTokenClient;->mShouldDumpConfigForIme:Z

    .line 92
    return-void

    .line 87
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Context is already attached."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getClientTransactionListenerController()Landroid/app/servertransaction/ClientTransactionListenerController;
    .registers 2

    .line 247
    invoke-static {}, Landroid/app/servertransaction/ClientTransactionListenerController;->getInstance()Landroid/app/servertransaction/ClientTransactionListenerController;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getContext()Landroid/content/Context;
    .registers 2

    .line 100
    iget-object v0, p0, Landroid/window/WindowTokenClient;->mContextRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/window/WindowTokenClient;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return-object v0
.end method

.method public blacklist onConfigurationChanged(Landroid/content/res/Configuration;I)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .param p2, "newDisplayId"    # I

    .line 112
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/window/WindowTokenClient;->onConfigurationChanged(Landroid/content/res/Configuration;IZ)V

    .line 113
    return-void
.end method

.method public blacklist onConfigurationChanged(Landroid/content/res/Configuration;IZ)V
    .registers 7
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .param p2, "newDisplayId"    # I
    .param p3, "shouldReportConfigChange"    # Z

    .line 143
    iget-object v0, p0, Landroid/window/WindowTokenClient;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 144
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_b

    .line 145
    return-void

    .line 147
    :cond_b
    if-eqz p3, :cond_22

    .line 149
    nop

    .line 150
    invoke-virtual {p0}, Landroid/window/WindowTokenClient;->getClientTransactionListenerController()Landroid/app/servertransaction/ClientTransactionListenerController;

    move-result-object v1

    .line 151
    .local v1, "controller":Landroid/app/servertransaction/ClientTransactionListenerController;
    invoke-virtual {v1, v0}, Landroid/app/servertransaction/ClientTransactionListenerController;->onContextConfigurationPreChanged(Landroid/content/Context;)V

    .line 153
    :try_start_15
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/window/WindowTokenClient;->onConfigurationChangedInner(Landroid/content/Context;Landroid/content/res/Configuration;IZ)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_1d

    .line 156
    invoke-virtual {v1, v0}, Landroid/app/servertransaction/ClientTransactionListenerController;->onContextConfigurationPostChanged(Landroid/content/Context;)V

    .line 157
    nop

    .line 158
    .end local v1    # "controller":Landroid/app/servertransaction/ClientTransactionListenerController;
    goto :goto_25

    .line 156
    .restart local v1    # "controller":Landroid/app/servertransaction/ClientTransactionListenerController;
    :catchall_1d
    move-exception v2

    invoke-virtual {v1, v0}, Landroid/app/servertransaction/ClientTransactionListenerController;->onContextConfigurationPostChanged(Landroid/content/Context;)V

    .line 157
    throw v2

    .line 159
    .end local v1    # "controller":Landroid/app/servertransaction/ClientTransactionListenerController;
    :cond_22
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/window/WindowTokenClient;->onConfigurationChangedInner(Landroid/content/Context;Landroid/content/res/Configuration;IZ)V

    .line 161
    :goto_25
    return-void
.end method

.method public blacklist onConfigurationChangedInner(Landroid/content/Context;Landroid/content/res/Configuration;IZ)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "newConfig"    # Landroid/content/res/Configuration;
    .param p3, "newDisplayId"    # I
    .param p4, "shouldReportConfigChange"    # Z

    .line 167
    invoke-static {p2}, Landroid/content/res/CompatibilityInfo;->applyOverrideIfNeeded(Landroid/content/res/Configuration;)V

    .line 173
    iget-object v1, p0, Landroid/window/WindowTokenClient;->mConfiguration:Landroid/content/res/Configuration;

    monitor-enter v1

    .line 174
    :try_start_6
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    invoke-static {v0, p3}, Landroid/window/ConfigurationHelper;->isDifferentDisplay(II)Z

    move-result v0

    move v6, v0

    .line 175
    .local v6, "displayChanged":Z
    iget-object v3, p0, Landroid/window/WindowTokenClient;->mConfiguration:Landroid/content/res/Configuration;
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_12e

    const/4 v7, 0x0

    move-object v5, p2

    move-object v2, p0

    move-object v4, p2

    .end local p2    # "newConfig":Landroid/content/res/Configuration;
    .local v4, "newConfig":Landroid/content/res/Configuration;
    :try_start_15
    invoke-static/range {v2 .. v7}, Landroid/window/ConfigurationHelper;->shouldUpdateResources(Landroid/os/IBinder;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;ZLjava/lang/Boolean;)Z

    move-result p2

    .line 178
    .local p2, "shouldUpdateResources":Z
    iget-object v0, v2, Landroid/window/WindowTokenClient;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v4}, Landroid/content/res/Configuration;->diffPublicOnly(Landroid/content/res/Configuration;)I

    move-result v0

    .line 179
    .local v0, "publicDiff":I
    iget-boolean v3, v2, Landroid/window/WindowTokenClient;->mShouldDumpConfigForIme:Z

    if-eqz v3, :cond_2b

    new-instance v3, Landroid/content/res/Configuration;

    iget-object v5, v2, Landroid/window/WindowTokenClient;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v3, v5}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    goto :goto_2c

    :cond_2b
    const/4 v3, 0x0

    .line 180
    .local v3, "currentConfig":Landroid/content/res/Configuration;
    :goto_2c
    if-eqz p2, :cond_33

    .line 181
    iget-object v5, v2, Landroid/window/WindowTokenClient;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v5, v4}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 183
    :cond_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_15 .. :try_end_34} :catchall_134

    .line 185
    if-nez p2, :cond_78

    iget-boolean v1, v2, Landroid/window/WindowTokenClient;->mShouldDumpConfigForIme:Z

    if-eqz v1, :cond_78

    .line 186
    sget-object v1, Landroid/window/WindowTokenClient;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Configuration not dispatch to IME because configuration is up to date. Current config="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 187
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", reported config="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", updated config="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", updated display ID="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 186
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_78
    if-eqz v6, :cond_7d

    .line 195
    invoke-virtual {p1, p3}, Landroid/content/Context;->updateDisplay(I)V

    .line 197
    :cond_7d
    if-eqz p2, :cond_12d

    .line 199
    iget-object v1, v2, Landroid/window/WindowTokenClient;->mResourcesManager:Landroid/app/ResourcesManager;

    invoke-virtual {v1, p0, v4, p3}, Landroid/app/ResourcesManager;->updateResourcesForActivity(Landroid/os/IBinder;Landroid/content/res/Configuration;I)V

    .line 201
    if-eqz p4, :cond_98

    instance-of v1, p1, Landroid/window/ConfigurationDispatcher;

    if-eqz v1, :cond_98

    move-object v1, p1

    check-cast v1, Landroid/window/ConfigurationDispatcher;

    .line 204
    .local v1, "dispatcher":Landroid/window/ConfigurationDispatcher;
    invoke-interface {v1}, Landroid/window/ConfigurationDispatcher;->shouldReportPrivateChanges()Z

    move-result v5

    if-nez v5, :cond_95

    if-eqz v0, :cond_98

    .line 205
    :cond_95
    invoke-interface {v1, v4}, Landroid/window/ConfigurationDispatcher;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 209
    .end local v1    # "dispatcher":Landroid/window/ConfigurationDispatcher;
    :cond_98
    invoke-static {v0}, Landroid/window/ConfigurationHelper;->freeTextLayoutCachesIfNeeded(I)V

    .line 210
    iget-boolean v1, v2, Landroid/window/WindowTokenClient;->mShouldDumpConfigForIme:Z

    if-eqz v1, :cond_12d

    .line 211
    if-nez p4, :cond_e9

    .line 212
    sget-object v1, Landroid/window/WindowTokenClient;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Only apply configuration update to Resources because shouldReportConfigChange is false. context="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", config="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 215
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", display ID="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 216
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 217
    const/4 v7, 0x5

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 212
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12d

    .line 218
    :cond_e9
    if-nez v0, :cond_12d

    .line 219
    sget-object v1, Landroid/window/WindowTokenClient;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Configuration not dispatch to IME because configuration has no  public difference with updated config.  Current config="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 221
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", reported config="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", updated config="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", display ID="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 224
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 219
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_12d
    :goto_12d
    return-void

    .line 183
    .end local v0    # "publicDiff":I
    .end local v3    # "currentConfig":Landroid/content/res/Configuration;
    .end local v4    # "newConfig":Landroid/content/res/Configuration;
    .end local v6    # "displayChanged":Z
    .local p2, "newConfig":Landroid/content/res/Configuration;
    :catchall_12e
    move-exception v0

    move-object v2, p0

    move-object v4, p2

    move-object p2, v0

    .end local p2    # "newConfig":Landroid/content/res/Configuration;
    .restart local v4    # "newConfig":Landroid/content/res/Configuration;
    :goto_132
    :try_start_132
    monitor-exit v1
    :try_end_133
    .catchall {:try_start_132 .. :try_end_133} :catchall_134

    throw p2

    :catchall_134
    move-exception v0

    move-object p2, v0

    goto :goto_132
.end method

.method public blacklist onWindowTokenRemoved()V
    .registers 3

    .line 236
    iget-object v0, p0, Landroid/window/WindowTokenClient;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 237
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_12

    .line 238
    invoke-virtual {v0}, Landroid/content/Context;->destroy()V

    .line 239
    iget-object v1, p0, Landroid/window/WindowTokenClient;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 241
    :cond_12
    return-void
.end method

.method public blacklist postOnConfigurationChanged(Landroid/content/res/Configuration;I)V
    .registers 7
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .param p2, "newDisplayId"    # I

    .line 120
    iget-object v0, p0, Landroid/window/WindowTokenClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/window/WindowTokenClient$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/window/WindowTokenClient$$ExternalSyntheticLambda0;-><init>(Landroid/window/WindowTokenClient;)V

    .line 121
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 120
    invoke-static {v1, p1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 121
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 120
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 122
    return-void
.end method
