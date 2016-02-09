.class Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;
.super Lcom/android/internal/widget/IRemoteViewsAdapterConnection$Stub;
.source "RemoteViewsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoteViewsAdapterServiceConnection"
.end annotation


# instance fields
.field private mAdapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/RemoteViewsAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mIsConnected:Z

.field private mIsConnecting:Z

.field private mRemoteViewsFactory:Lcom/android/internal/widget/IRemoteViewsFactory;


# direct methods
.method static synthetic -set0(Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnected:Z

    #@2
    return p1
.end method

.method static synthetic -set1(Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnecting:Z

    #@2
    return p1
.end method

.method public constructor <init>(Landroid/widget/RemoteViewsAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/RemoteViewsAdapter;

    #@0
    .prologue
    .line 148
    invoke-direct {p0}, Lcom/android/internal/widget/IRemoteViewsAdapterConnection$Stub;-><init>()V

    #@3
    .line 149
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@8
    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mAdapter:Ljava/lang/ref/WeakReference;

    #@a
    .line 148
    return-void
.end method


# virtual methods
.method public declared-synchronized bind(Landroid/content/Context;ILandroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetId"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 153
    :try_start_0
    iget-boolean v3, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnecting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-nez v3, :cond_0

    #@5
    .line 156
    :try_start_1
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    #@8
    move-result-object v2

    #@9
    .line 157
    .local v2, "mgr":Landroid/appwidget/AppWidgetManager;
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mAdapter:Ljava/lang/ref/WeakReference;

    #@b
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Landroid/widget/RemoteViewsAdapter;

    #@11
    .local v0, "adapter":Landroid/widget/RemoteViewsAdapter;
    if-eqz v0, :cond_1

    #@13
    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    .line 159
    invoke-virtual {p0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->asBinder()Landroid/os/IBinder;

    #@1a
    move-result-object v4

    #@1b
    .line 158
    invoke-virtual {v2, v3, p2, p3, v4}, Landroid/appwidget/AppWidgetManager;->bindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;Landroid/os/IBinder;)V

    #@1e
    .line 163
    :goto_0
    const/4 v3, 0x1

    #@1f
    iput-boolean v3, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnecting:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    .end local v0    # "adapter":Landroid/widget/RemoteViewsAdapter;
    .end local v2    # "mgr":Landroid/appwidget/AppWidgetManager;
    :cond_0
    :goto_1
    monitor-exit p0

    #@22
    .line 152
    return-void

    #@23
    .line 161
    .restart local v0    # "adapter":Landroid/widget/RemoteViewsAdapter;
    .restart local v2    # "mgr":Landroid/appwidget/AppWidgetManager;
    :cond_1
    :try_start_2
    const-string/jumbo v3, "RemoteViewsAdapter"

    #@26
    const-string/jumbo v4, "bind: adapter was null"

    #@29
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2c
    goto :goto_0

    #@2d
    .line 164
    .end local v0    # "adapter":Landroid/widget/RemoteViewsAdapter;
    .end local v2    # "mgr":Landroid/appwidget/AppWidgetManager;
    :catch_0
    move-exception v1

    #@2e
    .line 165
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v3, "RemoteViewsAdapterServiceConnection"

    #@31
    new-instance v4, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v5, "bind(): "

    #@39
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v4

    #@3d
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@40
    move-result-object v5

    #@41
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v4

    #@45
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v4

    #@49
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4c
    .line 166
    const/4 v3, 0x0

    #@4d
    iput-boolean v3, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnecting:Z

    #@4f
    .line 167
    const/4 v3, 0x0

    #@50
    iput-boolean v3, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnected:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@52
    goto :goto_1

    #@53
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    #@54
    monitor-exit p0

    #@55
    throw v3
.end method

.method public declared-synchronized getRemoteViewsFactory()Lcom/android/internal/widget/IRemoteViewsFactory;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 277
    :try_start_0
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mRemoteViewsFactory:Lcom/android/internal/widget/IRemoteViewsFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public declared-synchronized isConnected()Z
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 281
    :try_start_0
    iget-boolean v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public declared-synchronized onServiceConnected(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "service"    # Landroid/os/IBinder;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 190
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/IRemoteViewsFactory;

    #@4
    move-result-object v1

    #@5
    iput-object v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mRemoteViewsFactory:Lcom/android/internal/widget/IRemoteViewsFactory;

    #@7
    .line 193
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mAdapter:Ljava/lang/ref/WeakReference;

    #@9
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/widget/RemoteViewsAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    .line 194
    .local v0, "adapter":Landroid/widget/RemoteViewsAdapter;
    if-nez v0, :cond_0

    #@11
    monitor-exit p0

    #@12
    return-void

    #@13
    .line 197
    :cond_0
    :try_start_1
    invoke-static {v0}, Landroid/widget/RemoteViewsAdapter;->-get7(Landroid/widget/RemoteViewsAdapter;)Landroid/os/Handler;

    #@16
    move-result-object v1

    #@17
    new-instance v2, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;

    #@19
    invoke-direct {v2, p0, v0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;-><init>(Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;Landroid/widget/RemoteViewsAdapter;)V

    #@1c
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    monitor-exit p0

    #@20
    .line 189
    return-void

    #@21
    .end local v0    # "adapter":Landroid/widget/RemoteViewsAdapter;
    :catchall_0
    move-exception v1

    #@22
    monitor-exit p0

    #@23
    throw v1
.end method

.method public declared-synchronized onServiceDisconnected()V
    .locals 3

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 254
    const/4 v1, 0x0

    #@2
    :try_start_0
    iput-boolean v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnected:Z

    #@4
    .line 255
    const/4 v1, 0x0

    #@5
    iput-boolean v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnecting:Z

    #@7
    .line 256
    const/4 v1, 0x0

    #@8
    iput-object v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mRemoteViewsFactory:Lcom/android/internal/widget/IRemoteViewsFactory;

    #@a
    .line 259
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mAdapter:Ljava/lang/ref/WeakReference;

    #@c
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/widget/RemoteViewsAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 260
    .local v0, "adapter":Landroid/widget/RemoteViewsAdapter;
    if-nez v0, :cond_0

    #@14
    monitor-exit p0

    #@15
    return-void

    #@16
    .line 262
    :cond_0
    :try_start_1
    invoke-static {v0}, Landroid/widget/RemoteViewsAdapter;->-get2(Landroid/widget/RemoteViewsAdapter;)Landroid/os/Handler;

    #@19
    move-result-object v1

    #@1a
    new-instance v2, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$2;

    #@1c
    invoke-direct {v2, p0, v0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$2;-><init>(Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;Landroid/widget/RemoteViewsAdapter;)V

    #@1f
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    monitor-exit p0

    #@23
    .line 253
    return-void

    #@24
    .end local v0    # "adapter":Landroid/widget/RemoteViewsAdapter;
    :catchall_0
    move-exception v1

    #@25
    monitor-exit p0

    #@26
    throw v1
.end method

.method public declared-synchronized unbind(Landroid/content/Context;ILandroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetId"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 175
    :try_start_0
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    #@4
    move-result-object v2

    #@5
    .line 176
    .local v2, "mgr":Landroid/appwidget/AppWidgetManager;
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mAdapter:Ljava/lang/ref/WeakReference;

    #@7
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/widget/RemoteViewsAdapter;

    #@d
    .local v0, "adapter":Landroid/widget/RemoteViewsAdapter;
    if-eqz v0, :cond_0

    #@f
    .line 177
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v2, v3, p2, p3}, Landroid/appwidget/AppWidgetManager;->unbindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;)V

    #@16
    .line 181
    :goto_0
    const/4 v3, 0x0

    #@17
    iput-boolean v3, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnecting:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .end local v0    # "adapter":Landroid/widget/RemoteViewsAdapter;
    .end local v2    # "mgr":Landroid/appwidget/AppWidgetManager;
    :goto_1
    monitor-exit p0

    #@1a
    .line 172
    return-void

    #@1b
    .line 179
    .restart local v0    # "adapter":Landroid/widget/RemoteViewsAdapter;
    .restart local v2    # "mgr":Landroid/appwidget/AppWidgetManager;
    :cond_0
    :try_start_1
    const-string/jumbo v3, "RemoteViewsAdapter"

    #@1e
    const-string/jumbo v4, "unbind: adapter was null"

    #@21
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    goto :goto_0

    #@25
    .line 182
    .end local v0    # "adapter":Landroid/widget/RemoteViewsAdapter;
    .end local v2    # "mgr":Landroid/appwidget/AppWidgetManager;
    :catch_0
    move-exception v1

    #@26
    .line 183
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v3, "RemoteViewsAdapterServiceConnection"

    #@29
    new-instance v4, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v5, "unbind(): "

    #@31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@38
    move-result-object v5

    #@39
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v4

    #@3d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v4

    #@41
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@44
    .line 184
    const/4 v3, 0x0

    #@45
    iput-boolean v3, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnecting:Z

    #@47
    .line 185
    const/4 v3, 0x0

    #@48
    iput-boolean v3, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnected:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4a
    goto :goto_1

    #@4b
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    #@4c
    monitor-exit p0

    #@4d
    throw v3
.end method
