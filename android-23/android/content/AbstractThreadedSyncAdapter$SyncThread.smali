.class Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
.super Ljava/lang/Thread;
.source "AbstractThreadedSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/AbstractThreadedSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncThread"
.end annotation


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mAuthority:Ljava/lang/String;

.field private final mExtras:Landroid/os/Bundle;

.field private final mSyncContext:Landroid/content/SyncContext;

.field private final mThreadsKey:Landroid/accounts/Account;

.field final synthetic this$0:Landroid/content/AbstractThreadedSyncAdapter;


# direct methods
.method static synthetic -get0(Landroid/content/AbstractThreadedSyncAdapter$SyncThread;)Landroid/content/SyncContext;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mSyncContext:Landroid/content/SyncContext;

    #@2
    return-object v0
.end method

.method private constructor <init>(Landroid/content/AbstractThreadedSyncAdapter;Ljava/lang/String;Landroid/content/SyncContext;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "this$0"    # Landroid/content/AbstractThreadedSyncAdapter;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "syncContext"    # Landroid/content/SyncContext;
    .param p4, "authority"    # Ljava/lang/String;
    .param p5, "account"    # Landroid/accounts/Account;
    .param p6, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 245
    iput-object p1, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    #@2
    .line 247
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    #@5
    .line 248
    iput-object p3, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mSyncContext:Landroid/content/SyncContext;

    #@7
    .line 249
    iput-object p4, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAuthority:Ljava/lang/String;

    #@9
    .line 250
    iput-object p5, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAccount:Landroid/accounts/Account;

    #@b
    .line 251
    iput-object p6, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mExtras:Landroid/os/Bundle;

    #@d
    .line 252
    invoke-static {p1, p5}, Landroid/content/AbstractThreadedSyncAdapter;->-wrap0(Landroid/content/AbstractThreadedSyncAdapter;Landroid/accounts/Account;)Landroid/accounts/Account;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mThreadsKey:Landroid/accounts/Account;

    #@13
    .line 246
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/AbstractThreadedSyncAdapter;Ljava/lang/String;Landroid/content/SyncContext;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/AbstractThreadedSyncAdapter$SyncThread;)V
    .locals 0
    .param p1, "this$0"    # Landroid/content/AbstractThreadedSyncAdapter;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "syncContext"    # Landroid/content/SyncContext;
    .param p4, "authority"    # Ljava/lang/String;
    .param p5, "account"    # Landroid/accounts/Account;
    .param p6, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    invoke-direct/range {p0 .. p6}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;-><init>(Landroid/content/AbstractThreadedSyncAdapter;Ljava/lang/String;Landroid/content/SyncContext;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;)V

    #@3
    return-void
.end method

.method private isCanceled()Z
    .locals 1

    #@0
    .prologue
    .line 299
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    #@7
    move-result v0

    #@8
    return v0
.end method


# virtual methods
.method public run()V
    .locals 10

    #@0
    .prologue
    const-wide/16 v8, 0x80

    #@2
    .line 257
    const/16 v0, 0xa

    #@4
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    #@7
    .line 262
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAuthority:Ljava/lang/String;

    #@9
    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@c
    .line 264
    new-instance v5, Landroid/content/SyncResult;

    #@e
    invoke-direct {v5}, Landroid/content/SyncResult;-><init>()V

    #@11
    .line 265
    .local v5, "syncResult":Landroid/content/SyncResult;
    const/4 v4, 0x0

    #@12
    .line 267
    .local v4, "provider":Landroid/content/ContentProviderClient;
    :try_start_0
    invoke-direct {p0}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->isCanceled()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 282
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@1b
    .line 287
    invoke-direct {p0}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->isCanceled()Z

    #@1e
    move-result v0

    #@1f
    if-nez v0, :cond_0

    #@21
    .line 288
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mSyncContext:Landroid/content/SyncContext;

    #@23
    invoke-virtual {v0, v5}, Landroid/content/SyncContext;->onFinished(Landroid/content/SyncResult;)V

    #@26
    .line 292
    :cond_0
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    #@28
    invoke-static {v0}, Landroid/content/AbstractThreadedSyncAdapter;->-get4(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/lang/Object;

    #@2b
    move-result-object v1

    #@2c
    monitor-enter v1

    #@2d
    .line 293
    :try_start_1
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    #@2f
    invoke-static {v0}, Landroid/content/AbstractThreadedSyncAdapter;->-get5(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/HashMap;

    #@32
    move-result-object v0

    #@33
    iget-object v2, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mThreadsKey:Landroid/accounts/Account;

    #@35
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    monitor-exit v1

    #@39
    .line 268
    return-void

    #@3a
    .line 292
    :catchall_0
    move-exception v0

    #@3b
    monitor-exit v1

    #@3c
    throw v0

    #@3d
    .line 270
    :cond_1
    :try_start_2
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    #@3f
    invoke-static {v0}, Landroid/content/AbstractThreadedSyncAdapter;->-get2(Landroid/content/AbstractThreadedSyncAdapter;)Landroid/content/Context;

    #@42
    move-result-object v0

    #@43
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@46
    move-result-object v0

    #@47
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAuthority:Ljava/lang/String;

    #@49
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    #@4c
    move-result-object v4

    #@4d
    .line 271
    .local v4, "provider":Landroid/content/ContentProviderClient;
    if-eqz v4, :cond_4

    #@4f
    .line 272
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    #@51
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAccount:Landroid/accounts/Account;

    #@53
    iget-object v2, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mExtras:Landroid/os/Bundle;

    #@55
    .line 273
    iget-object v3, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAuthority:Ljava/lang/String;

    #@57
    .line 272
    invoke-virtual/range {v0 .. v5}, Landroid/content/AbstractThreadedSyncAdapter;->onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    #@5a
    .line 282
    :goto_0
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@5d
    .line 284
    if-eqz v4, :cond_2

    #@5f
    .line 285
    invoke-virtual {v4}, Landroid/content/ContentProviderClient;->release()Z

    #@62
    .line 287
    :cond_2
    invoke-direct {p0}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->isCanceled()Z

    #@65
    move-result v0

    #@66
    if-nez v0, :cond_3

    #@68
    .line 288
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mSyncContext:Landroid/content/SyncContext;

    #@6a
    invoke-virtual {v0, v5}, Landroid/content/SyncContext;->onFinished(Landroid/content/SyncResult;)V

    #@6d
    .line 292
    :cond_3
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    #@6f
    invoke-static {v0}, Landroid/content/AbstractThreadedSyncAdapter;->-get4(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/lang/Object;

    #@72
    move-result-object v1

    #@73
    monitor-enter v1

    #@74
    .line 293
    :try_start_3
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    #@76
    invoke-static {v0}, Landroid/content/AbstractThreadedSyncAdapter;->-get5(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/HashMap;

    #@79
    move-result-object v0

    #@7a
    iget-object v2, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mThreadsKey:Landroid/accounts/Account;

    #@7c
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@7f
    .end local v4    # "provider":Landroid/content/ContentProviderClient;
    :goto_1
    monitor-exit v1

    #@80
    .line 256
    return-void

    #@81
    .line 275
    .restart local v4    # "provider":Landroid/content/ContentProviderClient;
    :cond_4
    const/4 v0, 0x1

    #@82
    :try_start_4
    iput-boolean v0, v5, Landroid/content/SyncResult;->databaseError:Z
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    #@84
    goto :goto_0

    #@85
    .line 277
    .end local v4    # "provider":Landroid/content/ContentProviderClient;
    :catch_0
    move-exception v6

    #@86
    .line 278
    .local v6, "e":Ljava/lang/SecurityException;
    :try_start_5
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    #@88
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAccount:Landroid/accounts/Account;

    #@8a
    iget-object v2, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mExtras:Landroid/os/Bundle;

    #@8c
    .line 279
    iget-object v3, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAuthority:Ljava/lang/String;

    #@8e
    .line 278
    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/content/AbstractThreadedSyncAdapter;->onSecurityException(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/SyncResult;)V

    #@91
    .line 280
    const/4 v0, 0x1

    #@92
    iput-boolean v0, v5, Landroid/content/SyncResult;->databaseError:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    #@94
    .line 282
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@97
    .line 284
    if-eqz v4, :cond_5

    #@99
    .line 285
    invoke-virtual {v4}, Landroid/content/ContentProviderClient;->release()Z

    #@9c
    .line 287
    :cond_5
    invoke-direct {p0}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->isCanceled()Z

    #@9f
    move-result v0

    #@a0
    if-nez v0, :cond_6

    #@a2
    .line 288
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mSyncContext:Landroid/content/SyncContext;

    #@a4
    invoke-virtual {v0, v5}, Landroid/content/SyncContext;->onFinished(Landroid/content/SyncResult;)V

    #@a7
    .line 292
    :cond_6
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    #@a9
    invoke-static {v0}, Landroid/content/AbstractThreadedSyncAdapter;->-get4(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/lang/Object;

    #@ac
    move-result-object v1

    #@ad
    monitor-enter v1

    #@ae
    .line 293
    :try_start_6
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    #@b0
    invoke-static {v0}, Landroid/content/AbstractThreadedSyncAdapter;->-get5(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/HashMap;

    #@b3
    move-result-object v0

    #@b4
    iget-object v2, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mThreadsKey:Landroid/accounts/Account;

    #@b6
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@b9
    goto :goto_1

    #@ba
    .line 292
    :catchall_1
    move-exception v0

    #@bb
    monitor-exit v1

    #@bc
    throw v0

    #@bd
    .end local v6    # "e":Ljava/lang/SecurityException;
    .restart local v4    # "provider":Landroid/content/ContentProviderClient;
    :catchall_2
    move-exception v0

    #@be
    monitor-exit v1

    #@bf
    throw v0

    #@c0
    .line 281
    .end local v4    # "provider":Landroid/content/ContentProviderClient;
    :catchall_3
    move-exception v0

    #@c1
    .line 282
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@c4
    .line 284
    if-eqz v4, :cond_7

    #@c6
    .line 285
    invoke-virtual {v4}, Landroid/content/ContentProviderClient;->release()Z

    #@c9
    .line 287
    :cond_7
    invoke-direct {p0}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->isCanceled()Z

    #@cc
    move-result v1

    #@cd
    if-nez v1, :cond_8

    #@cf
    .line 288
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mSyncContext:Landroid/content/SyncContext;

    #@d1
    invoke-virtual {v1, v5}, Landroid/content/SyncContext;->onFinished(Landroid/content/SyncResult;)V

    #@d4
    .line 292
    :cond_8
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    #@d6
    invoke-static {v1}, Landroid/content/AbstractThreadedSyncAdapter;->-get4(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/lang/Object;

    #@d9
    move-result-object v1

    #@da
    monitor-enter v1

    #@db
    .line 293
    :try_start_7
    iget-object v2, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    #@dd
    invoke-static {v2}, Landroid/content/AbstractThreadedSyncAdapter;->-get5(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/HashMap;

    #@e0
    move-result-object v2

    #@e1
    iget-object v3, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mThreadsKey:Landroid/accounts/Account;

    #@e3
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    #@e6
    monitor-exit v1

    #@e7
    .line 281
    throw v0

    #@e8
    .line 292
    :catchall_4
    move-exception v0

    #@e9
    monitor-exit v1

    #@ea
    throw v0
.end method
