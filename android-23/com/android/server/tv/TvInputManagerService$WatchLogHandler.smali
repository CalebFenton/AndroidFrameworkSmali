.class final Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;
.super Landroid/os/Handler;
.source "TvInputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WatchLogHandler"
.end annotation


# static fields
.field static final MSG_LOG_WATCH_END:I = 0x2

.field static final MSG_LOG_WATCH_START:I = 0x1

.field static final MSG_SWITCH_CONTENT_RESOLVER:I = 0x3


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Landroid/os/Looper;)V
    .locals 0
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 2407
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@3
    .line 2408
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->mContentResolver:Landroid/content/ContentResolver;

    #@5
    .line 2406
    return-void
.end method

.method private encodeTuneParams(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 6
    .param p1, "tuneParams"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 2465
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 2466
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@8
    move-result-object v3

    #@9
    .line 2467
    .local v3, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v1

    #@d
    .line 2468
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v5

    #@11
    if-eqz v5, :cond_1

    #@13
    .line 2469
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Ljava/lang/String;

    #@19
    .line 2470
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@1c
    move-result-object v4

    #@1d
    .line 2471
    .local v4, "value":Ljava/lang/Object;
    if-eqz v4, :cond_0

    #@1f
    .line 2474
    invoke-direct {p0, v2}, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->replaceEscapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    #@22
    move-result-object v5

    #@23
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    .line 2475
    const-string/jumbo v5, "="

    #@29
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    .line 2476
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@2f
    move-result-object v5

    #@30
    invoke-direct {p0, v5}, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->replaceEscapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    #@33
    move-result-object v5

    #@34
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    .line 2477
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@3a
    move-result v5

    #@3b
    if-eqz v5, :cond_0

    #@3d
    .line 2478
    const-string/jumbo v5, ", "

    #@40
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    goto :goto_0

    #@44
    .line 2481
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v5

    #@48
    return-object v5
.end method

.method private replaceEscapeCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "src"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2485
    const/16 v1, 0x25

    #@3
    .line 2486
    .local v1, "ESCAPE_CHARACTER":C
    const-string/jumbo v0, "%=,"

    #@6
    .line 2487
    .local v0, "ENCODING_TARGET_CHARACTERS":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    .line 2488
    .local v2, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    #@e
    move-result-object v5

    #@f
    array-length v6, v5

    #@10
    :goto_0
    if-ge v4, v6, :cond_1

    #@12
    aget-char v3, v5, v4

    #@14
    .line 2489
    .local v3, "ch":C
    const-string/jumbo v7, "%=,"

    #@17
    invoke-virtual {v7, v3}, Ljava/lang/String;->indexOf(I)I

    #@1a
    move-result v7

    #@1b
    if-ltz v7, :cond_0

    #@1d
    .line 2490
    const/16 v7, 0x25

    #@1f
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@22
    .line 2492
    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@25
    .line 2488
    add-int/lit8 v4, v4, 0x1

    #@27
    goto :goto_0

    #@28
    .line 2494
    .end local v3    # "ch":C
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v4

    #@2c
    return-object v4
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2413
    iget v7, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v7, :pswitch_data_0

    #@5
    .line 2458
    const-string/jumbo v7, "TvInputManagerService"

    #@8
    new-instance v12, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v13, "unhandled message code: "

    #@10
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v12

    #@14
    iget v13, p1, Landroid/os/Message;->what:I

    #@16
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v12

    #@1a
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v12

    #@1e
    invoke-static {v7, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 2412
    :goto_0
    return-void

    #@22
    .line 2415
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@24
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@26
    .line 2416
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@28
    check-cast v1, Ljava/lang/String;

    #@2a
    .line 2417
    .local v1, "packageName":Ljava/lang/String;
    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@2c
    check-cast v7, Ljava/lang/Long;

    #@2e
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    #@31
    move-result-wide v10

    #@32
    .line 2418
    .local v10, "watchStartTime":J
    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@34
    check-cast v7, Ljava/lang/Long;

    #@36
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    #@39
    move-result-wide v2

    #@3a
    .line 2419
    .local v2, "channelId":J
    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    #@3c
    check-cast v5, Landroid/os/Bundle;

    #@3e
    .line 2420
    .local v5, "tuneParams":Landroid/os/Bundle;
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    #@40
    check-cast v4, Landroid/os/IBinder;

    #@42
    .line 2422
    .local v4, "sessionToken":Landroid/os/IBinder;
    new-instance v6, Landroid/content/ContentValues;

    #@44
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    #@47
    .line 2423
    .local v6, "values":Landroid/content/ContentValues;
    const-string/jumbo v7, "package_name"

    #@4a
    invoke-virtual {v6, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@4d
    .line 2424
    const-string/jumbo v7, "watch_start_time_utc_millis"

    #@50
    .line 2425
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@53
    move-result-object v12

    #@54
    .line 2424
    invoke-virtual {v6, v7, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@57
    .line 2426
    const-string/jumbo v7, "channel_id"

    #@5a
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@5d
    move-result-object v12

    #@5e
    invoke-virtual {v6, v7, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@61
    .line 2427
    if-eqz v5, :cond_0

    #@63
    .line 2428
    const-string/jumbo v7, "tune_params"

    #@66
    .line 2429
    invoke-direct {p0, v5}, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->encodeTuneParams(Landroid/os/Bundle;)Ljava/lang/String;

    #@69
    move-result-object v12

    #@6a
    .line 2428
    invoke-virtual {v6, v7, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@6d
    .line 2431
    :cond_0
    const-string/jumbo v7, "session_token"

    #@70
    .line 2432
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@73
    move-result-object v12

    #@74
    .line 2431
    invoke-virtual {v6, v7, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@77
    .line 2434
    iget-object v7, p0, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->mContentResolver:Landroid/content/ContentResolver;

    #@79
    sget-object v12, Landroid/media/tv/TvContract$WatchedPrograms;->CONTENT_URI:Landroid/net/Uri;

    #@7b
    invoke-virtual {v7, v12, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    #@7e
    .line 2435
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@81
    goto :goto_0

    #@82
    .line 2439
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "channelId":J
    .end local v4    # "sessionToken":Landroid/os/IBinder;
    .end local v5    # "tuneParams":Landroid/os/Bundle;
    .end local v6    # "values":Landroid/content/ContentValues;
    .end local v10    # "watchStartTime":J
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@84
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@86
    .line 2440
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@88
    check-cast v4, Landroid/os/IBinder;

    #@8a
    .line 2441
    .restart local v4    # "sessionToken":Landroid/os/IBinder;
    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@8c
    check-cast v7, Ljava/lang/Long;

    #@8e
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    #@91
    move-result-wide v8

    #@92
    .line 2443
    .local v8, "watchEndTime":J
    new-instance v6, Landroid/content/ContentValues;

    #@94
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    #@97
    .line 2444
    .restart local v6    # "values":Landroid/content/ContentValues;
    const-string/jumbo v7, "watch_end_time_utc_millis"

    #@9a
    .line 2445
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@9d
    move-result-object v12

    #@9e
    .line 2444
    invoke-virtual {v6, v7, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@a1
    .line 2446
    const-string/jumbo v7, "session_token"

    #@a4
    .line 2447
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@a7
    move-result-object v12

    #@a8
    .line 2446
    invoke-virtual {v6, v7, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@ab
    .line 2449
    iget-object v7, p0, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->mContentResolver:Landroid/content/ContentResolver;

    #@ad
    sget-object v12, Landroid/media/tv/TvContract$WatchedPrograms;->CONTENT_URI:Landroid/net/Uri;

    #@af
    invoke-virtual {v7, v12, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    #@b2
    .line 2450
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@b5
    goto/16 :goto_0

    #@b7
    .line 2454
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v4    # "sessionToken":Landroid/os/IBinder;
    .end local v6    # "values":Landroid/content/ContentValues;
    .end local v8    # "watchEndTime":J
    :pswitch_2
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@b9
    check-cast v7, Landroid/content/ContentResolver;

    #@bb
    iput-object v7, p0, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->mContentResolver:Landroid/content/ContentResolver;

    #@bd
    goto/16 :goto_0

    #@bf
    .line 2413
    nop

    #@c0
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
