.class Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;
.super Lcom/android/internal/widget/IRemoteViewsFactory$Stub;
.source "RemoteViewsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoteViewsFactoryAdapter"
.end annotation


# instance fields
.field private mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

.field private mIsCreated:Z


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViewsService$RemoteViewsFactory;Z)V
    .locals 0
    .param p1, "factory"    # Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .param p2, "isCreated"    # Z

    #@0
    .prologue
    .line 133
    invoke-direct {p0}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;-><init>()V

    #@3
    .line 134
    iput-object p1, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    #@5
    .line 135
    iput-boolean p2, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mIsCreated:Z

    #@7
    .line 133
    return-void
.end method


# virtual methods
.method public declared-synchronized getCount()I
    .locals 4

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 152
    const/4 v0, 0x0

    #@2
    .line 154
    .local v0, "count":I
    :try_start_0
    iget-object v3, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    #@4
    invoke-interface {v3}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    move-result v0

    #@8
    :goto_0
    monitor-exit p0

    #@9
    .line 159
    return v0

    #@a
    .line 155
    :catch_0
    move-exception v1

    #@b
    .line 156
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@e
    move-result-object v2

    #@f
    .line 157
    .local v2, "t":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    #@12
    move-result-object v3

    #@13
    invoke-interface {v3, v2, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    goto :goto_0

    #@17
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v2    # "t":Ljava/lang/Thread;
    :catchall_0
    move-exception v3

    #@18
    monitor-exit p0

    #@19
    throw v3
.end method

.method public declared-synchronized getItemId(I)J
    .locals 5
    .param p1, "position"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 195
    const-wide/16 v2, 0x0

    #@3
    .line 197
    .local v2, "id":J
    :try_start_0
    iget-object v4, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    #@5
    invoke-interface {v4, p1}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->getItemId(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-wide v2

    #@9
    :goto_0
    monitor-exit p0

    #@a
    .line 202
    return-wide v2

    #@b
    .line 198
    :catch_0
    move-exception v0

    #@c
    .line 199
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@f
    move-result-object v1

    #@10
    .line 200
    .local v1, "t":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    #@13
    move-result-object v4

    #@14
    invoke-interface {v4, v1, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@17
    goto :goto_0

    #@18
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "t":Ljava/lang/Thread;
    :catchall_0
    move-exception v4

    #@19
    monitor-exit p0

    #@1a
    throw v4
.end method

.method public declared-synchronized getLoadingView()Landroid/widget/RemoteViews;
    .locals 4

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 175
    const/4 v1, 0x0

    #@2
    .line 177
    .local v1, "rv":Landroid/widget/RemoteViews;
    :try_start_0
    iget-object v3, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    #@4
    invoke-interface {v3}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->getLoadingView()Landroid/widget/RemoteViews;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    move-result-object v1

    #@8
    .end local v1    # "rv":Landroid/widget/RemoteViews;
    :goto_0
    monitor-exit p0

    #@9
    .line 182
    return-object v1

    #@a
    .line 178
    .restart local v1    # "rv":Landroid/widget/RemoteViews;
    :catch_0
    move-exception v0

    #@b
    .line 179
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@e
    move-result-object v2

    #@f
    .line 180
    .local v2, "t":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    #@12
    move-result-object v3

    #@13
    invoke-interface {v3, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    goto :goto_0

    #@17
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v2    # "t":Ljava/lang/Thread;
    :catchall_0
    move-exception v3

    #@18
    monitor-exit p0

    #@19
    throw v3
.end method

.method public declared-synchronized getViewAt(I)Landroid/widget/RemoteViews;
    .locals 4
    .param p1, "position"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 162
    const/4 v1, 0x0

    #@2
    .line 164
    .local v1, "rv":Landroid/widget/RemoteViews;
    :try_start_0
    iget-object v3, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    #@4
    invoke-interface {v3, p1}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->getViewAt(I)Landroid/widget/RemoteViews;

    #@7
    move-result-object v1

    #@8
    .line 165
    .local v1, "rv":Landroid/widget/RemoteViews;
    if-eqz v1, :cond_0

    #@a
    .line 166
    const/4 v3, 0x1

    #@b
    invoke-virtual {v1, v3}, Landroid/widget/RemoteViews;->setIsWidgetCollectionChild(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    .end local v1    # "rv":Landroid/widget/RemoteViews;
    :cond_0
    :goto_0
    monitor-exit p0

    #@f
    .line 172
    return-object v1

    #@10
    .line 168
    :catch_0
    move-exception v0

    #@11
    .line 169
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@14
    move-result-object v2

    #@15
    .line 170
    .local v2, "t":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    #@18
    move-result-object v3

    #@19
    invoke-interface {v3, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    goto :goto_0

    #@1d
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v2    # "t":Ljava/lang/Thread;
    :catchall_0
    move-exception v3

    #@1e
    monitor-exit p0

    #@1f
    throw v3
.end method

.method public declared-synchronized getViewTypeCount()I
    .locals 4

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 185
    const/4 v0, 0x0

    #@2
    .line 187
    .local v0, "count":I
    :try_start_0
    iget-object v3, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    #@4
    invoke-interface {v3}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->getViewTypeCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    move-result v0

    #@8
    :goto_0
    monitor-exit p0

    #@9
    .line 192
    return v0

    #@a
    .line 188
    :catch_0
    move-exception v1

    #@b
    .line 189
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@e
    move-result-object v2

    #@f
    .line 190
    .local v2, "t":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    #@12
    move-result-object v3

    #@13
    invoke-interface {v3, v2, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    goto :goto_0

    #@17
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v2    # "t":Ljava/lang/Thread;
    :catchall_0
    move-exception v3

    #@18
    monitor-exit p0

    #@19
    throw v3
.end method

.method public declared-synchronized hasStableIds()Z
    .locals 4

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 205
    const/4 v1, 0x0

    #@2
    .line 207
    .local v1, "hasStableIds":Z
    :try_start_0
    iget-object v3, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    #@4
    invoke-interface {v3}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->hasStableIds()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    move-result v1

    #@8
    .end local v1    # "hasStableIds":Z
    :goto_0
    monitor-exit p0

    #@9
    .line 212
    return v1

    #@a
    .line 208
    .restart local v1    # "hasStableIds":Z
    :catch_0
    move-exception v0

    #@b
    .line 209
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@e
    move-result-object v2

    #@f
    .line 210
    .local v2, "t":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    #@12
    move-result-object v3

    #@13
    invoke-interface {v3, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    goto :goto_0

    #@17
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v2    # "t":Ljava/lang/Thread;
    :catchall_0
    move-exception v3

    #@18
    monitor-exit p0

    #@19
    throw v3
.end method

.method public declared-synchronized isCreated()Z
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 138
    :try_start_0
    iget-boolean v0, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mIsCreated:Z
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

.method public declared-synchronized onDataSetChanged()V
    .locals 3

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 142
    :try_start_0
    iget-object v2, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    #@3
    invoke-interface {v2}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->onDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    :goto_0
    monitor-exit p0

    #@7
    .line 140
    return-void

    #@8
    .line 143
    :catch_0
    move-exception v0

    #@9
    .line 144
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@c
    move-result-object v1

    #@d
    .line 145
    .local v1, "t":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    #@10
    move-result-object v2

    #@11
    invoke-interface {v2, v1, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    goto :goto_0

    #@15
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "t":Ljava/lang/Thread;
    :catchall_0
    move-exception v2

    #@16
    monitor-exit p0

    #@17
    throw v2
.end method

.method public declared-synchronized onDataSetChangedAsync()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 149
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->onDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    .line 148
    return-void

    #@6
    :catchall_0
    move-exception v0

    #@7
    monitor-exit p0

    #@8
    throw v0
.end method

.method public onDestroy(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 215
    invoke-static {}, Landroid/widget/RemoteViewsService;->-get0()Ljava/lang/Object;

    #@3
    move-result-object v5

    #@4
    monitor-enter v5

    #@5
    .line 216
    :try_start_0
    new-instance v2, Landroid/content/Intent$FilterComparison;

    #@7
    invoke-direct {v2, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    #@a
    .line 217
    .local v2, "fc":Landroid/content/Intent$FilterComparison;
    invoke-static {}, Landroid/widget/RemoteViewsService;->-get1()Ljava/util/HashMap;

    #@d
    move-result-object v4

    #@e
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@11
    move-result v4

    #@12
    if-eqz v4, :cond_0

    #@14
    .line 218
    invoke-static {}, Landroid/widget/RemoteViewsService;->-get1()Ljava/util/HashMap;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    check-cast v1, Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 220
    .local v1, "factory":Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    :try_start_1
    invoke-interface {v1}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->onDestroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    .line 225
    :goto_0
    :try_start_2
    invoke-static {}, Landroid/widget/RemoteViewsService;->-get1()Ljava/util/HashMap;

    #@24
    move-result-object v4

    #@25
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@28
    .end local v1    # "factory":Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    :cond_0
    monitor-exit v5

    #@29
    .line 214
    return-void

    #@2a
    .line 221
    .restart local v1    # "factory":Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    :catch_0
    move-exception v0

    #@2b
    .line 222
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@2e
    move-result-object v3

    #@2f
    .line 223
    .local v3, "t":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    #@32
    move-result-object v4

    #@33
    invoke-interface {v4, v3, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@36
    goto :goto_0

    #@37
    .line 215
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "factory":Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .end local v2    # "fc":Landroid/content/Intent$FilterComparison;
    .end local v3    # "t":Ljava/lang/Thread;
    :catchall_0
    move-exception v4

    #@38
    monitor-exit v5

    #@39
    throw v4
.end method
