.class public Landroid/content/AsyncQueryHandler$WorkerHandler;
.super Landroid/os/Handler;
.source "AsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/AsyncQueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/content/AsyncQueryHandler;


# direct methods
.method public constructor whitelist <init>(Landroid/content/AsyncQueryHandler;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Landroid/content/AsyncQueryHandler;
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 61
    iput-object p1, p0, Landroid/content/AsyncQueryHandler$WorkerHandler;->this$0:Landroid/content/AsyncQueryHandler;

    .line 62
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 63
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 12
    .param p1, "msg"    # Landroid/os/Message;

    .line 67
    iget-object v0, p0, Landroid/content/AsyncQueryHandler$WorkerHandler;->this$0:Landroid/content/AsyncQueryHandler;

    iget-object v0, v0, Landroid/content/AsyncQueryHandler;->mResolver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/ContentResolver;

    .line 68
    .local v1, "resolver":Landroid/content/ContentResolver;
    if-nez v1, :cond_e

    return-void

    .line 70
    :cond_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Landroid/content/AsyncQueryHandler$WorkerArgs;

    .line 72
    .local v7, "args":Landroid/content/AsyncQueryHandler$WorkerArgs;
    iget v8, p1, Landroid/os/Message;->what:I

    .line 73
    .local v8, "token":I
    iget v9, p1, Landroid/os/Message;->arg1:I

    .line 75
    .local v9, "event":I
    packed-switch v9, :pswitch_data_7c

    goto :goto_6b

    .line 105
    :pswitch_1b
    iget-object v0, v7, Landroid/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iget-object v2, v7, Landroid/content/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    iget-object v3, v7, Landroid/content/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v7, Landroid/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    goto :goto_6b

    .line 100
    :pswitch_2c
    iget-object v0, v7, Landroid/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iget-object v2, v7, Landroid/content/AsyncQueryHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    iget-object v3, v7, Landroid/content/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    iget-object v4, v7, Landroid/content/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v7, Landroid/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    .line 102
    goto :goto_6b

    .line 96
    :pswitch_3f
    iget-object v0, v7, Landroid/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iget-object v2, v7, Landroid/content/AsyncQueryHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v7, Landroid/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    .line 97
    goto :goto_6b

    .line 79
    :pswitch_4a
    :try_start_4a
    iget-object v2, v7, Landroid/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iget-object v3, v7, Landroid/content/AsyncQueryHandler$WorkerArgs;->projection:[Ljava/lang/String;

    iget-object v4, v7, Landroid/content/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    iget-object v5, v7, Landroid/content/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v6, v7, Landroid/content/AsyncQueryHandler$WorkerArgs;->orderBy:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 84
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_5d

    .line 85
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_5d} :catch_5e

    .line 90
    :cond_5d
    goto :goto_68

    .line 87
    .end local v0    # "cursor":Landroid/database/Cursor;
    :catch_5e
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AsyncQuery"

    const-string v3, "Exception thrown during handling EVENT_ARG_QUERY"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    const/4 v2, 0x0

    move-object v0, v2

    .line 92
    .local v0, "cursor":Landroid/database/Cursor;
    :goto_68
    iput-object v0, v7, Landroid/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    .line 93
    nop

    .line 111
    .end local v0    # "cursor":Landroid/database/Cursor;
    :goto_6b
    iget-object v0, v7, Landroid/content/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 112
    .local v0, "reply":Landroid/os/Message;
    iput-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 113
    iget v2, p1, Landroid/os/Message;->arg1:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 120
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 121
    return-void

    nop

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_3f
        :pswitch_2c
        :pswitch_1b
    .end packed-switch
.end method
