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
.field private greylist-max-o mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

.field private greylist-max-o mIsCreated:Z


# direct methods
.method public constructor greylist-max-o <init>(Landroid/widget/RemoteViewsService$RemoteViewsFactory;Z)V
    .registers 3
    .param p1, "factory"    # Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .param p2, "isCreated"    # Z

    .line 182
    invoke-direct {p0}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;-><init>()V

    .line 183
    iput-object p1, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    .line 184
    iput-boolean p2, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mIsCreated:Z

    .line 185
    return-void
.end method


# virtual methods
.method public declared-synchronized greylist-max-o getCount()I
    .registers 5

    monitor-enter p0

    .line 201
    const/4 v0, 0x0

    .line 203
    .local v0, "count":I
    :try_start_2
    iget-object v1, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    invoke-interface {v1}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->getCount()I

    move-result v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_c
    .catchall {:try_start_2 .. :try_end_8} :catchall_a

    move v0, v1

    .line 207
    goto :goto_18

    .line 200
    .end local v0    # "count":I
    .end local p0    # "this":Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;
    :catchall_a
    move-exception v0

    goto :goto_1a

    .line 204
    .restart local v0    # "count":I
    :catch_c
    move-exception v1

    .line 205
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 206
    .local v2, "t":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_a

    .line 208
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v2    # "t":Ljava/lang/Thread;
    :goto_18
    monitor-exit p0

    return v0

    .line 200
    .end local v0    # "count":I
    :goto_1a
    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_a

    throw v0
.end method

.method public declared-synchronized greylist-max-o getItemId(I)J
    .registers 7
    .param p1, "position"    # I

    monitor-enter p0

    .line 244
    const-wide/16 v0, 0x0

    .line 246
    .local v0, "id":J
    :try_start_3
    iget-object v2, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    invoke-interface {v2, p1}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->getItemId(I)J

    move-result-wide v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_9} :catch_d
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    move-wide v0, v2

    .line 250
    goto :goto_19

    .line 243
    .end local v0    # "id":J
    .end local p0    # "this":Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;
    .end local p1    # "position":I
    :catchall_b
    move-exception p1

    goto :goto_1b

    .line 247
    .restart local v0    # "id":J
    .restart local p1    # "position":I
    :catch_d
    move-exception v2

    .line 248
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    .line 249
    .local v3, "t":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v4

    invoke-interface {v4, v3, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_b

    .line 251
    .end local v2    # "ex":Ljava/lang/Exception;
    .end local v3    # "t":Ljava/lang/Thread;
    :goto_19
    monitor-exit p0

    return-wide v0

    .line 243
    .end local v0    # "id":J
    .end local p1    # "position":I
    :goto_1b
    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_b

    throw p1
.end method

.method public declared-synchronized greylist-max-o getLoadingView()Landroid/widget/RemoteViews;
    .registers 5

    monitor-enter p0

    .line 224
    const/4 v0, 0x0

    .line 226
    .local v0, "rv":Landroid/widget/RemoteViews;
    :try_start_2
    iget-object v1, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    invoke-interface {v1}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->getLoadingView()Landroid/widget/RemoteViews;

    move-result-object v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_c
    .catchall {:try_start_2 .. :try_end_8} :catchall_a

    move-object v0, v1

    .line 230
    goto :goto_18

    .line 223
    .end local v0    # "rv":Landroid/widget/RemoteViews;
    .end local p0    # "this":Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;
    :catchall_a
    move-exception v0

    goto :goto_1a

    .line 227
    .restart local v0    # "rv":Landroid/widget/RemoteViews;
    :catch_c
    move-exception v1

    .line 228
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 229
    .local v2, "t":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_a

    .line 231
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v2    # "t":Ljava/lang/Thread;
    :goto_18
    monitor-exit p0

    return-object v0

    .line 223
    .end local v0    # "rv":Landroid/widget/RemoteViews;
    :goto_1a
    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_a

    throw v0
.end method

.method public blacklist getRemoteCollectionItems(II)Landroid/widget/RemoteViews$RemoteCollectionItems;
    .registers 7
    .param p1, "capSize"    # I
    .param p2, "capBitmapSize"    # I

    .line 282
    new-instance v0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;

    invoke-direct {v0}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;-><init>()V

    .line 283
    invoke-virtual {v0}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->build()Landroid/widget/RemoteViews$RemoteCollectionItems;

    move-result-object v0

    .line 285
    .local v0, "items":Landroid/widget/RemoteViews$RemoteCollectionItems;
    :try_start_9
    iget-object v1, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    invoke-interface {v1, p1, p2}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->getRemoteCollectionItems(II)Landroid/widget/RemoteViews$RemoteCollectionItems;

    move-result-object v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_f} :catch_11

    move-object v0, v1

    .line 289
    goto :goto_1d

    .line 286
    :catch_11
    move-exception v1

    .line 287
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 288
    .local v2, "t":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 290
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v2    # "t":Ljava/lang/Thread;
    :goto_1d
    return-object v0
.end method

.method public declared-synchronized greylist-max-o getViewAt(I)Landroid/widget/RemoteViews;
    .registers 6
    .param p1, "position"    # I

    monitor-enter p0

    .line 211
    const/4 v0, 0x0

    .line 213
    .local v0, "rv":Landroid/widget/RemoteViews;
    :try_start_2
    iget-object v1, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    invoke-interface {v1, p1}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->getViewAt(I)Landroid/widget/RemoteViews;

    move-result-object v1

    move-object v0, v1

    .line 214
    if-eqz v0, :cond_f

    .line 215
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews;->addFlags(I)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_12
    .catchall {:try_start_2 .. :try_end_f} :catchall_10

    .line 220
    .end local p0    # "this":Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;
    :cond_f
    goto :goto_1e

    .line 210
    .end local v0    # "rv":Landroid/widget/RemoteViews;
    .end local p1    # "position":I
    :catchall_10
    move-exception p1

    goto :goto_20

    .line 217
    .restart local v0    # "rv":Landroid/widget/RemoteViews;
    .restart local p1    # "position":I
    :catch_12
    move-exception v1

    .line 218
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_13
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 219
    .local v2, "t":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_10

    .line 221
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v2    # "t":Ljava/lang/Thread;
    :goto_1e
    monitor-exit p0

    return-object v0

    .line 210
    .end local v0    # "rv":Landroid/widget/RemoteViews;
    .end local p1    # "position":I
    :goto_20
    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_10

    throw p1
.end method

.method public declared-synchronized greylist-max-o getViewTypeCount()I
    .registers 5

    monitor-enter p0

    .line 234
    const/4 v0, 0x0

    .line 236
    .local v0, "count":I
    :try_start_2
    iget-object v1, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    invoke-interface {v1}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->getViewTypeCount()I

    move-result v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_c
    .catchall {:try_start_2 .. :try_end_8} :catchall_a

    move v0, v1

    .line 240
    goto :goto_18

    .line 233
    .end local v0    # "count":I
    .end local p0    # "this":Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;
    :catchall_a
    move-exception v0

    goto :goto_1a

    .line 237
    .restart local v0    # "count":I
    :catch_c
    move-exception v1

    .line 238
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 239
    .local v2, "t":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_a

    .line 241
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v2    # "t":Ljava/lang/Thread;
    :goto_18
    monitor-exit p0

    return v0

    .line 233
    .end local v0    # "count":I
    :goto_1a
    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_a

    throw v0
.end method

.method public declared-synchronized greylist-max-o hasStableIds()Z
    .registers 5

    monitor-enter p0

    .line 254
    const/4 v0, 0x0

    .line 256
    .local v0, "hasStableIds":Z
    :try_start_2
    iget-object v1, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    invoke-interface {v1}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->hasStableIds()Z

    move-result v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_c
    .catchall {:try_start_2 .. :try_end_8} :catchall_a

    move v0, v1

    .line 260
    goto :goto_18

    .line 253
    .end local v0    # "hasStableIds":Z
    .end local p0    # "this":Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;
    :catchall_a
    move-exception v0

    goto :goto_1a

    .line 257
    .restart local v0    # "hasStableIds":Z
    :catch_c
    move-exception v1

    .line 258
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 259
    .local v2, "t":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_a

    .line 261
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v2    # "t":Ljava/lang/Thread;
    :goto_18
    monitor-exit p0

    return v0

    .line 253
    .end local v0    # "hasStableIds":Z
    :goto_1a
    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_a

    throw v0
.end method

.method public declared-synchronized greylist-max-o isCreated()Z
    .registers 2

    monitor-enter p0

    .line 187
    :try_start_1
    iget-boolean v0, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mIsCreated:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 187
    .end local p0    # "this":Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized greylist-max-o onDataSetChanged()V
    .registers 4

    monitor-enter p0

    .line 191
    :try_start_1
    iget-object v0, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    invoke-interface {v0}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->onDataSetChanged()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_9
    .catchall {:try_start_1 .. :try_end_6} :catchall_7

    .line 195
    goto :goto_15

    .line 190
    .end local p0    # "this":Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;
    :catchall_7
    move-exception v0

    goto :goto_17

    .line 192
    :catch_9
    move-exception v0

    .line 193
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 194
    .local v1, "t":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_7

    .line 196
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "t":Ljava/lang/Thread;
    :goto_15
    monitor-exit p0

    return-void

    .line 190
    :goto_17
    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_7

    throw v0
.end method

.method public declared-synchronized greylist-max-o onDataSetChangedAsync()V
    .registers 2

    monitor-enter p0

    .line 198
    :try_start_1
    invoke-virtual {p0}, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->onDataSetChanged()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 199
    monitor-exit p0

    return-void

    .line 197
    .end local p0    # "this":Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;
    :catchall_6
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public greylist-max-o onDestroy(Landroid/content/Intent;)V
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;

    .line 264
    invoke-static {}, Landroid/widget/RemoteViewsService;->-$$Nest$sfgetsLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 265
    :try_start_5
    new-instance v1, Landroid/content/Intent$FilterComparison;

    invoke-direct {v1, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 266
    .local v1, "fc":Landroid/content/Intent$FilterComparison;
    invoke-static {}, Landroid/widget/RemoteViewsService;->-$$Nest$sfgetsRemoteViewFactories()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 267
    invoke-static {}, Landroid/widget/RemoteViewsService;->-$$Nest$sfgetsRemoteViewFactories()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_37

    .line 269
    .local v2, "factory":Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    :try_start_1e
    invoke-interface {v2}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->onDestroy()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_22
    .catchall {:try_start_1e .. :try_end_21} :catchall_37

    .line 273
    goto :goto_2e

    .line 270
    :catch_22
    move-exception v3

    .line 271
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_23
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    .line 272
    .local v4, "t":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v5

    invoke-interface {v5, v4, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 274
    .end local v3    # "ex":Ljava/lang/Exception;
    .end local v4    # "t":Ljava/lang/Thread;
    :goto_2e
    invoke-static {}, Landroid/widget/RemoteViewsService;->-$$Nest$sfgetsRemoteViewFactories()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    .end local v1    # "fc":Landroid/content/Intent$FilterComparison;
    .end local v2    # "factory":Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    :cond_35
    monitor-exit v0

    .line 277
    return-void

    .line 276
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_23 .. :try_end_39} :catchall_37

    throw v1
.end method
