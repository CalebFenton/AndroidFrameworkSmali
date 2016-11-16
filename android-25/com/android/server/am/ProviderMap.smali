.class public final Lcom/android/server/am/ProviderMap;
.super Ljava/lang/Object;
.source "ProviderMap.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "ProviderMap"


# instance fields
.field private final mAm:Lcom/android/server/am/ActivityManagerService;

.field private final mProvidersByClassPerUser:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mProvidersByNamePerUser:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSingletonByClass:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mSingletonByName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1
    .param p1, "am"    # Lcom/android/server/am/ActivityManagerService;

    #@0
    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 49
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    .line 48
    iput-object v0, p0, Lcom/android/server/am/ProviderMap;->mSingletonByName:Ljava/util/HashMap;

    #@a
    .line 51
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    .line 50
    iput-object v0, p0, Lcom/android/server/am/ProviderMap;->mSingletonByClass:Ljava/util/HashMap;

    #@11
    .line 54
    new-instance v0, Landroid/util/SparseArray;

    #@13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@16
    .line 53
    iput-object v0, p0, Lcom/android/server/am/ProviderMap;->mProvidersByNamePerUser:Landroid/util/SparseArray;

    #@18
    .line 56
    new-instance v0, Landroid/util/SparseArray;

    #@1a
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@1d
    .line 55
    iput-object v0, p0, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    #@1f
    .line 59
    iput-object p1, p0, Lcom/android/server/am/ProviderMap;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@21
    .line 58
    return-void
.end method

.method private collectPackageProvidersLocked(Ljava/lang/String;Ljava/util/Set;ZZLjava/util/HashMap;Ljava/util/ArrayList;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "doit"    # Z
    .param p4, "evenPersistent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p5, "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;>;"
    .local p6, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ContentProviderRecord;>;"
    const/4 v4, 0x1

    #@1
    .line 192
    const/4 v0, 0x0

    #@2
    .line 193
    .local v0, "didSomething":Z
    invoke-virtual {p5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@5
    move-result-object v5

    #@6
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v2

    #@a
    .local v2, "provider$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v5

    #@e
    if-eqz v5, :cond_6

    #@10
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Lcom/android/server/am/ContentProviderRecord;

    #@16
    .line 194
    .local v1, "provider":Lcom/android/server/am/ContentProviderRecord;
    if-eqz p1, :cond_2

    #@18
    .line 195
    iget-object v5, v1, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    #@1a
    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    #@1c
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v5

    #@20
    if-eqz v5, :cond_4

    #@22
    .line 196
    if-eqz p2, :cond_3

    #@24
    .line 197
    iget-object v5, v1, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    #@26
    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@29
    move-result-object v5

    #@2a
    invoke-interface {p2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@2d
    move-result v3

    #@2e
    .line 198
    .local v3, "sameComponent":Z
    :goto_1
    if-eqz v3, :cond_0

    #@30
    .line 199
    iget-object v5, v1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    #@32
    if-eqz v5, :cond_1

    #@34
    if-nez p4, :cond_1

    #@36
    iget-object v5, v1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    #@38
    iget-boolean v5, v5, Lcom/android/server/am/ProcessRecord;->persistent:Z

    #@3a
    if-nez v5, :cond_0

    #@3c
    .line 200
    :cond_1
    if-nez p3, :cond_5

    #@3e
    .line 201
    return v4

    #@3f
    .end local v3    # "sameComponent":Z
    :cond_2
    move v3, v4

    #@40
    .line 194
    goto :goto_1

    #@41
    :cond_3
    move v3, v4

    #@42
    .line 196
    goto :goto_1

    #@43
    .line 195
    :cond_4
    const/4 v3, 0x0

    #@44
    goto :goto_1

    #@45
    .line 203
    .restart local v3    # "sameComponent":Z
    :cond_5
    const/4 v0, 0x1

    #@46
    .line 204
    invoke-virtual {p6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@49
    goto :goto_0

    #@4a
    .line 207
    .end local v1    # "provider":Lcom/android/server/am/ContentProviderRecord;
    .end local v3    # "sameComponent":Z
    :cond_6
    return v0
.end method

.method private dumpProvider(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/am/ContentProviderRecord;[Ljava/lang/String;Z)V
    .locals 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "pw"    # Ljava/io/PrintWriter;
    .param p4, "r"    # Lcom/android/server/am/ContentProviderRecord;
    .param p5, "args"    # [Ljava/lang/String;
    .param p6, "dumpAll"    # Z

    #@0
    .prologue
    .line 390
    new-instance v4, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v4

    #@9
    const-string/jumbo v5, "  "

    #@c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v4

    #@10
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    .line 391
    .local v2, "innerPrefix":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/ProviderMap;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@16
    monitor-enter v5

    #@17
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@1a
    .line 392
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d
    const-string/jumbo v4, "PROVIDER "

    #@20
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@23
    .line 393
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@26
    .line 394
    const-string/jumbo v4, " pid="

    #@29
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2c
    .line 395
    iget-object v4, p4, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    #@2e
    if-eqz v4, :cond_2

    #@30
    iget-object v4, p4, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    #@32
    iget v4, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    #@34
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(I)V

    #@37
    .line 397
    :goto_0
    if-eqz p6, :cond_0

    #@39
    .line 398
    const/4 v4, 0x1

    #@3a
    invoke-virtual {p4, p3, v2, v4}, Lcom/android/server/am/ContentProviderRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3d
    :cond_0
    monitor-exit v5

    #@3e
    .line 391
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@41
    .line 401
    iget-object v4, p4, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    #@43
    if-eqz v4, :cond_1

    #@45
    iget-object v4, p4, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    #@47
    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@49
    if-eqz v4, :cond_1

    #@4b
    .line 402
    const-string/jumbo v4, "    Client:"

    #@4e
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@51
    .line 403
    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    #@54
    .line 405
    :try_start_1
    new-instance v3, Lcom/android/internal/os/TransferPipe;

    #@56
    invoke-direct {v3}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@59
    .line 407
    .local v3, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_2
    iget-object v4, p4, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    #@5b
    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@5d
    .line 408
    invoke-virtual {v3}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    #@60
    move-result-object v5

    #@61
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@64
    move-result-object v5

    #@65
    iget-object v6, p4, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    #@67
    invoke-interface {v6}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    #@6a
    move-result-object v6

    #@6b
    .line 407
    invoke-interface {v4, v5, v6, p5}, Landroid/app/IApplicationThread;->dumpProvider(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    #@6e
    .line 409
    const-string/jumbo v4, "      "

    #@71
    invoke-virtual {v3, v4}, Lcom/android/internal/os/TransferPipe;->setBufferPrefix(Ljava/lang/String;)V

    #@74
    .line 412
    const-wide/16 v4, 0x7d0

    #@76
    invoke-virtual {v3, p2, v4, v5}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@79
    .line 414
    :try_start_3
    invoke-virtual {v3}, Lcom/android/internal/os/TransferPipe;->kill()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    #@7c
    .line 389
    .end local v3    # "tp":Lcom/android/internal/os/TransferPipe;
    :cond_1
    :goto_1
    return-void

    #@7d
    .line 396
    :cond_2
    :try_start_4
    const-string/jumbo v4, "(not running)"

    #@80
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@83
    goto :goto_0

    #@84
    .line 391
    :catchall_0
    move-exception v4

    #@85
    monitor-exit v5

    #@86
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@89
    throw v4

    #@8a
    .line 413
    .restart local v3    # "tp":Lcom/android/internal/os/TransferPipe;
    :catchall_1
    move-exception v4

    #@8b
    .line 414
    :try_start_5
    invoke-virtual {v3}, Lcom/android/internal/os/TransferPipe;->kill()V

    #@8e
    .line 413
    throw v4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    #@8f
    .line 416
    .end local v3    # "tp":Lcom/android/internal/os/TransferPipe;
    :catch_0
    move-exception v1

    #@90
    .line 417
    .local v1, "ex":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    #@92
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@95
    const-string/jumbo v5, "      Failure while dumping the provider: "

    #@98
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v4

    #@9c
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v4

    #@a0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a3
    move-result-object v4

    #@a4
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a7
    goto :goto_1

    #@a8
    .line 418
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v0

    #@a9
    .line 419
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v4, "      Got a RemoteException while dumping the service"

    #@ac
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@af
    goto :goto_1
.end method

.method private dumpProvidersByClassLocked(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Z
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpAll"    # Z
    .param p3, "dumpPackage"    # Ljava/lang/String;
    .param p4, "header"    # Ljava/lang/String;
    .param p5, "needSep"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 244
    .local p6, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;>;"
    invoke-virtual {p6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@3
    move-result-object v4

    #@4
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    .line 245
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;>;>;"
    const/4 v3, 0x0

    #@9
    .line 246
    .end local p4    # "header":Ljava/lang/String;
    .end local p5    # "needSep":Z
    .local v3, "written":Z
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v4

    #@d
    if-eqz v4, :cond_4

    #@f
    .line 247
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Ljava/util/Map$Entry;

    #@15
    .line 248
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@18
    move-result-object v2

    #@19
    check-cast v2, Lcom/android/server/am/ContentProviderRecord;

    #@1b
    .line 249
    .local v2, "r":Lcom/android/server/am/ContentProviderRecord;
    if-eqz p3, :cond_1

    #@1d
    iget-object v4, v2, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@1f
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@21
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v4

    #@25
    if-eqz v4, :cond_0

    #@27
    .line 252
    :cond_1
    if-eqz p5, :cond_2

    #@29
    .line 253
    const-string/jumbo v4, ""

    #@2c
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2f
    .line 254
    const/4 p5, 0x0

    #@30
    .line 256
    :cond_2
    if-eqz p4, :cond_3

    #@32
    .line 257
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@35
    .line 258
    const/4 p4, 0x0

    #@36
    .line 260
    :cond_3
    const/4 v3, 0x1

    #@37
    .line 261
    const-string/jumbo v4, "  * "

    #@3a
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3d
    .line 262
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@40
    .line 263
    const-string/jumbo v4, "    "

    #@43
    invoke-virtual {v2, p1, v4, p2}, Lcom/android/server/am/ContentProviderRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    #@46
    goto :goto_0

    #@47
    .line 265
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;>;"
    .end local v2    # "r":Lcom/android/server/am/ContentProviderRecord;
    :cond_4
    return v3
.end method

.method private dumpProvidersByNameLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Z
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpPackage"    # Ljava/lang/String;
    .param p3, "header"    # Ljava/lang/String;
    .param p4, "needSep"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 270
    .local p5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;>;"
    invoke-virtual {p5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@3
    move-result-object v4

    #@4
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    .line 271
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;>;>;"
    const/4 v3, 0x0

    #@9
    .line 272
    .end local p3    # "header":Ljava/lang/String;
    .end local p4    # "needSep":Z
    .local v3, "written":Z
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v4

    #@d
    if-eqz v4, :cond_4

    #@f
    .line 273
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Ljava/util/Map$Entry;

    #@15
    .line 274
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@18
    move-result-object v2

    #@19
    check-cast v2, Lcom/android/server/am/ContentProviderRecord;

    #@1b
    .line 275
    .local v2, "r":Lcom/android/server/am/ContentProviderRecord;
    if-eqz p2, :cond_1

    #@1d
    iget-object v4, v2, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@1f
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@21
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v4

    #@25
    if-eqz v4, :cond_0

    #@27
    .line 278
    :cond_1
    if-eqz p4, :cond_2

    #@29
    .line 279
    const-string/jumbo v4, ""

    #@2c
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2f
    .line 280
    const/4 p4, 0x0

    #@30
    .line 282
    :cond_2
    if-eqz p3, :cond_3

    #@32
    .line 283
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@35
    .line 284
    const/4 p3, 0x0

    #@36
    .line 286
    :cond_3
    const/4 v3, 0x1

    #@37
    .line 287
    const-string/jumbo v4, "  "

    #@3a
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3d
    .line 288
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@40
    move-result-object v4

    #@41
    check-cast v4, Ljava/lang/String;

    #@43
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@46
    .line 289
    const-string/jumbo v4, ": "

    #@49
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4c
    .line 290
    invoke-virtual {v2}, Lcom/android/server/am/ContentProviderRecord;->toShortString()Ljava/lang/String;

    #@4f
    move-result-object v4

    #@50
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@53
    goto :goto_0

    #@54
    .line 292
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;>;"
    .end local v2    # "r":Lcom/android/server/am/ContentProviderRecord;
    :cond_4
    return v3
.end method

.method private getProvidersByName(I)Ljava/util/HashMap;
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 163
    if-gez p1, :cond_0

    #@2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    new-instance v3, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v4, "Bad user "

    #@c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v2

    #@1c
    .line 164
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ProviderMap;->mProvidersByNamePerUser:Landroid/util/SparseArray;

    #@1e
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Ljava/util/HashMap;

    #@24
    .line 165
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;>;"
    if-nez v0, :cond_1

    #@26
    .line 166
    new-instance v1, Ljava/util/HashMap;

    #@28
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@2b
    .line 167
    .local v1, "newMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;>;"
    iget-object v2, p0, Lcom/android/server/am/ProviderMap;->mProvidersByNamePerUser:Landroid/util/SparseArray;

    #@2d
    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@30
    .line 168
    return-object v1

    #@31
    .line 170
    .end local v1    # "newMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;>;"
    :cond_1
    return-object v0
.end method


# virtual methods
.method collectPackageProvidersLocked(Ljava/lang/String;Ljava/util/Set;ZZILjava/util/ArrayList;)Z
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "doit"    # Z
    .param p4, "evenPersistent"    # Z
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;ZZI",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 213
    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p6, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ContentProviderRecord;>;"
    const/4 v7, 0x0

    #@1
    .line 214
    .local v7, "didSomething":Z
    const/4 v0, -0x1

    #@2
    if-eq p5, v0, :cond_0

    #@4
    if-nez p5, :cond_1

    #@6
    .line 216
    :cond_0
    iget-object v5, p0, Lcom/android/server/am/ProviderMap;->mSingletonByClass:Ljava/util/HashMap;

    #@8
    move-object v0, p0

    #@9
    move-object v1, p1

    #@a
    move-object v2, p2

    #@b
    move v3, p3

    #@c
    move v4, p4

    #@d
    move-object v6, p6

    #@e
    .line 215
    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ProviderMap;->collectPackageProvidersLocked(Ljava/lang/String;Ljava/util/Set;ZZLjava/util/HashMap;Ljava/util/ArrayList;)Z

    #@11
    move-result v7

    #@12
    .line 218
    .end local v7    # "didSomething":Z
    :cond_1
    if-nez p3, :cond_2

    #@14
    if-eqz v7, :cond_2

    #@16
    .line 219
    const/4 v0, 0x1

    #@17
    return v0

    #@18
    .line 221
    :cond_2
    const/4 v0, -0x1

    #@19
    if-ne p5, v0, :cond_5

    #@1b
    .line 222
    const/4 v8, 0x0

    #@1c
    .local v8, "i":I
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    #@1e
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    #@21
    move-result v0

    #@22
    if-ge v8, v0, :cond_6

    #@24
    .line 224
    iget-object v0, p0, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    #@26
    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@29
    move-result-object v5

    #@2a
    check-cast v5, Ljava/util/HashMap;

    #@2c
    move-object v0, p0

    #@2d
    move-object v1, p1

    #@2e
    move-object v2, p2

    #@2f
    move v3, p3

    #@30
    move v4, p4

    #@31
    move-object v6, p6

    #@32
    .line 223
    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ProviderMap;->collectPackageProvidersLocked(Ljava/lang/String;Ljava/util/Set;ZZLjava/util/HashMap;Ljava/util/ArrayList;)Z

    #@35
    move-result v0

    #@36
    if-eqz v0, :cond_4

    #@38
    .line 225
    if-nez p3, :cond_3

    #@3a
    .line 226
    const/4 v0, 0x1

    #@3b
    return v0

    #@3c
    .line 228
    :cond_3
    const/4 v7, 0x1

    #@3d
    .line 222
    :cond_4
    add-int/lit8 v8, v8, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 233
    .end local v8    # "i":I
    :cond_5
    invoke-virtual {p0, p5}, Lcom/android/server/am/ProviderMap;->getProvidersByClass(I)Ljava/util/HashMap;

    #@43
    move-result-object v5

    #@44
    .line 234
    .local v5, "items":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;>;"
    if-eqz v5, :cond_6

    #@46
    move-object v0, p0

    #@47
    move-object v1, p1

    #@48
    move-object v2, p2

    #@49
    move v3, p3

    #@4a
    move v4, p4

    #@4b
    move-object v6, p6

    #@4c
    .line 235
    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ProviderMap;->collectPackageProvidersLocked(Ljava/lang/String;Ljava/util/Set;ZZLjava/util/HashMap;Ljava/util/ArrayList;)Z

    #@4f
    move-result v0

    #@50
    or-int/2addr v7, v0

    #@51
    .line 239
    .end local v5    # "items":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;>;"
    :cond_6
    return v7
.end method

.method protected dumpProvider(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZ)Z
    .locals 16
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "opti"    # I
    .param p6, "dumpAll"    # Z

    #@0
    .prologue
    .line 327
    new-instance v8, Ljava/util/ArrayList;

    #@2
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 328
    .local v8, "allProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ContentProviderRecord;>;"
    new-instance v14, Ljava/util/ArrayList;

    #@7
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    #@a
    .line 330
    .local v14, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ContentProviderRecord;>;"
    move-object/from16 v0, p0

    #@c
    iget-object v2, v0, Lcom/android/server/am/ProviderMap;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@e
    monitor-enter v2

    #@f
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@12
    .line 331
    move-object/from16 v0, p0

    #@14
    iget-object v1, v0, Lcom/android/server/am/ProviderMap;->mSingletonByClass:Ljava/util/HashMap;

    #@16
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@1d
    .line 332
    const/4 v11, 0x0

    #@1e
    .local v11, "i":I
    :goto_0
    move-object/from16 v0, p0

    #@20
    iget-object v1, v0, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    #@22
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    #@25
    move-result v1

    #@26
    if-ge v11, v1, :cond_0

    #@28
    .line 333
    move-object/from16 v0, p0

    #@2a
    iget-object v1, v0, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    #@2c
    invoke-virtual {v1, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@2f
    move-result-object v1

    #@30
    check-cast v1, Ljava/util/HashMap;

    #@32
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@39
    .line 332
    add-int/lit8 v11, v11, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 336
    :cond_0
    const-string/jumbo v1, "all"

    #@3f
    move-object/from16 v0, p3

    #@41
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@44
    move-result v1

    #@45
    if-eqz v1, :cond_2

    #@47
    .line 337
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4a
    .end local p3    # "name":Ljava/lang/String;
    :cond_1
    monitor-exit v2

    #@4b
    .line 330
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@4e
    .line 369
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    #@51
    move-result v1

    #@52
    if-gtz v1, :cond_8

    #@54
    .line 370
    const/4 v1, 0x0

    #@55
    return v1

    #@56
    .line 339
    .restart local p3    # "name":Ljava/lang/String;
    :cond_2
    if-eqz p3, :cond_5

    #@58
    .line 340
    :try_start_1
    invoke-static/range {p3 .. p3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5b
    move-result-object v9

    #@5c
    .line 341
    .local v9, "componentName":Landroid/content/ComponentName;
    :goto_1
    const/4 v13, 0x0

    #@5d
    .line 342
    .local v13, "objectId":I
    if-nez v9, :cond_3

    #@5f
    .line 345
    const/16 v1, 0x10

    #@61
    :try_start_2
    move-object/from16 v0, p3

    #@63
    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@66
    move-result v13

    #@67
    .line 346
    const/16 p3, 0x0

    #@69
    .line 347
    .local p3, "name":Ljava/lang/String;
    const/4 v9, 0x0

    #@6a
    .line 352
    .end local v9    # "componentName":Landroid/content/ComponentName;
    .end local p3    # "name":Ljava/lang/String;
    :cond_3
    :goto_2
    const/4 v11, 0x0

    #@6b
    :goto_3
    :try_start_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@6e
    move-result v1

    #@6f
    if-ge v11, v1, :cond_1

    #@71
    .line 353
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@74
    move-result-object v15

    #@75
    check-cast v15, Lcom/android/server/am/ContentProviderRecord;

    #@77
    .line 354
    .local v15, "r1":Lcom/android/server/am/ContentProviderRecord;
    if-eqz v9, :cond_6

    #@79
    .line 355
    iget-object v1, v15, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    #@7b
    invoke-virtual {v1, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@7e
    move-result v1

    #@7f
    if-eqz v1, :cond_4

    #@81
    .line 356
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@84
    .line 352
    :cond_4
    :goto_4
    add-int/lit8 v11, v11, 0x1

    #@86
    goto :goto_3

    #@87
    .line 340
    .end local v13    # "objectId":I
    .end local v15    # "r1":Lcom/android/server/am/ContentProviderRecord;
    .local p3, "name":Ljava/lang/String;
    :cond_5
    const/4 v9, 0x0

    #@88
    goto :goto_1

    #@89
    .line 348
    .restart local v9    # "componentName":Landroid/content/ComponentName;
    .restart local v13    # "objectId":I
    :catch_0
    move-exception v10

    #@8a
    .local v10, "e":Ljava/lang/RuntimeException;
    goto :goto_2

    #@8b
    .line 358
    .end local v9    # "componentName":Landroid/content/ComponentName;
    .end local v10    # "e":Ljava/lang/RuntimeException;
    .end local p3    # "name":Ljava/lang/String;
    .restart local v15    # "r1":Lcom/android/server/am/ContentProviderRecord;
    :cond_6
    if-eqz p3, :cond_7

    #@8d
    .line 359
    iget-object v1, v15, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    #@8f
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@92
    move-result-object v1

    #@93
    move-object/from16 v0, p3

    #@95
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@98
    move-result v1

    #@99
    if-eqz v1, :cond_4

    #@9b
    .line 360
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@9e
    goto :goto_4

    #@9f
    .line 330
    .end local v11    # "i":I
    .end local v13    # "objectId":I
    .end local v15    # "r1":Lcom/android/server/am/ContentProviderRecord;
    :catchall_0
    move-exception v1

    #@a0
    monitor-exit v2

    #@a1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@a4
    throw v1

    #@a5
    .line 362
    .restart local v11    # "i":I
    .restart local v13    # "objectId":I
    .restart local v15    # "r1":Lcom/android/server/am/ContentProviderRecord;
    :cond_7
    :try_start_4
    invoke-static {v15}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@a8
    move-result v1

    #@a9
    if-ne v1, v13, :cond_4

    #@ab
    .line 363
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@ae
    goto :goto_4

    #@af
    .line 373
    .end local v13    # "objectId":I
    .end local v15    # "r1":Lcom/android/server/am/ContentProviderRecord;
    :cond_8
    const/4 v12, 0x0

    #@b0
    .line 374
    .local v12, "needSep":Z
    const/4 v11, 0x0

    #@b1
    :goto_5
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    #@b4
    move-result v1

    #@b5
    if-ge v11, v1, :cond_a

    #@b7
    .line 375
    if-eqz v12, :cond_9

    #@b9
    .line 376
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@bc
    .line 378
    :cond_9
    const/4 v12, 0x1

    #@bd
    .line 379
    const-string/jumbo v2, ""

    #@c0
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c3
    move-result-object v5

    #@c4
    check-cast v5, Lcom/android/server/am/ContentProviderRecord;

    #@c6
    move-object/from16 v1, p0

    #@c8
    move-object/from16 v3, p1

    #@ca
    move-object/from16 v4, p2

    #@cc
    move-object/from16 v6, p4

    #@ce
    move/from16 v7, p6

    #@d0
    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/ProviderMap;->dumpProvider(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/am/ContentProviderRecord;[Ljava/lang/String;Z)V

    #@d3
    .line 374
    add-int/lit8 v11, v11, 0x1

    #@d5
    goto :goto_5

    #@d6
    .line 381
    :cond_a
    const/4 v1, 0x1

    #@d7
    return v1
.end method

.method dumpProvidersLocked(Ljava/io/PrintWriter;ZLjava/lang/String;)Z
    .locals 14
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpAll"    # Z
    .param p3, "dumpPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 296
    const/4 v5, 0x0

    #@1
    .line 298
    .local v5, "needSep":Z
    iget-object v0, p0, Lcom/android/server/am/ProviderMap;->mSingletonByClass:Ljava/util/HashMap;

    #@3
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    #@6
    move-result v0

    #@7
    if-lez v0, :cond_0

    #@9
    .line 300
    const-string/jumbo v4, "  Published single-user content providers (by class):"

    #@c
    .line 301
    iget-object v6, p0, Lcom/android/server/am/ProviderMap;->mSingletonByClass:Ljava/util/HashMap;

    #@e
    move-object v0, p0

    #@f
    move-object v1, p1

    #@10
    move/from16 v2, p2

    #@12
    move-object/from16 v3, p3

    #@14
    .line 299
    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ProviderMap;->dumpProvidersByClassLocked(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Z

    #@17
    move-result v5

    #@18
    .line 304
    .end local v5    # "needSep":Z
    :cond_0
    const/4 v13, 0x0

    #@19
    .local v13, "i":I
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    #@1b
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    #@1e
    move-result v0

    #@1f
    if-ge v13, v0, :cond_1

    #@21
    .line 305
    iget-object v0, p0, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    #@23
    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@26
    move-result-object v6

    #@27
    check-cast v6, Ljava/util/HashMap;

    #@29
    .line 307
    .local v6, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v1, "  Published user "

    #@31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    iget-object v1, p0, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    #@37
    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->keyAt(I)I

    #@3a
    move-result v1

    #@3b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    .line 308
    const-string/jumbo v1, " content providers (by class):"

    #@42
    .line 307
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v4

    #@4a
    move-object v0, p0

    #@4b
    move-object v1, p1

    #@4c
    move/from16 v2, p2

    #@4e
    move-object/from16 v3, p3

    #@50
    .line 306
    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ProviderMap;->dumpProvidersByClassLocked(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Z

    #@53
    move-result v0

    #@54
    or-int/2addr v5, v0

    #@55
    .line 304
    .local v5, "needSep":Z
    add-int/lit8 v13, v13, 0x1

    #@57
    goto :goto_0

    #@58
    .line 311
    .end local v5    # "needSep":Z
    .end local v6    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;>;"
    :cond_1
    if-eqz p2, :cond_2

    #@5a
    .line 313
    const-string/jumbo v10, "  Single-user authority to provider mappings:"

    #@5d
    iget-object v12, p0, Lcom/android/server/am/ProviderMap;->mSingletonByName:Ljava/util/HashMap;

    #@5f
    move-object v7, p0

    #@60
    move-object v8, p1

    #@61
    move-object/from16 v9, p3

    #@63
    move v11, v5

    #@64
    .line 312
    invoke-direct/range {v7 .. v12}, Lcom/android/server/am/ProviderMap;->dumpProvidersByNameLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Z

    #@67
    move-result v0

    #@68
    or-int/2addr v5, v0

    #@69
    .line 315
    .restart local v5    # "needSep":Z
    const/4 v13, 0x0

    #@6a
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/ProviderMap;->mProvidersByNamePerUser:Landroid/util/SparseArray;

    #@6c
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    #@6f
    move-result v0

    #@70
    if-ge v13, v0, :cond_2

    #@72
    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    #@74
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@77
    const-string/jumbo v1, "  User "

    #@7a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v0

    #@7e
    iget-object v1, p0, Lcom/android/server/am/ProviderMap;->mProvidersByNamePerUser:Landroid/util/SparseArray;

    #@80
    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->keyAt(I)I

    #@83
    move-result v1

    #@84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@87
    move-result-object v0

    #@88
    .line 318
    const-string/jumbo v1, " authority to provider mappings:"

    #@8b
    .line 317
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v0

    #@8f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v10

    #@93
    .line 319
    iget-object v0, p0, Lcom/android/server/am/ProviderMap;->mProvidersByNamePerUser:Landroid/util/SparseArray;

    #@95
    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@98
    move-result-object v12

    #@99
    check-cast v12, Ljava/util/HashMap;

    #@9b
    move-object v7, p0

    #@9c
    move-object v8, p1

    #@9d
    move-object/from16 v9, p3

    #@9f
    move v11, v5

    #@a0
    .line 316
    invoke-direct/range {v7 .. v12}, Lcom/android/server/am/ProviderMap;->dumpProvidersByNameLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Z

    #@a3
    move-result v0

    #@a4
    or-int/2addr v5, v0

    #@a5
    .line 315
    add-int/lit8 v13, v13, 0x1

    #@a7
    goto :goto_1

    #@a8
    .line 322
    .end local v5    # "needSep":Z
    :cond_2
    return v5
.end method

.method getProviderByClass(Landroid/content/ComponentName;)Lcom/android/server/am/ContentProviderRecord;
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 81
    const/4 v0, -0x1

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ProviderMap;->getProviderByClass(Landroid/content/ComponentName;I)Lcom/android/server/am/ContentProviderRecord;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method getProviderByClass(Landroid/content/ComponentName;I)Lcom/android/server/am/ContentProviderRecord;
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 89
    iget-object v1, p0, Lcom/android/server/am/ProviderMap;->mSingletonByClass:Ljava/util/HashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/am/ContentProviderRecord;

    #@8
    .line 90
    .local v0, "record":Lcom/android/server/am/ContentProviderRecord;
    if-eqz v0, :cond_0

    #@a
    .line 91
    return-object v0

    #@b
    .line 95
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/am/ProviderMap;->getProvidersByClass(I)Ljava/util/HashMap;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Lcom/android/server/am/ContentProviderRecord;

    #@15
    return-object v1
.end method

.method getProviderByName(Ljava/lang/String;)Lcom/android/server/am/ContentProviderRecord;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 63
    const/4 v0, -0x1

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ProviderMap;->getProviderByName(Ljava/lang/String;I)Lcom/android/server/am/ContentProviderRecord;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method getProviderByName(Ljava/lang/String;I)Lcom/android/server/am/ContentProviderRecord;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 71
    iget-object v1, p0, Lcom/android/server/am/ProviderMap;->mSingletonByName:Ljava/util/HashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/am/ContentProviderRecord;

    #@8
    .line 72
    .local v0, "record":Lcom/android/server/am/ContentProviderRecord;
    if-eqz v0, :cond_0

    #@a
    .line 73
    return-object v0

    #@b
    .line 77
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/am/ProviderMap;->getProvidersByName(I)Ljava/util/HashMap;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Lcom/android/server/am/ContentProviderRecord;

    #@15
    return-object v1
.end method

.method getProvidersByClass(I)Ljava/util/HashMap;
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 175
    if-gez p1, :cond_0

    #@2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    new-instance v3, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v4, "Bad user "

    #@c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v2

    #@1c
    .line 177
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    #@1e
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Ljava/util/HashMap;

    #@24
    .line 178
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;>;"
    if-nez v0, :cond_1

    #@26
    .line 180
    new-instance v1, Ljava/util/HashMap;

    #@28
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@2b
    .line 181
    .local v1, "newMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;>;"
    iget-object v2, p0, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    #@2d
    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@30
    .line 182
    return-object v1

    #@31
    .line 184
    .end local v1    # "newMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;>;"
    :cond_1
    return-object v0
.end method

.method putProviderByClass(Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "record"    # Lcom/android/server/am/ContentProviderRecord;

    #@0
    .prologue
    .line 116
    iget-boolean v1, p2, Lcom/android/server/am/ContentProviderRecord;->singleton:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 117
    iget-object v1, p0, Lcom/android/server/am/ProviderMap;->mSingletonByClass:Ljava/util/HashMap;

    #@6
    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 111
    :goto_0
    return-void

    #@a
    .line 119
    :cond_0
    iget-object v1, p2, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@c
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@e
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    #@11
    move-result v0

    #@12
    .line 120
    .local v0, "userId":I
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProviderMap;->getProvidersByClass(I)Ljava/util/HashMap;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    goto :goto_0
.end method

.method putProviderByName(Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "record"    # Lcom/android/server/am/ContentProviderRecord;

    #@0
    .prologue
    .line 103
    iget-boolean v1, p2, Lcom/android/server/am/ContentProviderRecord;->singleton:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 104
    iget-object v1, p0, Lcom/android/server/am/ProviderMap;->mSingletonByName:Ljava/util/HashMap;

    #@6
    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 98
    :goto_0
    return-void

    #@a
    .line 106
    :cond_0
    iget-object v1, p2, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@c
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@e
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    #@11
    move-result v0

    #@12
    .line 107
    .local v0, "userId":I
    invoke-direct {p0, v0}, Lcom/android/server/am/ProviderMap;->getProvidersByName(I)Ljava/util/HashMap;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    goto :goto_0
.end method

.method removeProviderByClass(Landroid/content/ComponentName;I)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 144
    iget-object v1, p0, Lcom/android/server/am/ProviderMap;->mSingletonByClass:Ljava/util/HashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 147
    iget-object v1, p0, Lcom/android/server/am/ProviderMap;->mSingletonByClass:Ljava/util/HashMap;

    #@a
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    .line 143
    :cond_0
    :goto_0
    return-void

    #@e
    .line 149
    :cond_1
    if-gez p2, :cond_2

    #@10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@12
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v3, "Bad user "

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@29
    throw v1

    #@2a
    .line 153
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/am/ProviderMap;->getProvidersByClass(I)Ljava/util/HashMap;

    #@2d
    move-result-object v0

    #@2e
    .line 155
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;>;"
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@31
    .line 156
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    #@34
    move-result v1

    #@35
    if-nez v1, :cond_0

    #@37
    .line 157
    iget-object v1, p0, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    #@39
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    #@3c
    goto :goto_0
.end method

.method removeProviderByName(Ljava/lang/String;I)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 125
    iget-object v1, p0, Lcom/android/server/am/ProviderMap;->mSingletonByName:Ljava/util/HashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 128
    iget-object v1, p0, Lcom/android/server/am/ProviderMap;->mSingletonByName:Ljava/util/HashMap;

    #@a
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    .line 124
    :cond_0
    :goto_0
    return-void

    #@e
    .line 130
    :cond_1
    if-gez p2, :cond_2

    #@10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@12
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v3, "Bad user "

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@29
    throw v1

    #@2a
    .line 134
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/server/am/ProviderMap;->getProvidersByName(I)Ljava/util/HashMap;

    #@2d
    move-result-object v0

    #@2e
    .line 136
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;>;"
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@31
    .line 137
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    #@34
    move-result v1

    #@35
    if-nez v1, :cond_0

    #@37
    .line 138
    iget-object v1, p0, Lcom/android/server/am/ProviderMap;->mProvidersByNamePerUser:Landroid/util/SparseArray;

    #@39
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    #@3c
    goto :goto_0
.end method
