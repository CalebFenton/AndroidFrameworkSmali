.class Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;
.super Landroid/os/Handler;
.source "RemoteViewsAdapter.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoteServiceHandler"
.end annotation


# instance fields
.field private final greylist-max-o mAdapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/RemoteViewsAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mBindRequested:Z

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mNotifyDataSetChangedPending:Z

.field private greylist-max-o mRemoteViewsFactory:Lcom/android/internal/widget/IRemoteViewsFactory;


# direct methods
.method constructor greylist-max-o <init>(Landroid/os/Looper;Landroid/widget/RemoteViewsAdapter;Landroid/content/Context;)V
    .registers 5
    .param p1, "workerLooper"    # Landroid/os/Looper;
    .param p2, "adapter"    # Landroid/widget/RemoteViewsAdapter;
    .param p3, "context"    # Landroid/content/Context;

    .line 200
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mNotifyDataSetChangedPending:Z

    .line 197
    iput-boolean v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mBindRequested:Z

    .line 201
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mAdapter:Ljava/lang/ref/WeakReference;

    .line 202
    iput-object p3, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mContext:Landroid/content/Context;

    .line 203
    return-void
.end method

.method private greylist-max-o enqueueDeferredUnbindServiceMessage()V
    .registers 4

    .line 367
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->removeMessages(I)V

    .line 368
    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 369
    return-void
.end method

.method private greylist-max-o sendNotifyDataSetChange(Z)Z
    .registers 5
    .param p1, "always"    # Z

    .line 356
    if-nez p1, :cond_a

    :try_start_2
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mRemoteViewsFactory:Lcom/android/internal/widget/IRemoteViewsFactory;

    invoke-interface {v0}, Lcom/android/internal/widget/IRemoteViewsFactory;->isCreated()Z

    move-result v0

    if-nez v0, :cond_f

    .line 357
    :cond_a
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mRemoteViewsFactory:Lcom/android/internal/widget/IRemoteViewsFactory;

    invoke-interface {v0}, Lcom/android/internal/widget/IRemoteViewsFactory;->onDataSetChanged()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_f} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_f} :catch_11

    .line 359
    :cond_f
    const/4 v0, 0x1

    return v0

    .line 360
    :catch_11
    move-exception v0

    .line 361
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in updateNotifyDataSetChanged(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RemoteViewsAdapter"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 250
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/RemoteViewsAdapter;

    .line 252
    .local v1, "adapter":Landroid/widget/RemoteViewsAdapter;
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_ee

    .line 344
    return-void

    .line 340
    :pswitch_10
    invoke-virtual {p0}, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->unbindNow()V

    .line 341
    return-void

    .line 321
    :pswitch_14
    if-eqz v1, :cond_38

    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mRemoteViewsFactory:Lcom/android/internal/widget/IRemoteViewsFactory;

    if-nez v0, :cond_1b

    goto :goto_38

    .line 324
    :cond_1b
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->removeMessages(I)V

    .line 326
    invoke-static {v1}, Landroid/widget/RemoteViewsAdapter;->-$$Nest$fgetmCache(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getNextIndexToLoad()I

    move-result v0

    .line 327
    .local v0, "position":I
    const/4 v3, -0x1

    if-le v0, v3, :cond_34

    .line 329
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mRemoteViewsFactory:Lcom/android/internal/widget/IRemoteViewsFactory;

    invoke-static {v1, v3, v0, v2}, Landroid/widget/RemoteViewsAdapter;->-$$Nest$mupdateRemoteViews(Landroid/widget/RemoteViewsAdapter;Lcom/android/internal/widget/IRemoteViewsFactory;IZ)V

    .line 332
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->sendEmptyMessage(I)Z

    goto :goto_37

    .line 335
    :cond_34
    invoke-direct {p0}, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->enqueueDeferredUnbindServiceMessage()V

    .line 337
    :goto_37
    return-void

    .line 322
    .end local v0    # "position":I
    :cond_38
    :goto_38
    return-void

    .line 274
    :pswitch_39
    invoke-direct {p0}, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->enqueueDeferredUnbindServiceMessage()V

    .line 275
    if-nez v1, :cond_3f

    .line 276
    return-void

    .line 278
    :cond_3f
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mRemoteViewsFactory:Lcom/android/internal/widget/IRemoteViewsFactory;

    if-nez v0, :cond_49

    .line 279
    iput-boolean v2, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mNotifyDataSetChangedPending:Z

    .line 280
    invoke-static {v1}, Landroid/widget/RemoteViewsAdapter;->-$$Nest$mrequestBindService(Landroid/widget/RemoteViewsAdapter;)V

    .line 281
    return-void

    .line 283
    :cond_49
    invoke-direct {p0, v2}, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->sendNotifyDataSetChange(Z)Z

    move-result v0

    if-nez v0, :cond_50

    .line 284
    return-void

    .line 288
    :cond_50
    invoke-static {v1}, Landroid/widget/RemoteViewsAdapter;->-$$Nest$fgetmCache(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-result-object v3

    monitor-enter v3

    .line 289
    :try_start_55
    invoke-static {v1}, Landroid/widget/RemoteViewsAdapter;->-$$Nest$fgetmCache(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->reset()V

    .line 290
    monitor-exit v3
    :try_end_5d
    .catchall {:try_start_55 .. :try_end_5d} :catchall_9e

    .line 293
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mRemoteViewsFactory:Lcom/android/internal/widget/IRemoteViewsFactory;

    invoke-static {v1, v0}, Landroid/widget/RemoteViewsAdapter;->-$$Nest$mupdateTemporaryMetaData(Landroid/widget/RemoteViewsAdapter;Lcom/android/internal/widget/IRemoteViewsFactory;)V

    .line 296
    invoke-static {v1}, Landroid/widget/RemoteViewsAdapter;->-$$Nest$fgetmCache(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getTemporaryMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v4

    monitor-enter v4

    .line 297
    :try_start_6b
    invoke-static {v1}, Landroid/widget/RemoteViewsAdapter;->-$$Nest$fgetmCache(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getTemporaryMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v0

    iget v0, v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    .line 298
    .local v0, "newCount":I
    invoke-static {v1, v0}, Landroid/widget/RemoteViewsAdapter;->-$$Nest$mgetVisibleWindow(Landroid/widget/RemoteViewsAdapter;I)[I

    move-result-object v3

    .line 299
    .local v3, "visibleWindow":[I
    monitor-exit v4
    :try_end_7a
    .catchall {:try_start_6b .. :try_end_7a} :catchall_9b

    .line 304
    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_7d
    if-ge v6, v4, :cond_8b

    aget v7, v3, v6

    .line 308
    .local v7, "position":I
    if-ge v7, v0, :cond_88

    .line 309
    iget-object v8, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mRemoteViewsFactory:Lcom/android/internal/widget/IRemoteViewsFactory;

    invoke-static {v1, v8, v7, v5}, Landroid/widget/RemoteViewsAdapter;->-$$Nest$mupdateRemoteViews(Landroid/widget/RemoteViewsAdapter;Lcom/android/internal/widget/IRemoteViewsFactory;IZ)V

    .line 304
    .end local v7    # "position":I
    :cond_88
    add-int/lit8 v6, v6, 0x1

    goto :goto_7d

    .line 314
    :cond_8b
    invoke-static {v1}, Landroid/widget/RemoteViewsAdapter;->-$$Nest$fgetmMainHandler(Landroid/widget/RemoteViewsAdapter;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 315
    invoke-static {v1}, Landroid/widget/RemoteViewsAdapter;->-$$Nest$fgetmMainHandler(Landroid/widget/RemoteViewsAdapter;)Landroid/os/Handler;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 317
    return-void

    .line 299
    .end local v0    # "newCount":I
    .end local v3    # "visibleWindow":[I
    :catchall_9b
    move-exception v0

    :try_start_9c
    monitor-exit v4
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_9b

    throw v0

    .line 290
    :catchall_9e
    move-exception v0

    :try_start_9f
    monitor-exit v3
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_9e

    throw v0

    .line 254
    :pswitch_a1
    if-eqz v1, :cond_a7

    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mRemoteViewsFactory:Lcom/android/internal/widget/IRemoteViewsFactory;

    if-eqz v0, :cond_aa

    .line 255
    :cond_a7
    invoke-direct {p0}, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->enqueueDeferredUnbindServiceMessage()V

    .line 257
    :cond_aa
    iget-boolean v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mBindRequested:Z

    if-eqz v0, :cond_af

    .line 258
    return-void

    .line 260
    :cond_af
    const v7, 0x2000001

    .line 262
    .local v7, "flags":I
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mContext:Landroid/content/Context;

    int-to-long v2, v7

    invoke-virtual {v0, p0, p0, v2, v3}, Landroid/content/Context;->getServiceDispatcher(Landroid/content/ServiceConnection;Landroid/os/Handler;J)Landroid/app/IServiceConnection;

    move-result-object v6

    .line 263
    .local v6, "sd":Landroid/app/IServiceConnection;
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/content/Intent;

    .line 264
    .local v5, "intent":Landroid/content/Intent;
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 266
    .local v4, "appWidgetId":I
    :try_start_c0
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mContext:Landroid/content/Context;

    .line 267
    invoke-virtual/range {v2 .. v7}, Landroid/appwidget/AppWidgetManager;->bindRemoteViewsService(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/IServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mBindRequested:Z
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_ce} :catch_cf

    .line 270
    goto :goto_ec

    .line 268
    :catch_cf
    move-exception v0

    .line 269
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "RemoteViewsAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to bind remoteViewsService: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_ec
    return-void

    nop

    :pswitch_data_ee
    .packed-switch 0x1
        :pswitch_a1
        :pswitch_39
        :pswitch_14
        :pswitch_10
    .end packed-switch
.end method

.method public whitelist onNullBinding(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 245
    invoke-virtual {p0}, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->unbindNow()V

    .line 246
    return-void
.end method

.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 208
    invoke-static {p2}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/IRemoteViewsFactory;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mRemoteViewsFactory:Lcom/android/internal/widget/IRemoteViewsFactory;

    .line 209
    invoke-direct {p0}, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->enqueueDeferredUnbindServiceMessage()V

    .line 211
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViewsAdapter;

    .line 212
    .local v0, "adapter":Landroid/widget/RemoteViewsAdapter;
    if-nez v0, :cond_14

    .line 213
    return-void

    .line 216
    :cond_14
    iget-boolean v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mNotifyDataSetChangedPending:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    .line 217
    iput-boolean v2, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mNotifyDataSetChangedPending:Z

    .line 218
    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 219
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {p0, v1}, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->handleMessage(Landroid/os/Message;)V

    .line 220
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 221
    .end local v1    # "msg":Landroid/os/Message;
    goto :goto_43

    .line 222
    :cond_27
    invoke-direct {p0, v2}, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->sendNotifyDataSetChange(Z)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 223
    return-void

    .line 228
    :cond_2e
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mRemoteViewsFactory:Lcom/android/internal/widget/IRemoteViewsFactory;

    invoke-static {v0, v1}, Landroid/widget/RemoteViewsAdapter;->-$$Nest$mupdateTemporaryMetaData(Landroid/widget/RemoteViewsAdapter;Lcom/android/internal/widget/IRemoteViewsFactory;)V

    .line 229
    invoke-static {v0}, Landroid/widget/RemoteViewsAdapter;->-$$Nest$fgetmMainHandler(Landroid/widget/RemoteViewsAdapter;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 230
    invoke-static {v0}, Landroid/widget/RemoteViewsAdapter;->-$$Nest$fgetmMainHandler(Landroid/widget/RemoteViewsAdapter;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 232
    :goto_43
    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mRemoteViewsFactory:Lcom/android/internal/widget/IRemoteViewsFactory;

    .line 237
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViewsAdapter;

    .line 238
    .local v0, "adapter":Landroid/widget/RemoteViewsAdapter;
    if-eqz v0, :cond_15

    .line 239
    invoke-static {v0}, Landroid/widget/RemoteViewsAdapter;->-$$Nest$fgetmMainHandler(Landroid/widget/RemoteViewsAdapter;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 241
    :cond_15
    return-void
.end method

.method protected greylist-max-o unbindNow()V
    .registers 2

    .line 347
    iget-boolean v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mBindRequested:Z

    if-eqz v0, :cond_c

    .line 348
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mBindRequested:Z

    .line 349
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 351
    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mRemoteViewsFactory:Lcom/android/internal/widget/IRemoteViewsFactory;

    .line 352
    return-void
.end method
