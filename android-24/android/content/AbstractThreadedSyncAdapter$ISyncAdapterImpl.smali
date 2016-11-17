.class Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;
.super Landroid/content/ISyncAdapter$Stub;
.source "AbstractThreadedSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/AbstractThreadedSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ISyncAdapterImpl"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/AbstractThreadedSyncAdapter;


# direct methods
.method private constructor <init>(Landroid/content/AbstractThreadedSyncAdapter;)V
    .locals 0
    .param p1, "this$0"    # Landroid/content/AbstractThreadedSyncAdapter;

    #@0
    .prologue
    .line 162
    iput-object p1, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    #@2
    invoke-direct {p0}, Landroid/content/ISyncAdapter$Stub;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/AbstractThreadedSyncAdapter;Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/content/AbstractThreadedSyncAdapter;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;-><init>(Landroid/content/AbstractThreadedSyncAdapter;)V

    #@3
    return-void
.end method


# virtual methods
.method public cancelSync(Landroid/content/ISyncContext;)V
    .locals 6
    .param p1, "syncContext"    # Landroid/content/ISyncContext;

    #@0
    .prologue
    .line 208
    const/4 v2, 0x0

    #@1
    .line 209
    .local v2, "info":Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
    iget-object v3, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    #@3
    invoke-static {v3}, Landroid/content/AbstractThreadedSyncAdapter;->-get4(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/lang/Object;

    #@6
    move-result-object v4

    #@7
    monitor-enter v4

    #@8
    .line 210
    :try_start_0
    iget-object v3, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    #@a
    invoke-static {v3}, Landroid/content/AbstractThreadedSyncAdapter;->-get5(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/HashMap;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@11
    move-result-object v3

    #@12
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object v1

    #@16
    .local v1, "current$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_1

    #@1c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;

    #@22
    .line 211
    .local v0, "current":Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
    invoke-static {v0}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->-get0(Landroid/content/AbstractThreadedSyncAdapter$SyncThread;)Landroid/content/SyncContext;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3}, Landroid/content/SyncContext;->getSyncContextBinder()Landroid/os/IBinder;

    #@29
    move-result-object v3

    #@2a
    invoke-interface {p1}, Landroid/content/ISyncContext;->asBinder()Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    move-result-object v5

    #@2e
    if-ne v3, v5, :cond_0

    #@30
    .line 212
    move-object v2, v0

    #@31
    .end local v0    # "current":Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
    .end local v2    # "info":Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
    :cond_1
    monitor-exit v4

    #@32
    .line 217
    if-eqz v2, :cond_2

    #@34
    .line 218
    iget-object v3, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    #@36
    invoke-static {v3}, Landroid/content/AbstractThreadedSyncAdapter;->-get0(Landroid/content/AbstractThreadedSyncAdapter;)Z

    #@39
    move-result v3

    #@3a
    if-eqz v3, :cond_3

    #@3c
    .line 219
    iget-object v3, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    #@3e
    invoke-virtual {v3, v2}, Landroid/content/AbstractThreadedSyncAdapter;->onSyncCanceled(Ljava/lang/Thread;)V

    #@41
    .line 205
    :cond_2
    :goto_0
    return-void

    #@42
    .line 209
    .end local v1    # "current$iterator":Ljava/util/Iterator;
    .restart local v2    # "info":Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
    :catchall_0
    move-exception v3

    #@43
    monitor-exit v4

    #@44
    throw v3

    #@45
    .line 221
    .end local v2    # "info":Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
    .restart local v1    # "current$iterator":Ljava/util/Iterator;
    :cond_3
    iget-object v3, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    #@47
    invoke-virtual {v3}, Landroid/content/AbstractThreadedSyncAdapter;->onSyncCanceled()V

    #@4a
    goto :goto_0
.end method

.method public initialize(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 3
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 227
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 228
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "initialize"

    #@8
    const/4 v2, 0x1

    #@9
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@c
    .line 229
    const/4 v1, 0x0

    #@d
    invoke-virtual {p0, v1, p2, p1, v0}, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->startSync(Landroid/content/ISyncContext;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;)V

    #@10
    .line 226
    return-void
.end method

.method public startSync(Landroid/content/ISyncContext;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;)V
    .locals 11
    .param p1, "syncContext"    # Landroid/content/ISyncContext;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "account"    # Landroid/accounts/Account;
    .param p4, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 166
    new-instance v3, Landroid/content/SyncContext;

    #@2
    invoke-direct {v3, p1}, Landroid/content/SyncContext;-><init>(Landroid/content/ISyncContext;)V

    #@5
    .line 171
    .local v3, "syncContextClient":Landroid/content/SyncContext;
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    #@7
    invoke-static {v1, p3}, Landroid/content/AbstractThreadedSyncAdapter;->-wrap0(Landroid/content/AbstractThreadedSyncAdapter;Landroid/accounts/Account;)Landroid/accounts/Account;

    #@a
    move-result-object v9

    #@b
    .line 172
    .local v9, "threadsKey":Landroid/accounts/Account;
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    #@d
    invoke-static {v1}, Landroid/content/AbstractThreadedSyncAdapter;->-get4(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/lang/Object;

    #@10
    move-result-object v10

    #@11
    monitor-enter v10

    #@12
    .line 173
    :try_start_0
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    #@14
    invoke-static {v1}, Landroid/content/AbstractThreadedSyncAdapter;->-get5(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/HashMap;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@1b
    move-result v1

    #@1c
    if-nez v1, :cond_3

    #@1e
    .line 174
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    #@20
    invoke-static {v1}, Landroid/content/AbstractThreadedSyncAdapter;->-get1(Landroid/content/AbstractThreadedSyncAdapter;)Z

    #@23
    move-result v1

    #@24
    if-eqz v1, :cond_1

    #@26
    .line 175
    if-eqz p4, :cond_1

    #@28
    .line 176
    const-string/jumbo v1, "initialize"

    #@2b
    const/4 v2, 0x0

    #@2c
    invoke-virtual {p4, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@2f
    move-result v1

    #@30
    .line 174
    if-eqz v1, :cond_1

    #@32
    .line 178
    :try_start_1
    invoke-static {p3, p2}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    #@35
    move-result v1

    #@36
    if-gez v1, :cond_0

    #@38
    .line 179
    const/4 v1, 0x1

    #@39
    invoke-static {p3, p2, v1}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3c
    .line 182
    :cond_0
    :try_start_2
    new-instance v1, Landroid/content/SyncResult;

    #@3e
    invoke-direct {v1}, Landroid/content/SyncResult;-><init>()V

    #@41
    invoke-virtual {v3, v1}, Landroid/content/SyncContext;->onFinished(Landroid/content/SyncResult;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@44
    monitor-exit v10

    #@45
    .line 184
    return-void

    #@46
    .line 181
    :catchall_0
    move-exception v1

    #@47
    .line 182
    :try_start_3
    new-instance v2, Landroid/content/SyncResult;

    #@49
    invoke-direct {v2}, Landroid/content/SyncResult;-><init>()V

    #@4c
    invoke-virtual {v3, v2}, Landroid/content/SyncContext;->onFinished(Landroid/content/SyncResult;)V

    #@4f
    .line 181
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@50
    .line 172
    :catchall_1
    move-exception v1

    #@51
    monitor-exit v10

    #@52
    throw v1

    #@53
    .line 186
    :cond_1
    :try_start_4
    new-instance v0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;

    #@55
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    #@57
    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string/jumbo v4, "SyncAdapterThread-"

    #@5f
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v2

    #@63
    iget-object v4, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    #@65
    invoke-static {v4}, Landroid/content/AbstractThreadedSyncAdapter;->-get3(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/concurrent/atomic/AtomicInteger;

    #@68
    move-result-object v4

    #@69
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    #@6c
    move-result v4

    #@6d
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@70
    move-result-object v2

    #@71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v2

    #@75
    .line 186
    const/4 v7, 0x0

    #@76
    move-object v4, p2

    #@77
    move-object v5, p3

    #@78
    move-object v6, p4

    #@79
    invoke-direct/range {v0 .. v7}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;-><init>(Landroid/content/AbstractThreadedSyncAdapter;Ljava/lang/String;Landroid/content/SyncContext;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/AbstractThreadedSyncAdapter$SyncThread;)V

    #@7c
    .line 189
    .local v0, "syncThread":Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    #@7e
    invoke-static {v1}, Landroid/content/AbstractThreadedSyncAdapter;->-get5(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/HashMap;

    #@81
    move-result-object v1

    #@82
    invoke-virtual {v1, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@85
    .line 190
    invoke-virtual {v0}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->start()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@88
    .line 191
    const/4 v8, 0x0

    #@89
    .end local v0    # "syncThread":Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
    .local v8, "alreadyInProgress":Z
    :goto_0
    monitor-exit v10

    #@8a
    .line 199
    if-eqz v8, :cond_2

    #@8c
    .line 200
    sget-object v1, Landroid/content/SyncResult;->ALREADY_IN_PROGRESS:Landroid/content/SyncResult;

    #@8e
    invoke-virtual {v3, v1}, Landroid/content/SyncContext;->onFinished(Landroid/content/SyncResult;)V

    #@91
    .line 165
    :cond_2
    return-void

    #@92
    .line 193
    .end local v8    # "alreadyInProgress":Z
    :cond_3
    const/4 v8, 0x1

    #@93
    .restart local v8    # "alreadyInProgress":Z
    goto :goto_0
.end method
