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
.field private final greylist-max-o mAccount:Landroid/accounts/Account;

.field private final greylist-max-o mAuthority:Ljava/lang/String;

.field private final greylist-max-o mExtras:Landroid/os/Bundle;

.field private final greylist-max-o mSyncContext:Landroid/content/SyncContext;

.field private final greylist-max-o mThreadsKey:Landroid/accounts/Account;

.field final synthetic blacklist this$0:Landroid/content/AbstractThreadedSyncAdapter;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAccount(Landroid/content/AbstractThreadedSyncAdapter$SyncThread;)Landroid/accounts/Account;
    .registers 1

    iget-object p0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAccount:Landroid/accounts/Account;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAuthority(Landroid/content/AbstractThreadedSyncAdapter$SyncThread;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAuthority:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSyncContext(Landroid/content/AbstractThreadedSyncAdapter$SyncThread;)Landroid/content/SyncContext;
    .registers 1

    iget-object p0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mSyncContext:Landroid/content/SyncContext;

    return-object p0
.end method

.method private constructor blacklist <init>(Landroid/content/AbstractThreadedSyncAdapter;Ljava/lang/String;Landroid/content/SyncContext;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;)V
    .registers 7
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "syncContext"    # Landroid/content/SyncContext;
    .param p4, "authority"    # Ljava/lang/String;
    .param p5, "account"    # Landroid/accounts/Account;
    .param p6, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 317
    iput-object p1, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    .line 318
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 319
    iput-object p3, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mSyncContext:Landroid/content/SyncContext;

    .line 320
    iput-object p4, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAuthority:Ljava/lang/String;

    .line 321
    iput-object p5, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAccount:Landroid/accounts/Account;

    .line 322
    iput-object p6, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mExtras:Landroid/os/Bundle;

    .line 323
    invoke-static {p1, p5}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$mtoSyncKey(Landroid/content/AbstractThreadedSyncAdapter;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object p1

    iput-object p1, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mThreadsKey:Landroid/accounts/Account;

    .line 324
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/AbstractThreadedSyncAdapter;Ljava/lang/String;Landroid/content/SyncContext;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/AbstractThreadedSyncAdapter-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;-><init>(Landroid/content/AbstractThreadedSyncAdapter;Ljava/lang/String;Landroid/content/SyncContext;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;)V

    return-void
.end method

.method private greylist-max-o isCanceled()Z
    .registers 2

    .line 398
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 11

    .line 328
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 330
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$sfgetENABLE_LOG()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 331
    const-string v0, "SyncAdapter"

    const-string v1, "Thread started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_12
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAuthority:Ljava/lang/String;

    const-wide/16 v1, 0x80

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 339
    new-instance v0, Landroid/content/SyncResult;

    invoke-direct {v0}, Landroid/content/SyncResult;-><init>()V

    move-object v8, v0

    .line 340
    .local v8, "syncResult":Landroid/content/SyncResult;
    const/4 v3, 0x0

    .line 342
    .local v3, "provider":Landroid/content/ContentProviderClient;
    const/4 v9, 0x1

    :try_start_21
    invoke-direct {p0}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 343
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$sfgetENABLE_LOG()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 344
    const-string v0, "SyncAdapter"

    const-string v4, "Already canceled"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/lang/SecurityException; {:try_start_21 .. :try_end_34} :catch_f9
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_34} :catch_e9
    .catch Ljava/lang/Error; {:try_start_21 .. :try_end_34} :catch_e9
    .catchall {:try_start_21 .. :try_end_34} :catchall_e7

    .line 377
    :cond_34
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 379
    if-eqz v3, :cond_3c

    .line 380
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->release()Z

    .line 382
    :cond_3c
    invoke-direct {p0}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_47

    .line 383
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mSyncContext:Landroid/content/SyncContext;

    invoke-virtual {v0, v8}, Landroid/content/SyncContext;->onFinished(Landroid/content/SyncResult;)V

    .line 387
    :cond_47
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v0}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$fgetmSyncThreadLock(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 388
    :try_start_4e
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v0}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$fgetmSyncThreads(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mThreadsKey:Landroid/accounts/Account;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    monitor-exit v4
    :try_end_5a
    .catchall {:try_start_4e .. :try_end_5a} :catchall_68

    .line 391
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$sfgetENABLE_LOG()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 392
    const-string v0, "SyncAdapter"

    const-string v1, "Thread finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_67
    return-void

    .line 389
    :catchall_68
    move-exception v0

    :try_start_69
    monitor-exit v4
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    throw v0

    .line 348
    :cond_6b
    :try_start_6b
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$sfgetENABLE_LOG()Z

    move-result v0

    if-eqz v0, :cond_78

    .line 349
    const-string v0, "SyncAdapter"

    const-string v4, "Calling onPerformSync..."

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_78
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v0}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$fgetmContext(Landroid/content/AbstractThreadedSyncAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v4, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAuthority:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v7
    :try_end_88
    .catch Ljava/lang/SecurityException; {:try_start_6b .. :try_end_88} :catch_f9
    .catch Ljava/lang/RuntimeException; {:try_start_6b .. :try_end_88} :catch_e9
    .catch Ljava/lang/Error; {:try_start_6b .. :try_end_88} :catch_e9
    .catchall {:try_start_6b .. :try_end_88} :catchall_e7

    .line 353
    .end local v3    # "provider":Landroid/content/ContentProviderClient;
    .local v7, "provider":Landroid/content/ContentProviderClient;
    if-eqz v7, :cond_96

    .line 354
    :try_start_8a
    iget-object v3, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    iget-object v4, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAccount:Landroid/accounts/Account;

    iget-object v5, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mExtras:Landroid/os/Bundle;

    iget-object v6, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAuthority:Ljava/lang/String;

    invoke-virtual/range {v3 .. v8}, Landroid/content/AbstractThreadedSyncAdapter;->onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V

    goto :goto_98

    .line 357
    :cond_96
    iput-boolean v9, v8, Landroid/content/SyncResult;->databaseError:Z

    .line 360
    :goto_98
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$sfgetENABLE_LOG()Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 361
    const-string v0, "SyncAdapter"

    const-string/jumbo v3, "onPerformSync done"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a6
    .catch Ljava/lang/SecurityException; {:try_start_8a .. :try_end_a6} :catch_e4
    .catch Ljava/lang/RuntimeException; {:try_start_8a .. :try_end_a6} :catch_e1
    .catch Ljava/lang/Error; {:try_start_8a .. :try_end_a6} :catch_e1
    .catchall {:try_start_8a .. :try_end_a6} :catchall_de

    .line 377
    :cond_a6
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 379
    if-eqz v7, :cond_ae

    .line 380
    invoke-virtual {v7}, Landroid/content/ContentProviderClient;->release()Z

    .line 382
    :cond_ae
    invoke-direct {p0}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_b9

    .line 383
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mSyncContext:Landroid/content/SyncContext;

    invoke-virtual {v0, v8}, Landroid/content/SyncContext;->onFinished(Landroid/content/SyncResult;)V

    .line 387
    :cond_b9
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v0}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$fgetmSyncThreadLock(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 388
    :try_start_c0
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v0}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$fgetmSyncThreads(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mThreadsKey:Landroid/accounts/Account;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    monitor-exit v3
    :try_end_cc
    .catchall {:try_start_c0 .. :try_end_cc} :catchall_db

    .line 391
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$sfgetENABLE_LOG()Z

    move-result v0

    if-eqz v0, :cond_148

    .line 392
    const-string v0, "SyncAdapter"

    const-string v1, "Thread finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_148

    .line 389
    :catchall_db
    move-exception v0

    :try_start_dc
    monitor-exit v3
    :try_end_dd
    .catchall {:try_start_dc .. :try_end_dd} :catchall_db

    throw v0

    .line 377
    :catchall_de
    move-exception v0

    move-object v3, v7

    goto :goto_14c

    .line 371
    :catch_e1
    move-exception v0

    move-object v3, v7

    goto :goto_ea

    .line 364
    :catch_e4
    move-exception v0

    move-object v3, v7

    goto :goto_fa

    .line 377
    .end local v7    # "provider":Landroid/content/ContentProviderClient;
    .restart local v3    # "provider":Landroid/content/ContentProviderClient;
    :catchall_e7
    move-exception v0

    goto :goto_14c

    .line 371
    :catch_e9
    move-exception v0

    .line 372
    .local v0, "th":Ljava/lang/Throwable;
    :goto_ea
    :try_start_ea
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$sfgetENABLE_LOG()Z

    move-result v4

    if-eqz v4, :cond_f7

    .line 373
    const-string v4, "SyncAdapter"

    const-string v5, "caught exception"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 375
    :cond_f7
    nop

    .end local v3    # "provider":Landroid/content/ContentProviderClient;
    .end local v8    # "syncResult":Landroid/content/SyncResult;
    .end local p0    # "this":Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
    throw v0

    .line 364
    .end local v0    # "th":Ljava/lang/Throwable;
    .restart local v3    # "provider":Landroid/content/ContentProviderClient;
    .restart local v8    # "syncResult":Landroid/content/SyncResult;
    .restart local p0    # "this":Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
    :catch_f9
    move-exception v0

    .line 365
    .local v0, "e":Ljava/lang/SecurityException;
    :goto_fa
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$sfgetENABLE_LOG()Z

    move-result v4

    if-eqz v4, :cond_107

    .line 366
    const-string v4, "SyncAdapter"

    const-string v5, "SecurityException"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 368
    :cond_107
    iget-object v4, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    iget-object v5, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAccount:Landroid/accounts/Account;

    iget-object v6, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mExtras:Landroid/os/Bundle;

    iget-object v7, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAuthority:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/content/AbstractThreadedSyncAdapter;->onSecurityException(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/SyncResult;)V

    .line 370
    iput-boolean v9, v8, Landroid/content/SyncResult;->databaseError:Z
    :try_end_114
    .catchall {:try_start_ea .. :try_end_114} :catchall_e7

    .line 377
    .end local v0    # "e":Ljava/lang/SecurityException;
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 379
    if-eqz v3, :cond_11c

    .line 380
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->release()Z

    .line 382
    :cond_11c
    invoke-direct {p0}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_127

    .line 383
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mSyncContext:Landroid/content/SyncContext;

    invoke-virtual {v0, v8}, Landroid/content/SyncContext;->onFinished(Landroid/content/SyncResult;)V

    .line 387
    :cond_127
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v0}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$fgetmSyncThreadLock(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 388
    :try_start_12e
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v0}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$fgetmSyncThreads(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mThreadsKey:Landroid/accounts/Account;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    monitor-exit v4
    :try_end_13a
    .catchall {:try_start_12e .. :try_end_13a} :catchall_149

    .line 391
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$sfgetENABLE_LOG()Z

    move-result v0

    if-eqz v0, :cond_147

    .line 392
    const-string v0, "SyncAdapter"

    const-string v1, "Thread finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_147
    move-object v7, v3

    .end local v3    # "provider":Landroid/content/ContentProviderClient;
    .restart local v7    # "provider":Landroid/content/ContentProviderClient;
    :cond_148
    :goto_148
    return-void

    .line 389
    .end local v7    # "provider":Landroid/content/ContentProviderClient;
    .restart local v3    # "provider":Landroid/content/ContentProviderClient;
    :catchall_149
    move-exception v0

    :try_start_14a
    monitor-exit v4
    :try_end_14b
    .catchall {:try_start_14a .. :try_end_14b} :catchall_149

    throw v0

    .line 377
    :goto_14c
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 379
    if-eqz v3, :cond_154

    .line 380
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->release()Z

    .line 382
    :cond_154
    invoke-direct {p0}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_15f

    .line 383
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mSyncContext:Landroid/content/SyncContext;

    invoke-virtual {v1, v8}, Landroid/content/SyncContext;->onFinished(Landroid/content/SyncResult;)V

    .line 387
    :cond_15f
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v1}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$fgetmSyncThreadLock(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 388
    :try_start_166
    iget-object v2, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v2}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$fgetmSyncThreads(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v4, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mThreadsKey:Landroid/accounts/Account;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    monitor-exit v1
    :try_end_172
    .catchall {:try_start_166 .. :try_end_172} :catchall_180

    .line 391
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$sfgetENABLE_LOG()Z

    move-result v1

    if-eqz v1, :cond_17f

    .line 392
    const-string v1, "SyncAdapter"

    const-string v2, "Thread finished"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_17f
    throw v0

    .line 389
    :catchall_180
    move-exception v0

    :try_start_181
    monitor-exit v1
    :try_end_182
    .catchall {:try_start_181 .. :try_end_182} :catchall_180

    throw v0
.end method
