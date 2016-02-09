.class public Lcom/android/server/notification/ConditionProviders;
.super Lcom/android/server/notification/ManagedServices;
.source "ConditionProviders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/ConditionProviders$ConditionRecord;,
        Lcom/android/server/notification/ConditionProviders$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

.field private final mListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/service/notification/IConditionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/notification/ConditionProviders$ConditionRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemConditionProviderNames:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemConditionProviders:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/notification/SystemConditionProviderService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/notification/ManagedServices$UserProfiles;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "userProfiles"    # Lcom/android/server/notification/ManagedServices$UserProfiles;

    #@0
    .prologue
    .line 53
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/notification/ManagedServices;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Object;Lcom/android/server/notification/ManagedServices$UserProfiles;)V

    #@8
    .line 44
    new-instance v0, Ljava/util/ArrayList;

    #@a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@d
    iput-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    #@f
    .line 45
    new-instance v0, Landroid/util/ArrayMap;

    #@11
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@14
    iput-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mListeners:Landroid/util/ArrayMap;

    #@16
    .line 48
    new-instance v0, Landroid/util/ArraySet;

    #@18
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@1b
    .line 47
    iput-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviders:Landroid/util/ArraySet;

    #@1d
    .line 54
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mContext:Landroid/content/Context;

    #@1f
    .line 55
    const-string/jumbo v1, "system.condition.providers"

    #@22
    .line 56
    const v2, 0x1070041

    #@25
    .line 54
    invoke-static {v0, v1, v2}, Lcom/android/server/notification/PropConfig;->getStringArray(Landroid/content/Context;Ljava/lang/String;I)[Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    invoke-static {v0}, Lcom/android/server/notification/ConditionProviders;->safeSet([Ljava/lang/Object;)Landroid/util/ArraySet;

    #@2c
    move-result-object v0

    #@2d
    iput-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviderNames:Landroid/util/ArraySet;

    #@2f
    .line 52
    return-void
.end method

.method private getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;Z)Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    .locals 5
    .param p1, "id"    # Landroid/net/Uri;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "create"    # Z

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 213
    if-eqz p1, :cond_0

    #@3
    if-nez p2, :cond_1

    #@5
    :cond_0
    return-object v4

    #@6
    .line 214
    :cond_1
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v0

    #@c
    .line 215
    .local v0, "N":I
    const/4 v1, 0x0

    #@d
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    #@f
    .line 216
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    #@17
    .line 217
    .local v2, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v3, v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    #@19
    invoke-virtual {v3, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_2

    #@1f
    iget-object v3, v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->component:Landroid/content/ComponentName;

    #@21
    invoke-virtual {v3, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v3

    #@25
    if-eqz v3, :cond_2

    #@27
    .line 218
    return-object v2

    #@28
    .line 215
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 221
    .end local v2    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_3
    if-eqz p3, :cond_4

    #@2d
    .line 222
    new-instance v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    #@2f
    invoke-direct {v2, p1, p2, v4}, Lcom/android/server/notification/ConditionProviders$ConditionRecord;-><init>(Landroid/net/Uri;Landroid/content/ComponentName;Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V

    #@32
    .line 223
    .restart local v2    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    #@34
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@37
    .line 224
    return-object v2

    #@38
    .line 226
    .end local v2    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_4
    return-object v4
.end method

.method private static provider(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)Landroid/service/notification/IConditionProvider;
    .locals 1
    .param p0, "r"    # Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 356
    if-nez p0, :cond_0

    #@3
    :goto_0
    return-object v0

    #@4
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@6
    invoke-static {v0}, Lcom/android/server/notification/ConditionProviders;->provider(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/IConditionProvider;

    #@9
    move-result-object v0

    #@a
    goto :goto_0
.end method

.method private static provider(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/IConditionProvider;
    .locals 1
    .param p0, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 360
    if-nez p0, :cond_0

    #@3
    :goto_0
    return-object v0

    #@4
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    #@6
    check-cast v0, Landroid/service/notification/IConditionProvider;

    #@8
    goto :goto_0
.end method

.method private requestConditionsLocked(I)V
    .locals 9
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 364
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mServices:Ljava/util/ArrayList;

    #@2
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v3

    #@6
    .local v3, "info$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v6

    #@a
    if-eqz v6, :cond_4

    #@c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@12
    .line 365
    .local v2, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    invoke-static {v2}, Lcom/android/server/notification/ConditionProviders;->provider(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/IConditionProvider;

    #@15
    move-result-object v4

    #@16
    .line 366
    .local v4, "provider":Landroid/service/notification/IConditionProvider;
    if-eqz v4, :cond_0

    #@18
    .line 368
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@1d
    move-result v6

    #@1e
    add-int/lit8 v1, v6, -0x1

    #@20
    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_3

    #@22
    .line 369
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    #@24
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@27
    move-result-object v5

    #@28
    check-cast v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    #@2a
    .line 370
    .local v5, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v6, v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@2c
    if-eq v6, v2, :cond_2

    #@2e
    .line 368
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, -0x1

    #@30
    goto :goto_1

    #@31
    .line 371
    :cond_2
    iget-boolean v6, v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->subscribed:Z

    #@33
    if-nez v6, :cond_1

    #@35
    .line 372
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    #@37
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@3a
    goto :goto_2

    #@3b
    .line 375
    .end local v5    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_3
    :try_start_0
    invoke-interface {v4, p1}, Landroid/service/notification/IConditionProvider;->onRequestConditions(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3e
    goto :goto_0

    #@3f
    .line 376
    :catch_0
    move-exception v0

    #@40
    .line 377
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    #@42
    new-instance v7, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v8, "Error requesting conditions from "

    #@4a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v7

    #@4e
    iget-object v8, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    #@50
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v7

    #@54
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v7

    #@58
    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5b
    goto :goto_0

    #@5c
    .line 363
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .end local v4    # "provider":Landroid/service/notification/IConditionProvider;
    :cond_4
    return-void
.end method

.method private static varargs safeSet([Ljava/lang/Object;)Landroid/util/ArraySet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Landroid/util/ArraySet",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    #@0
    .prologue
    .line 327
    .local p0, "items":[Ljava/lang/Object;, "[TT;"
    new-instance v3, Landroid/util/ArraySet;

    #@2
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    #@5
    .line 328
    .local v3, "rt":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    if-eqz p0, :cond_0

    #@7
    array-length v4, p0

    #@8
    if-nez v4, :cond_1

    #@a
    :cond_0
    return-object v3

    #@b
    .line 329
    :cond_1
    array-length v0, p0

    #@c
    .line 330
    .local v0, "N":I
    const/4 v1, 0x0

    #@d
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    #@f
    .line 331
    aget-object v2, p0, v1

    #@11
    .line 332
    .local v2, "item":Ljava/lang/Object;, "TT;"
    if-eqz v2, :cond_2

    #@13
    .line 333
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@16
    .line 330
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_0

    #@19
    .line 336
    .end local v2    # "item":Ljava/lang/Object;, "TT;"
    :cond_3
    return-object v3
.end method

.method private subscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V
    .locals 7
    .param p1, "r"    # Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 309
    iget-boolean v4, p0, Lcom/android/server/notification/ConditionProviders;->DEBUG:Z

    #@3
    if-eqz v4, :cond_0

    #@5
    iget-object v4, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    #@7
    new-instance v5, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v6, "subscribeLocked "

    #@f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v5

    #@13
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v5

    #@17
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v5

    #@1b
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 310
    :cond_0
    invoke-static {p1}, Lcom/android/server/notification/ConditionProviders;->provider(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)Landroid/service/notification/IConditionProvider;

    #@21
    move-result-object v1

    #@22
    .line 311
    .local v1, "provider":Landroid/service/notification/IConditionProvider;
    const/4 v2, 0x0

    #@23
    .line 312
    .local v2, "re":Landroid/os/RemoteException;
    if-eqz v1, :cond_1

    #@25
    .line 314
    :try_start_0
    iget-object v4, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    #@27
    new-instance v5, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v6, "Subscribing to "

    #@2f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v5

    #@33
    iget-object v6, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    #@35
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v5

    #@39
    const-string/jumbo v6, " with "

    #@3c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v5

    #@40
    iget-object v6, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->component:Landroid/content/ComponentName;

    #@42
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v5

    #@46
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v5

    #@4a
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@4d
    .line 315
    iget-object v4, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    #@4f
    invoke-interface {v1, v4}, Landroid/service/notification/IConditionProvider;->onSubscribe(Landroid/net/Uri;)V

    #@52
    .line 316
    const/4 v4, 0x1

    #@53
    iput-boolean v4, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->subscribed:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@55
    .line 322
    .end local v2    # "re":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    #@57
    iget-object v3, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    #@59
    :cond_2
    invoke-static {v3, v1, v2}, Lcom/android/server/notification/ZenLog;->traceSubscribe(Landroid/net/Uri;Landroid/service/notification/IConditionProvider;Landroid/os/RemoteException;)V

    #@5c
    .line 308
    return-void

    #@5d
    .line 317
    .restart local v2    # "re":Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    #@5e
    .line 318
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    #@60
    new-instance v5, Ljava/lang/StringBuilder;

    #@62
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@65
    const-string/jumbo v6, "Error subscribing to "

    #@68
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v5

    #@6c
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v5

    #@70
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v5

    #@74
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@77
    .line 319
    move-object v2, v0

    #@78
    .local v2, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private unsubscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V
    .locals 7
    .param p1, "r"    # Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 340
    iget-boolean v4, p0, Lcom/android/server/notification/ConditionProviders;->DEBUG:Z

    #@3
    if-eqz v4, :cond_0

    #@5
    iget-object v4, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    #@7
    new-instance v5, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v6, "unsubscribeLocked "

    #@f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v5

    #@13
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v5

    #@17
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v5

    #@1b
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 341
    :cond_0
    invoke-static {p1}, Lcom/android/server/notification/ConditionProviders;->provider(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)Landroid/service/notification/IConditionProvider;

    #@21
    move-result-object v1

    #@22
    .line 342
    .local v1, "provider":Landroid/service/notification/IConditionProvider;
    const/4 v2, 0x0

    #@23
    .line 343
    .local v2, "re":Landroid/os/RemoteException;
    if-eqz v1, :cond_1

    #@25
    .line 345
    :try_start_0
    iget-object v4, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    #@27
    invoke-interface {v1, v4}, Landroid/service/notification/IConditionProvider;->onUnsubscribe(Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2a
    .line 350
    .end local v2    # "re":Landroid/os/RemoteException;
    :goto_0
    const/4 v4, 0x0

    #@2b
    iput-boolean v4, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->subscribed:Z

    #@2d
    .line 352
    :cond_1
    if-eqz p1, :cond_2

    #@2f
    iget-object v3, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    #@31
    :cond_2
    invoke-static {v3, v1, v2}, Lcom/android/server/notification/ZenLog;->traceUnsubscribe(Landroid/net/Uri;Landroid/service/notification/IConditionProvider;Landroid/os/RemoteException;)V

    #@34
    .line 339
    return-void

    #@35
    .line 346
    .restart local v2    # "re":Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    #@36
    .line 347
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    #@38
    new-instance v5, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v6, "Error unsubscribing to "

    #@40
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v5

    #@44
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v5

    #@48
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v5

    #@4c
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4f
    .line 348
    move-object v2, v0

    #@50
    .local v2, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private validateConditions(Ljava/lang/String;[Landroid/service/notification/Condition;)[Landroid/service/notification/Condition;
    .locals 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "conditions"    # [Landroid/service/notification/Condition;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 188
    if-eqz p2, :cond_0

    #@3
    array-length v5, p2

    #@4
    if-nez v5, :cond_1

    #@6
    :cond_0
    return-object v8

    #@7
    .line 189
    :cond_1
    array-length v0, p2

    #@8
    .line 190
    .local v0, "N":I
    new-instance v4, Landroid/util/ArrayMap;

    #@a
    invoke-direct {v4, v0}, Landroid/util/ArrayMap;-><init>(I)V

    #@d
    .line 191
    .local v4, "valid":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/net/Uri;Landroid/service/notification/Condition;>;"
    const/4 v1, 0x0

    #@e
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    #@10
    .line 192
    aget-object v5, p2, v1

    #@12
    iget-object v2, v5, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    #@14
    .line 193
    .local v2, "id":Landroid/net/Uri;
    invoke-static {v2, p1}, Landroid/service/notification/Condition;->isValidId(Landroid/net/Uri;Ljava/lang/String;)Z

    #@17
    move-result v5

    #@18
    if-nez v5, :cond_2

    #@1a
    .line 194
    iget-object v5, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    #@1c
    new-instance v6, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v7, "Ignoring condition from "

    #@24
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v6

    #@28
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v6

    #@2c
    const-string/jumbo v7, " for invalid id: "

    #@2f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v6

    #@33
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v6

    #@37
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v6

    #@3b
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    .line 191
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@40
    goto :goto_0

    #@41
    .line 197
    :cond_2
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@44
    move-result v5

    #@45
    if-eqz v5, :cond_3

    #@47
    .line 198
    iget-object v5, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    #@49
    new-instance v6, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v7, "Ignoring condition from "

    #@51
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v6

    #@55
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v6

    #@59
    const-string/jumbo v7, " for duplicate id: "

    #@5c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v6

    #@60
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v6

    #@64
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v6

    #@68
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6b
    goto :goto_1

    #@6c
    .line 201
    :cond_3
    aget-object v5, p2, v1

    #@6e
    invoke-virtual {v4, v2, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@71
    goto :goto_1

    #@72
    .line 203
    .end local v2    # "id":Landroid/net/Uri;
    :cond_4
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@75
    move-result v5

    #@76
    if-nez v5, :cond_5

    #@78
    return-object v8

    #@79
    .line 204
    :cond_5
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@7c
    move-result v5

    #@7d
    if-ne v5, v0, :cond_6

    #@7f
    return-object p2

    #@80
    .line 205
    :cond_6
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@83
    move-result v5

    #@84
    new-array v3, v5, [Landroid/service/notification/Condition;

    #@86
    .line 206
    .local v3, "rt":[Landroid/service/notification/Condition;
    const/4 v1, 0x0

    #@87
    :goto_2
    array-length v5, v3

    #@88
    if-ge v1, v5, :cond_7

    #@8a
    .line 207
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@8d
    move-result-object v5

    #@8e
    check-cast v5, Landroid/service/notification/Condition;

    #@90
    aput-object v5, v3, v1

    #@92
    .line 206
    add-int/lit8 v1, v1, 0x1

    #@94
    goto :goto_2

    #@95
    .line 209
    :cond_7
    return-object v3
.end method


# virtual methods
.method public addSystemProvider(Lcom/android/server/notification/SystemConditionProviderService;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/notification/SystemConditionProviderService;

    #@0
    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviders:Landroid/util/ArraySet;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@5
    .line 69
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mContext:Landroid/content/Context;

    #@7
    invoke-virtual {p1, v0}, Lcom/android/server/notification/SystemConditionProviderService;->attachBase(Landroid/content/Context;)V

    #@a
    .line 70
    invoke-virtual {p1}, Lcom/android/server/notification/SystemConditionProviderService;->asInterface()Landroid/service/notification/IConditionProvider;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {p1}, Lcom/android/server/notification/SystemConditionProviderService;->getComponent()Landroid/content/ComponentName;

    #@11
    move-result-object v1

    #@12
    const/4 v2, 0x0

    #@13
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/notification/ConditionProviders;->registerService(Landroid/os/IInterface;Landroid/content/ComponentName;I)V

    #@16
    .line 67
    return-void
.end method

.method protected asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 118
    invoke-static {p1}, Landroid/service/notification/IConditionProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IConditionProvider;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public checkServiceToken(Landroid/service/notification/IConditionProvider;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .locals 2
    .param p1, "provider"    # Landroid/service/notification/IConditionProvider;

    #@0
    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 165
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ConditionProviders;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result-object v1

    #@7
    monitor-exit v0

    #@8
    return-object v1

    #@9
    .line 164
    :catchall_0
    move-exception v1

    #@a
    monitor-exit v0

    #@b
    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    #@0
    .prologue
    .line 91
    invoke-super {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    #@3
    .line 92
    iget-object v4, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    #@5
    monitor-enter v4

    #@6
    .line 93
    :try_start_0
    const-string/jumbo v3, "    mRecords("

    #@9
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@11
    move-result v3

    #@12
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    #@15
    const-string/jumbo v3, "):"

    #@18
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1b
    .line 94
    const/4 v1, 0x0

    #@1c
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@21
    move-result v3

    #@22
    if-ge v1, v3, :cond_2

    #@24
    .line 95
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    #@26
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@29
    move-result-object v2

    #@2a
    check-cast v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    #@2c
    .line 96
    .local v2, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    if-eqz p2, :cond_0

    #@2e
    iget-object v3, v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->component:Landroid/content/ComponentName;

    #@30
    invoke-virtual {p2, v3}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/content/ComponentName;)Z

    #@33
    move-result v3

    #@34
    if-eqz v3, :cond_1

    #@36
    .line 97
    :cond_0
    const-string/jumbo v3, "      "

    #@39
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3c
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@3f
    .line 98
    iget-object v3, v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    #@41
    invoke-static {v3}, Lcom/android/server/notification/CountdownConditionProvider;->tryParseDescription(Landroid/net/Uri;)Ljava/lang/String;

    #@44
    move-result-object v0

    #@45
    .line 99
    .local v0, "countdownDesc":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@47
    .line 100
    const-string/jumbo v3, "        ("

    #@4a
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@50
    const-string/jumbo v3, ")"

    #@53
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@56
    .line 94
    .end local v0    # "countdownDesc":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@58
    goto :goto_0

    #@59
    .end local v2    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_2
    monitor-exit v4

    #@5a
    .line 104
    if-nez p2, :cond_3

    #@5c
    .line 105
    const-string/jumbo v3, "    mListeners("

    #@5f
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@62
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mListeners:Landroid/util/ArrayMap;

    #@64
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@67
    move-result v3

    #@68
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    #@6b
    const-string/jumbo v3, "):"

    #@6e
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@71
    .line 106
    const/4 v1, 0x0

    #@72
    :goto_1
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mListeners:Landroid/util/ArrayMap;

    #@74
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@77
    move-result v3

    #@78
    if-ge v1, v3, :cond_3

    #@7a
    .line 107
    const-string/jumbo v3, "      "

    #@7d
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@80
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mListeners:Landroid/util/ArrayMap;

    #@82
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@85
    move-result-object v3

    #@86
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@89
    .line 106
    add-int/lit8 v1, v1, 0x1

    #@8b
    goto :goto_1

    #@8c
    .line 92
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    #@8d
    monitor-exit v4

    #@8e
    throw v3

    #@8f
    .line 110
    .restart local v1    # "i":I
    :cond_3
    const-string/jumbo v3, "    mSystemConditionProviders: "

    #@92
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@95
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviderNames:Landroid/util/ArraySet;

    #@97
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@9a
    .line 111
    const/4 v1, 0x0

    #@9b
    :goto_2
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviders:Landroid/util/ArraySet;

    #@9d
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    #@a0
    move-result v3

    #@a1
    if-ge v1, v3, :cond_4

    #@a3
    .line 112
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviders:Landroid/util/ArraySet;

    #@a5
    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@a8
    move-result-object v3

    #@a9
    check-cast v3, Lcom/android/server/notification/SystemConditionProviderService;

    #@ab
    invoke-virtual {v3, p1, p2}, Lcom/android/server/notification/SystemConditionProviderService;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    #@ae
    .line 111
    add-int/lit8 v1, v1, 0x1

    #@b0
    goto :goto_2

    #@b1
    .line 90
    :cond_4
    return-void
.end method

.method public ensureRecordExists(Landroid/content/ComponentName;Landroid/net/Uri;Landroid/service/notification/IConditionProvider;)V
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "conditionId"    # Landroid/net/Uri;
    .param p3, "provider"    # Landroid/service/notification/IConditionProvider;

    #@0
    .prologue
    .line 276
    const/4 v1, 0x1

    #@1
    invoke-direct {p0, p2, p1, v1}, Lcom/android/server/notification/ConditionProviders;->getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;Z)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    #@4
    move-result-object v0

    #@5
    .line 277
    .local v0, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v1, v0, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@7
    if-nez v1, :cond_0

    #@9
    .line 279
    invoke-virtual {p0, p3}, Lcom/android/server/notification/ConditionProviders;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@c
    move-result-object v1

    #@d
    iput-object v1, v0, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@f
    .line 274
    :cond_0
    return-void
.end method

.method public findCondition(Landroid/content/ComponentName;Landroid/net/Uri;)Landroid/service/notification/Condition;
    .locals 4
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "conditionId"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 266
    if-eqz p1, :cond_0

    #@3
    if-nez p2, :cond_1

    #@5
    :cond_0
    return-object v1

    #@6
    .line 267
    :cond_1
    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    #@8
    monitor-enter v2

    #@9
    .line 268
    const/4 v3, 0x0

    #@a
    :try_start_0
    invoke-direct {p0, p2, p1, v3}, Lcom/android/server/notification/ConditionProviders;->getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;Z)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    #@d
    move-result-object v0

    #@e
    .line 269
    .local v0, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    if-eqz v0, :cond_2

    #@10
    iget-object v1, v0, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->condition:Landroid/service/notification/Condition;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_2
    monitor-exit v2

    #@13
    return-object v1

    #@14
    .line 267
    .end local v0    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :catchall_0
    move-exception v1

    #@15
    monitor-exit v2

    #@16
    throw v1
.end method

.method public findConditionProvider(Landroid/content/ComponentName;)Landroid/service/notification/IConditionProvider;
    .locals 4
    .param p1, "component"    # Landroid/content/ComponentName;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 256
    if-nez p1, :cond_0

    #@3
    return-object v3

    #@4
    .line 257
    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->mServices:Ljava/util/ArrayList;

    #@6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "service$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_2

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@16
    .line 258
    .local v0, "service":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v2, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    #@18
    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_1

    #@1e
    .line 259
    invoke-static {v0}, Lcom/android/server/notification/ConditionProviders;->provider(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/IConditionProvider;

    #@21
    move-result-object v2

    #@22
    return-object v2

    #@23
    .line 262
    .end local v0    # "service":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :cond_2
    return-object v3
.end method

.method protected getConfig()Lcom/android/server/notification/ManagedServices$Config;
    .locals 2

    #@0
    .prologue
    .line 79
    new-instance v0, Lcom/android/server/notification/ManagedServices$Config;

    #@2
    invoke-direct {v0}, Lcom/android/server/notification/ManagedServices$Config;-><init>()V

    #@5
    .line 80
    .local v0, "c":Lcom/android/server/notification/ManagedServices$Config;
    const-string/jumbo v1, "condition provider"

    #@8
    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    #@a
    .line 81
    const-string/jumbo v1, "android.service.notification.ConditionProviderService"

    #@d
    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->serviceInterface:Ljava/lang/String;

    #@f
    .line 82
    const-string/jumbo v1, "enabled_condition_providers"

    #@12
    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    #@14
    .line 83
    const-string/jumbo v1, "android.permission.BIND_CONDITION_PROVIDER_SERVICE"

    #@17
    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    #@19
    .line 84
    const-string/jumbo v1, "android.settings.ACTION_CONDITION_PROVIDER_SETTINGS"

    #@1c
    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->settingsAction:Ljava/lang/String;

    #@1e
    .line 85
    const v1, 0x104042f

    #@21
    iput v1, v0, Lcom/android/server/notification/ManagedServices$Config;->clientLabel:I

    #@23
    .line 86
    return-object v0
.end method

.method public getSystemProviders()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/android/server/notification/SystemConditionProviderService;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviders:Landroid/util/ArraySet;

    #@2
    return-object v0
.end method

.method public isSystemProviderEnabled(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviderNames:Landroid/util/ArraySet;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public notifyConditions(Ljava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;[Landroid/service/notification/Condition;)V
    .locals 12
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p3, "conditions"    # [Landroid/service/notification/Condition;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 230
    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    #@3
    monitor-enter v8

    #@4
    .line 231
    :try_start_0
    iget-boolean v9, p0, Lcom/android/server/notification/ConditionProviders;->DEBUG:Z

    #@6
    if-eqz v9, :cond_0

    #@8
    iget-object v9, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    #@a
    new-instance v10, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v11, "notifyConditions pkg="

    #@12
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v10

    #@16
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v10

    #@1a
    const-string/jumbo v11, " info="

    #@1d
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v10

    #@21
    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v10

    #@25
    const-string/jumbo v11, " conditions="

    #@28
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v10

    #@2c
    .line 232
    if-nez p3, :cond_2

    #@2e
    .line 231
    :goto_0
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v7

    #@32
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v7

    #@36
    invoke-static {v9, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@39
    .line 233
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/android/server/notification/ConditionProviders;->validateConditions(Ljava/lang/String;[Landroid/service/notification/Condition;)[Landroid/service/notification/Condition;

    #@3c
    move-result-object p3

    #@3d
    .line 234
    if-eqz p3, :cond_1

    #@3f
    array-length v7, p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@40
    if-nez v7, :cond_3

    #@42
    :cond_1
    monitor-exit v8

    #@43
    return-void

    #@44
    .line 232
    :cond_2
    :try_start_1
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@47
    move-result-object v7

    #@48
    goto :goto_0

    #@49
    .line 235
    :cond_3
    array-length v0, p3

    #@4a
    .line 236
    .local v0, "N":I
    iget-object v7, p0, Lcom/android/server/notification/ConditionProviders;->mListeners:Landroid/util/ArrayMap;

    #@4c
    invoke-virtual {v7}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@4f
    move-result-object v7

    #@50
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@53
    move-result-object v5

    #@54
    .local v5, "listener$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@57
    move-result v7

    #@58
    if-eqz v7, :cond_4

    #@5a
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5d
    move-result-object v4

    #@5e
    check-cast v4, Landroid/service/notification/IConditionListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@60
    .line 238
    .local v4, "listener":Landroid/service/notification/IConditionListener;
    :try_start_2
    invoke-interface {v4, p3}, Landroid/service/notification/IConditionListener;->onConditionsReceived([Landroid/service/notification/Condition;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@63
    goto :goto_1

    #@64
    .line 239
    :catch_0
    move-exception v2

    #@65
    .line 240
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    iget-object v7, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    #@67
    new-instance v9, Ljava/lang/StringBuilder;

    #@69
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@6c
    const-string/jumbo v10, "Error sending conditions to listener "

    #@6f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v9

    #@73
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v9

    #@77
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v9

    #@7b
    invoke-static {v7, v9, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@7e
    goto :goto_1

    #@7f
    .line 230
    .end local v0    # "N":I
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v4    # "listener":Landroid/service/notification/IConditionListener;
    .end local v5    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    #@80
    monitor-exit v8

    #@81
    throw v7

    #@82
    .line 243
    .restart local v0    # "N":I
    .restart local v5    # "listener$iterator":Ljava/util/Iterator;
    :cond_4
    const/4 v3, 0x0

    #@83
    .local v3, "i":I
    :goto_2
    if-ge v3, v0, :cond_6

    #@85
    .line 244
    :try_start_4
    aget-object v1, p3, v3

    #@87
    .line 245
    .local v1, "c":Landroid/service/notification/Condition;
    iget-object v7, v1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    #@89
    iget-object v9, p2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    #@8b
    const/4 v10, 0x1

    #@8c
    invoke-direct {p0, v7, v9, v10}, Lcom/android/server/notification/ConditionProviders;->getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;Z)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    #@8f
    move-result-object v6

    #@90
    .line 246
    .local v6, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iput-object p2, v6, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@92
    .line 247
    iput-object v1, v6, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->condition:Landroid/service/notification/Condition;

    #@94
    .line 248
    iget-object v7, p0, Lcom/android/server/notification/ConditionProviders;->mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

    #@96
    if-eqz v7, :cond_5

    #@98
    .line 249
    iget-object v7, p0, Lcom/android/server/notification/ConditionProviders;->mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

    #@9a
    iget-object v9, v1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    #@9c
    invoke-interface {v7, v9, v1}, Lcom/android/server/notification/ConditionProviders$Callback;->onConditionChanged(Landroid/net/Uri;Landroid/service/notification/Condition;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@9f
    .line 243
    :cond_5
    add-int/lit8 v3, v3, 0x1

    #@a1
    goto :goto_2

    #@a2
    .end local v1    # "c":Landroid/service/notification/Condition;
    .end local v6    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_6
    monitor-exit v8

    #@a3
    .line 229
    return-void
.end method

.method public onBootPhaseAppsCanStart()V
    .locals 2

    #@0
    .prologue
    .line 123
    invoke-super {p0}, Lcom/android/server/notification/ManagedServices;->onBootPhaseAppsCanStart()V

    #@3
    .line 124
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviders:Landroid/util/ArraySet;

    #@6
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    #@9
    move-result v1

    #@a
    if-ge v0, v1, :cond_0

    #@c
    .line 125
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviders:Landroid/util/ArraySet;

    #@e
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Lcom/android/server/notification/SystemConditionProviderService;

    #@14
    invoke-virtual {v1}, Lcom/android/server/notification/SystemConditionProviderService;->onBootComplete()V

    #@17
    .line 124
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 127
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

    #@1c
    if-eqz v1, :cond_1

    #@1e
    .line 128
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

    #@20
    invoke-interface {v1}, Lcom/android/server/notification/ConditionProviders$Callback;->onBootComplete()V

    #@23
    .line 122
    :cond_1
    return-void
.end method

.method protected onServiceAdded(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@0
    .prologue
    .line 142
    invoke-static {p1}, Lcom/android/server/notification/ConditionProviders;->provider(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/IConditionProvider;

    #@3
    move-result-object v1

    #@4
    .line 144
    .local v1, "provider":Landroid/service/notification/IConditionProvider;
    :try_start_0
    invoke-interface {v1}, Landroid/service/notification/IConditionProvider;->onConnected()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 148
    :goto_0
    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 149
    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

    #@d
    iget-object v3, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    #@f
    invoke-interface {v2, v3}, Lcom/android/server/notification/ConditionProviders$Callback;->onServiceAdded(Landroid/content/ComponentName;)V

    #@12
    .line 141
    :cond_0
    return-void

    #@13
    .line 145
    :catch_0
    move-exception v0

    #@14
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method protected onServiceRemovedLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .locals 4
    .param p1, "removed"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@0
    .prologue
    .line 155
    if-nez p1, :cond_0

    #@2
    return-void

    #@3
    .line 156
    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v2

    #@9
    add-int/lit8 v0, v2, -0x1

    #@b
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    #@d
    .line 157
    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    #@15
    .line 158
    .local v1, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v2, v1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->component:Landroid/content/ComponentName;

    #@17
    iget-object v3, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    #@19
    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v2

    #@1d
    if-nez v2, :cond_1

    #@1f
    .line 156
    :goto_1
    add-int/lit8 v0, v0, -0x1

    #@21
    goto :goto_0

    #@22
    .line 159
    :cond_1
    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    #@24
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@27
    goto :goto_1

    #@28
    .line 154
    .end local v1    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_2
    return-void
.end method

.method public onUserSwitched(I)V
    .locals 1
    .param p1, "user"    # I

    #@0
    .prologue
    .line 134
    invoke-super {p0, p1}, Lcom/android/server/notification/ManagedServices;->onUserSwitched(I)V

    #@3
    .line 135
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 136
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

    #@9
    invoke-interface {v0}, Lcom/android/server/notification/ConditionProviders$Callback;->onUserSwitched()V

    #@c
    .line 133
    :cond_0
    return-void
.end method

.method public requestConditions(Landroid/service/notification/IConditionListener;I)V
    .locals 4
    .param p1, "callback"    # Landroid/service/notification/IConditionListener;
    .param p2, "relevance"    # I

    #@0
    .prologue
    .line 170
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 171
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/notification/ConditionProviders;->DEBUG:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    #@9
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v3, "requestConditions callback="

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    .line 172
    const-string/jumbo v3, " relevance="

    #@1c
    .line 171
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    .line 172
    invoke-static {p2}, Landroid/service/notification/Condition;->relevanceToString(I)Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    .line 171
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    .line 173
    :cond_0
    if-nez p1, :cond_1

    #@31
    monitor-exit v1

    #@32
    return-void

    #@33
    .line 174
    :cond_1
    and-int/lit8 p2, p2, 0x3

    #@35
    .line 175
    if-eqz p2, :cond_3

    #@37
    .line 176
    :try_start_1
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mListeners:Landroid/util/ArrayMap;

    #@39
    invoke-interface {p1}, Landroid/service/notification/IConditionListener;->asBinder()Landroid/os/IBinder;

    #@3c
    move-result-object v2

    #@3d
    invoke-virtual {v0, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@40
    .line 177
    invoke-direct {p0, p2}, Lcom/android/server/notification/ConditionProviders;->requestConditionsLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@43
    :cond_2
    :goto_0
    monitor-exit v1

    #@44
    .line 169
    return-void

    #@45
    .line 179
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mListeners:Landroid/util/ArrayMap;

    #@47
    invoke-interface {p1}, Landroid/service/notification/IConditionListener;->asBinder()Landroid/os/IBinder;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@4e
    .line 180
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mListeners:Landroid/util/ArrayMap;

    #@50
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    #@53
    move-result v0

    #@54
    if-eqz v0, :cond_2

    #@56
    .line 181
    const/4 v0, 0x0

    #@57
    invoke-direct {p0, v0}, Lcom/android/server/notification/ConditionProviders;->requestConditionsLocked(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5a
    goto :goto_0

    #@5b
    .line 170
    :catchall_0
    move-exception v0

    #@5c
    monitor-exit v1

    #@5d
    throw v0
.end method

.method public setCallback(Lcom/android/server/notification/ConditionProviders$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/server/notification/ConditionProviders$Callback;

    #@0
    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/server/notification/ConditionProviders;->mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

    #@2
    .line 59
    return-void
.end method

.method public subscribeIfNecessary(Landroid/content/ComponentName;Landroid/net/Uri;)Z
    .locals 6
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "conditionId"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 284
    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    #@3
    monitor-enter v2

    #@4
    .line 285
    const/4 v1, 0x0

    #@5
    :try_start_0
    invoke-direct {p0, p2, p1, v1}, Lcom/android/server/notification/ConditionProviders;->getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;Z)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    #@8
    move-result-object v0

    #@9
    .line 286
    .local v0, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    if-nez v0, :cond_0

    #@b
    .line 287
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    #@d
    new-instance v3, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v4, "Unable to subscribe to "

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    const-string/jumbo v4, " "

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    monitor-exit v2

    #@30
    .line 288
    return v5

    #@31
    .line 290
    :cond_0
    :try_start_1
    iget-boolean v1, v0, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->subscribed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@33
    if-eqz v1, :cond_1

    #@35
    const/4 v1, 0x1

    #@36
    monitor-exit v2

    #@37
    return v1

    #@38
    .line 291
    :cond_1
    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/server/notification/ConditionProviders;->subscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V

    #@3b
    .line 292
    iget-boolean v1, v0, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->subscribed:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3d
    monitor-exit v2

    #@3e
    return v1

    #@3f
    .line 284
    .end local v0    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :catchall_0
    move-exception v1

    #@40
    monitor-exit v2

    #@41
    throw v1
.end method

.method public unsubscribeIfNecessary(Landroid/content/ComponentName;Landroid/net/Uri;)V
    .locals 5
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "conditionId"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 297
    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 298
    const/4 v1, 0x0

    #@4
    :try_start_0
    invoke-direct {p0, p2, p1, v1}, Lcom/android/server/notification/ConditionProviders;->getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;Z)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    #@7
    move-result-object v0

    #@8
    .line 299
    .local v0, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    if-nez v0, :cond_0

    #@a
    .line 300
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    #@c
    new-instance v3, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v4, "Unable to unsubscribe to "

    #@14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    const-string/jumbo v4, " "

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    monitor-exit v2

    #@2f
    .line 301
    return-void

    #@30
    .line 303
    :cond_0
    :try_start_1
    iget-boolean v1, v0, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->subscribed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@32
    if-nez v1, :cond_1

    #@34
    monitor-exit v2

    #@35
    return-void

    #@36
    .line 304
    :cond_1
    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/server/notification/ConditionProviders;->unsubscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@39
    monitor-exit v2

    #@3a
    .line 296
    return-void

    #@3b
    .line 297
    .end local v0    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :catchall_0
    move-exception v1

    #@3c
    monitor-exit v2

    #@3d
    throw v1
.end method
