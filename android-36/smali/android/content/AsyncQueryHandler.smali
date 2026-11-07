.class public abstract Landroid/content/AsyncQueryHandler;
.super Landroid/os/Handler;
.source "AsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/AsyncQueryHandler$WorkerHandler;,
        Landroid/content/AsyncQueryHandler$WorkerArgs;
    }
.end annotation


# static fields
.field private static final greylist-max-o EVENT_ARG_DELETE:I = 0x4

.field private static final greylist-max-o EVENT_ARG_INSERT:I = 0x2

.field private static final greylist-max-o EVENT_ARG_QUERY:I = 0x1

.field private static final greylist-max-o EVENT_ARG_UPDATE:I = 0x3

.field private static final greylist-max-o TAG:Ljava/lang/String; = "AsyncQuery"

.field private static final greylist-max-o localLOGV:Z = false

.field private static greylist-max-o sLooper:Landroid/os/Looper;


# instance fields
.field final greylist-max-o mResolver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/ContentResolver;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mWorkerThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 44
    const/4 v0, 0x0

    sput-object v0, Landroid/content/AsyncQueryHandler;->sLooper:Landroid/os/Looper;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/ContentResolver;)V
    .registers 5
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .line 125
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 126
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/content/AsyncQueryHandler;->mResolver:Ljava/lang/ref/WeakReference;

    .line 127
    const-class v0, Landroid/content/AsyncQueryHandler;

    monitor-enter v0

    .line 128
    :try_start_d
    sget-object v1, Landroid/content/AsyncQueryHandler;->sLooper:Landroid/os/Looper;

    if-nez v1, :cond_21

    .line 129
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "AsyncQueryWorker"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 130
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 132
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    sput-object v2, Landroid/content/AsyncQueryHandler;->sLooper:Landroid/os/Looper;

    .line 134
    .end local v1    # "thread":Landroid/os/HandlerThread;
    :cond_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_d .. :try_end_22} :catchall_2b

    .line 135
    sget-object v0, Landroid/content/AsyncQueryHandler;->sLooper:Landroid/os/Looper;

    invoke-virtual {p0, v0}, Landroid/content/AsyncQueryHandler;->createHandler(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroid/content/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    .line 136
    return-void

    .line 134
    :catchall_2b
    move-exception v1

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v1
.end method


# virtual methods
.method public final whitelist cancelOperation(I)V
    .registers 3
    .param p1, "token"    # I

    .line 194
    iget-object v0, p0, Landroid/content/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 195
    return-void
.end method

.method protected whitelist createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .registers 3
    .param p1, "looper"    # Landroid/os/Looper;

    .line 139
    new-instance v0, Landroid/content/AsyncQueryHandler$WorkerHandler;

    invoke-direct {v0, p0, p1}, Landroid/content/AsyncQueryHandler$WorkerHandler;-><init>(Landroid/content/AsyncQueryHandler;Landroid/os/Looper;)V

    return-object v0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 331
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/AsyncQueryHandler$WorkerArgs;

    .line 338
    .local v0, "args":Landroid/content/AsyncQueryHandler$WorkerArgs;
    iget v1, p1, Landroid/os/Message;->what:I

    .line 339
    .local v1, "token":I
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 342
    .local v2, "event":I
    packed-switch v2, :pswitch_data_3e

    goto :goto_3c

    .line 356
    :pswitch_c
    iget-object v3, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v4, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v1, v3, v4}, Landroid/content/AsyncQueryHandler;->onDeleteComplete(ILjava/lang/Object;I)V

    goto :goto_3c

    .line 352
    :pswitch_1a
    iget-object v3, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v4, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v1, v3, v4}, Landroid/content/AsyncQueryHandler;->onUpdateComplete(ILjava/lang/Object;I)V

    .line 353
    goto :goto_3c

    .line 348
    :pswitch_28
    iget-object v3, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v4, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v4, Landroid/net/Uri;

    invoke-virtual {p0, v1, v3, v4}, Landroid/content/AsyncQueryHandler;->onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V

    .line 349
    goto :goto_3c

    .line 344
    :pswitch_32
    iget-object v3, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v4, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v4, Landroid/database/Cursor;

    invoke-virtual {p0, v1, v3, v4}, Landroid/content/AsyncQueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    .line 345
    nop

    .line 359
    :goto_3c
    return-void

    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_32
        :pswitch_28
        :pswitch_1a
        :pswitch_c
    .end packed-switch
.end method

.method protected whitelist onDeleteComplete(ILjava/lang/Object;I)V
    .registers 4
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "result"    # I

    .line 327
    return-void
.end method

.method protected whitelist onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .registers 4
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "uri"    # Landroid/net/Uri;

    .line 301
    return-void
.end method

.method protected whitelist onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 4
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .line 288
    return-void
.end method

.method protected whitelist onUpdateComplete(ILjava/lang/Object;I)V
    .registers 4
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "result"    # I

    .line 314
    return-void
.end method

.method public final whitelist startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 9
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;

    .line 264
    iget-object v0, p0, Landroid/content/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 265
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 267
    new-instance v1, Landroid/content/AsyncQueryHandler$WorkerArgs;

    invoke-direct {v1}, Landroid/content/AsyncQueryHandler$WorkerArgs;-><init>()V

    .line 268
    .local v1, "args":Landroid/content/AsyncQueryHandler$WorkerArgs;
    iput-object p0, v1, Landroid/content/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    .line 269
    iput-object p3, v1, Landroid/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    .line 270
    iput-object p2, v1, Landroid/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 271
    iput-object p4, v1, Landroid/content/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    .line 272
    iput-object p5, v1, Landroid/content/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    .line 273
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 275
    iget-object v2, p0, Landroid/content/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 276
    return-void
.end method

.method public final whitelist startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .registers 8
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "initialValues"    # Landroid/content/ContentValues;

    .line 210
    iget-object v0, p0, Landroid/content/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 211
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 213
    new-instance v1, Landroid/content/AsyncQueryHandler$WorkerArgs;

    invoke-direct {v1}, Landroid/content/AsyncQueryHandler$WorkerArgs;-><init>()V

    .line 214
    .local v1, "args":Landroid/content/AsyncQueryHandler$WorkerArgs;
    iput-object p0, v1, Landroid/content/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    .line 215
    iput-object p3, v1, Landroid/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    .line 216
    iput-object p2, v1, Landroid/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 217
    iput-object p4, v1, Landroid/content/AsyncQueryHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    .line 218
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 220
    iget-object v2, p0, Landroid/content/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 221
    return-void
.end method

.method public whitelist startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "projection"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "orderBy"    # Ljava/lang/String;

    .line 168
    iget-object v0, p0, Landroid/content/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 169
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 171
    new-instance v1, Landroid/content/AsyncQueryHandler$WorkerArgs;

    invoke-direct {v1}, Landroid/content/AsyncQueryHandler$WorkerArgs;-><init>()V

    .line 172
    .local v1, "args":Landroid/content/AsyncQueryHandler$WorkerArgs;
    iput-object p0, v1, Landroid/content/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    .line 173
    iput-object p3, v1, Landroid/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    .line 174
    iput-object p4, v1, Landroid/content/AsyncQueryHandler$WorkerArgs;->projection:[Ljava/lang/String;

    .line 175
    iput-object p5, v1, Landroid/content/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    .line 176
    iput-object p6, v1, Landroid/content/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    .line 177
    iput-object p7, v1, Landroid/content/AsyncQueryHandler$WorkerArgs;->orderBy:Ljava/lang/String;

    .line 178
    iput-object p2, v1, Landroid/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 179
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 181
    iget-object v2, p0, Landroid/content/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 182
    return-void
.end method

.method public final whitelist startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 10
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "values"    # Landroid/content/ContentValues;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;

    .line 236
    iget-object v0, p0, Landroid/content/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 237
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 239
    new-instance v1, Landroid/content/AsyncQueryHandler$WorkerArgs;

    invoke-direct {v1}, Landroid/content/AsyncQueryHandler$WorkerArgs;-><init>()V

    .line 240
    .local v1, "args":Landroid/content/AsyncQueryHandler$WorkerArgs;
    iput-object p0, v1, Landroid/content/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    .line 241
    iput-object p3, v1, Landroid/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    .line 242
    iput-object p2, v1, Landroid/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 243
    iput-object p4, v1, Landroid/content/AsyncQueryHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    .line 244
    iput-object p5, v1, Landroid/content/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    .line 245
    iput-object p6, v1, Landroid/content/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    .line 246
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 248
    iget-object v2, p0, Landroid/content/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 249
    return-void
.end method
