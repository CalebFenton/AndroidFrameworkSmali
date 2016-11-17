.class public Lcom/android/server/notification/ConditionProviders;
.super Lcom/android/server/notification/ManagedServices;
.source "ConditionProviders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/ConditionProviders$Callback;,
        Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

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
    .line 54
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/notification/ManagedServices;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Object;Lcom/android/server/notification/ManagedServices$UserProfiles;)V

    #@8
    .line 46
    new-instance v0, Ljava/util/ArrayList;

    #@a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@d
    iput-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    #@f
    .line 49
    new-instance v0, Landroid/util/ArraySet;

    #@11
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@14
    .line 48
    iput-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviders:Landroid/util/ArraySet;

    #@16
    .line 55
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mContext:Landroid/content/Context;

    #@18
    .line 56
    const-string/jumbo v1, "system.condition.providers"

    #@1b
    .line 57
    const v2, 0x1070045

    #@1e
    .line 55
    invoke-static {v0, v1, v2}, Lcom/android/server/notification/PropConfig;->getStringArray(Landroid/content/Context;Ljava/lang/String;I)[Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    invoke-static {v0}, Lcom/android/server/notification/ConditionProviders;->safeSet([Ljava/lang/Object;)Landroid/util/ArraySet;

    #@25
    move-result-object v0

    #@26
    iput-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviderNames:Landroid/util/ArraySet;

    #@28
    .line 53
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
    .line 192
    if-eqz p1, :cond_0

    #@3
    if-nez p2, :cond_1

    #@5
    :cond_0
    return-object v4

    #@6
    .line 193
    :cond_1
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v0

    #@c
    .line 194
    .local v0, "N":I
    const/4 v1, 0x0

    #@d
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    #@f
    .line 195
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    #@17
    .line 196
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
    .line 197
    return-object v2

    #@28
    .line 194
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 200
    .end local v2    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_3
    if-eqz p3, :cond_4

    #@2d
    .line 201
    new-instance v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    #@2f
    invoke-direct {v2, p1, p2, v4}, Lcom/android/server/notification/ConditionProviders$ConditionRecord;-><init>(Landroid/net/Uri;Landroid/content/ComponentName;Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V

    #@32
    .line 202
    .restart local v2    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    #@34
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@37
    .line 203
    return-object v2

    #@38
    .line 205
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
    .line 357
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
    .line 361
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

.method private removeDuplicateConditions(Ljava/lang/String;[Landroid/service/notification/Condition;)[Landroid/service/notification/Condition;
    .locals 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "conditions"    # [Landroid/service/notification/Condition;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 171
    if-eqz p2, :cond_0

    #@3
    array-length v5, p2

    #@4
    if-nez v5, :cond_1

    #@6
    :cond_0
    return-object v8

    #@7
    .line 172
    :cond_1
    array-length v0, p2

    #@8
    .line 173
    .local v0, "N":I
    new-instance v4, Landroid/util/ArrayMap;

    #@a
    invoke-direct {v4, v0}, Landroid/util/ArrayMap;-><init>(I)V

    #@d
    .line 174
    .local v4, "valid":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/net/Uri;Landroid/service/notification/Condition;>;"
    const/4 v1, 0x0

    #@e
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    #@10
    .line 175
    aget-object v5, p2, v1

    #@12
    iget-object v2, v5, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    #@14
    .line 176
    .local v2, "id":Landroid/net/Uri;
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@17
    move-result v5

    #@18
    if-eqz v5, :cond_2

    #@1a
    .line 177
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
    const-string/jumbo v7, " for duplicate id: "

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
    .line 174
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@40
    goto :goto_0

    #@41
    .line 180
    :cond_2
    aget-object v5, p2, v1

    #@43
    invoke-virtual {v4, v2, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@46
    goto :goto_1

    #@47
    .line 182
    .end local v2    # "id":Landroid/net/Uri;
    :cond_3
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@4a
    move-result v5

    #@4b
    if-nez v5, :cond_4

    #@4d
    return-object v8

    #@4e
    .line 183
    :cond_4
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@51
    move-result v5

    #@52
    if-ne v5, v0, :cond_5

    #@54
    return-object p2

    #@55
    .line 184
    :cond_5
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@58
    move-result v5

    #@59
    new-array v3, v5, [Landroid/service/notification/Condition;

    #@5b
    .line 185
    .local v3, "rt":[Landroid/service/notification/Condition;
    const/4 v1, 0x0

    #@5c
    :goto_2
    array-length v5, v3

    #@5d
    if-ge v1, v5, :cond_6

    #@5f
    .line 186
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@62
    move-result-object v5

    #@63
    check-cast v5, Landroid/service/notification/Condition;

    #@65
    aput-object v5, v3, v1

    #@67
    .line 185
    add-int/lit8 v1, v1, 0x1

    #@69
    goto :goto_2

    #@6a
    .line 188
    :cond_6
    return-object v3
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
    .line 328
    .local p0, "items":[Ljava/lang/Object;, "[TT;"
    new-instance v3, Landroid/util/ArraySet;

    #@2
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    #@5
    .line 329
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
    .line 330
    :cond_1
    array-length v0, p0

    #@c
    .line 331
    .local v0, "N":I
    const/4 v1, 0x0

    #@d
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    #@f
    .line 332
    aget-object v2, p0, v1

    #@11
    .line 333
    .local v2, "item":Ljava/lang/Object;, "TT;"
    if-eqz v2, :cond_2

    #@13
    .line 334
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@16
    .line 331
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_0

    #@19
    .line 337
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
    .line 310
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
    .line 311
    :cond_0
    invoke-static {p1}, Lcom/android/server/notification/ConditionProviders;->provider(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)Landroid/service/notification/IConditionProvider;

    #@21
    move-result-object v1

    #@22
    .line 312
    .local v1, "provider":Landroid/service/notification/IConditionProvider;
    const/4 v2, 0x0

    #@23
    .line 313
    .local v2, "re":Landroid/os/RemoteException;
    if-eqz v1, :cond_1

    #@25
    .line 315
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
    .line 316
    iget-object v4, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    #@4f
    invoke-interface {v1, v4}, Landroid/service/notification/IConditionProvider;->onSubscribe(Landroid/net/Uri;)V

    #@52
    .line 317
    const/4 v4, 0x1

    #@53
    iput-boolean v4, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->subscribed:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@55
    .line 323
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
    .line 309
    return-void

    #@5d
    .line 318
    .restart local v2    # "re":Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    #@5e
    .line 319
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
    .line 320
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
    .line 341
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
    .line 342
    :cond_0
    invoke-static {p1}, Lcom/android/server/notification/ConditionProviders;->provider(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)Landroid/service/notification/IConditionProvider;

    #@21
    move-result-object v1

    #@22
    .line 343
    .local v1, "provider":Landroid/service/notification/IConditionProvider;
    const/4 v2, 0x0

    #@23
    .line 344
    .local v2, "re":Landroid/os/RemoteException;
    if-eqz v1, :cond_1

    #@25
    .line 346
    :try_start_0
    iget-object v4, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    #@27
    invoke-interface {v1, v4}, Landroid/service/notification/IConditionProvider;->onUnsubscribe(Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2a
    .line 351
    .end local v2    # "re":Landroid/os/RemoteException;
    :goto_0
    const/4 v4, 0x0

    #@2b
    iput-boolean v4, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->subscribed:Z

    #@2d
    .line 353
    :cond_1
    if-eqz p1, :cond_2

    #@2f
    iget-object v3, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    #@31
    :cond_2
    invoke-static {v3, v1, v2}, Lcom/android/server/notification/ZenLog;->traceUnsubscribe(Landroid/net/Uri;Landroid/service/notification/IConditionProvider;Landroid/os/RemoteException;)V

    #@34
    .line 340
    return-void

    #@35
    .line 347
    .restart local v2    # "re":Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    #@36
    .line 348
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
    .line 349
    move-object v2, v0

    #@50
    .local v2, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method


# virtual methods
.method public addSystemProvider(Lcom/android/server/notification/SystemConditionProviderService;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/notification/SystemConditionProviderService;

    #@0
    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviders:Landroid/util/ArraySet;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@5
    .line 70
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mContext:Landroid/content/Context;

    #@7
    invoke-virtual {p1, v0}, Lcom/android/server/notification/SystemConditionProviderService;->attachBase(Landroid/content/Context;)V

    #@a
    .line 71
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
    .line 68
    return-void
.end method

.method protected asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 114
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
    .line 165
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 166
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
    .line 165
    :catchall_0
    move-exception v1

    #@a
    monitor-exit v0

    #@b
    throw v1
.end method

.method protected checkType(Landroid/os/IInterface;)Z
    .locals 1
    .param p1, "service"    # Landroid/os/IInterface;

    #@0
    .prologue
    .line 119
    instance-of v0, p1, Landroid/service/notification/IConditionProvider;

    #@2
    return v0
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    #@0
    .prologue
    .line 93
    invoke-super {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    #@3
    .line 94
    iget-object v4, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    #@5
    monitor-enter v4

    #@6
    .line 95
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
    .line 96
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
    .line 97
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    #@26
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@29
    move-result-object v2

    #@2a
    check-cast v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    #@2c
    .line 98
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
    .line 99
    :cond_0
    const-string/jumbo v3, "      "

    #@39
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3c
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@3f
    .line 100
    iget-object v3, v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    #@41
    invoke-static {v3}, Lcom/android/server/notification/CountdownConditionProvider;->tryParseDescription(Landroid/net/Uri;)Ljava/lang/String;

    #@44
    move-result-object v0

    #@45
    .line 101
    .local v0, "countdownDesc":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@47
    .line 102
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
    .line 96
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
    .line 106
    const-string/jumbo v3, "    mSystemConditionProviders: "

    #@5d
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@60
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviderNames:Landroid/util/ArraySet;

    #@62
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@65
    .line 107
    const/4 v1, 0x0

    #@66
    :goto_1
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviders:Landroid/util/ArraySet;

    #@68
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    #@6b
    move-result v3

    #@6c
    if-ge v1, v3, :cond_3

    #@6e
    .line 108
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviders:Landroid/util/ArraySet;

    #@70
    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@73
    move-result-object v3

    #@74
    check-cast v3, Lcom/android/server/notification/SystemConditionProviderService;

    #@76
    invoke-virtual {v3, p1, p2}, Lcom/android/server/notification/SystemConditionProviderService;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    #@79
    .line 107
    add-int/lit8 v1, v1, 0x1

    #@7b
    goto :goto_1

    #@7c
    .line 94
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    #@7d
    monitor-exit v4

    #@7e
    throw v3

    #@7f
    .line 92
    .restart local v1    # "i":I
    :cond_3
    return-void
.end method

.method public ensureRecordExists(Landroid/content/ComponentName;Landroid/net/Uri;Landroid/service/notification/IConditionProvider;)V
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "conditionId"    # Landroid/net/Uri;
    .param p3, "provider"    # Landroid/service/notification/IConditionProvider;

    #@0
    .prologue
    .line 252
    const/4 v1, 0x1

    #@1
    invoke-direct {p0, p2, p1, v1}, Lcom/android/server/notification/ConditionProviders;->getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;Z)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    #@4
    move-result-object v0

    #@5
    .line 253
    .local v0, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v1, v0, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@7
    if-nez v1, :cond_0

    #@9
    .line 255
    invoke-virtual {p0, p3}, Lcom/android/server/notification/ConditionProviders;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@c
    move-result-object v1

    #@d
    iput-object v1, v0, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@f
    .line 250
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
    .line 242
    if-eqz p1, :cond_0

    #@3
    if-nez p2, :cond_1

    #@5
    :cond_0
    return-object v1

    #@6
    .line 243
    :cond_1
    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    #@8
    monitor-enter v2

    #@9
    .line 244
    const/4 v3, 0x0

    #@a
    :try_start_0
    invoke-direct {p0, p2, p1, v3}, Lcom/android/server/notification/ConditionProviders;->getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;Z)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    #@d
    move-result-object v0

    #@e
    .line 245
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
    .line 243
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
    .line 232
    if-nez p1, :cond_0

    #@3
    return-object v3

    #@4
    .line 233
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
    .line 234
    .local v0, "service":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v2, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    #@18
    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_1

    #@1e
    .line 235
    invoke-static {v0}, Lcom/android/server/notification/ConditionProviders;->provider(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/IConditionProvider;

    #@21
    move-result-object v2

    #@22
    return-object v2

    #@23
    .line 238
    .end local v0    # "service":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :cond_2
    return-object v3
.end method

.method protected getConfig()Lcom/android/server/notification/ManagedServices$Config;
    .locals 2

    #@0
    .prologue
    .line 80
    new-instance v0, Lcom/android/server/notification/ManagedServices$Config;

    #@2
    invoke-direct {v0}, Lcom/android/server/notification/ManagedServices$Config;-><init>()V

    #@5
    .line 81
    .local v0, "c":Lcom/android/server/notification/ManagedServices$Config;
    const-string/jumbo v1, "condition provider"

    #@8
    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    #@a
    .line 82
    const-string/jumbo v1, "android.service.notification.ConditionProviderService"

    #@d
    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->serviceInterface:Ljava/lang/String;

    #@f
    .line 83
    const-string/jumbo v1, "enabled_notification_policy_access_packages"

    #@12
    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    #@14
    .line 84
    const-string/jumbo v1, "enabled_notification_listeners"

    #@17
    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->secondarySettingName:Ljava/lang/String;

    #@19
    .line 85
    const-string/jumbo v1, "android.permission.BIND_CONDITION_PROVIDER_SERVICE"

    #@1c
    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    #@1e
    .line 86
    const-string/jumbo v1, "android.settings.ACTION_CONDITION_PROVIDER_SETTINGS"

    #@21
    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->settingsAction:Ljava/lang/String;

    #@23
    .line 87
    const v1, 0x1040469

    #@26
    iput v1, v0, Lcom/android/server/notification/ManagedServices$Config;->clientLabel:I

    #@28
    .line 88
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
    .line 75
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviders:Landroid/util/ArraySet;

    #@2
    return-object v0
.end method

.method public isSystemProviderEnabled(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviderNames:Landroid/util/ArraySet;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected loadComponentNamesFromSetting(Ljava/lang/String;I)Landroid/util/ArraySet;
    .locals 7
    .param p1, "settingName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/util/ArraySet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 262
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v1

    #@6
    .line 263
    .local v1, "cr":Landroid/content/ContentResolver;
    invoke-static {v1, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@9
    move-result-object v5

    #@a
    .line 267
    .local v5, "settingValue":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@d
    move-result v6

    #@e
    if-eqz v6, :cond_0

    #@10
    .line 268
    new-instance v6, Landroid/util/ArraySet;

    #@12
    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    #@15
    return-object v6

    #@16
    .line 269
    :cond_0
    const-string/jumbo v6, ":"

    #@19
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    .line 270
    .local v3, "packages":[Ljava/lang/String;
    new-instance v4, Landroid/util/ArraySet;

    #@1f
    array-length v6, v3

    #@20
    invoke-direct {v4, v6}, Landroid/util/ArraySet;-><init>(I)V

    #@23
    .line 271
    .local v4, "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    const/4 v2, 0x0

    #@24
    .local v2, "i":I
    :goto_0
    array-length v6, v3

    #@25
    if-ge v2, v6, :cond_3

    #@27
    .line 272
    aget-object v6, v3, v2

    #@29
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@2c
    move-result v6

    #@2d
    if-nez v6, :cond_1

    #@2f
    .line 273
    aget-object v6, v3, v2

    #@31
    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@34
    move-result-object v0

    #@35
    .line 274
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_2

    #@37
    .line 275
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@3a
    move-result-object v6

    #@3b
    invoke-virtual {p0, v6, p2}, Lcom/android/server/notification/ConditionProviders;->queryPackageForServices(Ljava/lang/String;I)Ljava/util/Set;

    #@3e
    move-result-object v6

    #@3f
    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    #@42
    .line 271
    .end local v0    # "component":Landroid/content/ComponentName;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@44
    goto :goto_0

    #@45
    .line 277
    .restart local v0    # "component":Landroid/content/ComponentName;
    :cond_2
    aget-object v6, v3, v2

    #@47
    invoke-virtual {p0, v6, p2}, Lcom/android/server/notification/ConditionProviders;->queryPackageForServices(Ljava/lang/String;I)Ljava/util/Set;

    #@4a
    move-result-object v6

    #@4b
    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    #@4e
    goto :goto_1

    #@4f
    .line 281
    .end local v0    # "component":Landroid/content/ComponentName;
    :cond_3
    return-object v4
.end method

.method public notifyConditions(Ljava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;[Landroid/service/notification/Condition;)V
    .locals 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p3, "conditions"    # [Landroid/service/notification/Condition;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 209
    iget-object v5, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    #@3
    monitor-enter v5

    #@4
    .line 210
    :try_start_0
    iget-boolean v6, p0, Lcom/android/server/notification/ConditionProviders;->DEBUG:Z

    #@6
    if-eqz v6, :cond_0

    #@8
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    #@a
    new-instance v7, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v8, "notifyConditions pkg="

    #@12
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v7

    #@16
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v7

    #@1a
    const-string/jumbo v8, " info="

    #@1d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v7

    #@21
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v7

    #@25
    const-string/jumbo v8, " conditions="

    #@28
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v7

    #@2c
    .line 211
    if-nez p3, :cond_2

    #@2e
    .line 210
    :goto_0
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v4

    #@32
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@39
    .line 212
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/android/server/notification/ConditionProviders;->removeDuplicateConditions(Ljava/lang/String;[Landroid/service/notification/Condition;)[Landroid/service/notification/Condition;

    #@3c
    move-result-object p3

    #@3d
    .line 213
    if-eqz p3, :cond_1

    #@3f
    array-length v4, p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@40
    if-nez v4, :cond_3

    #@42
    :cond_1
    monitor-exit v5

    #@43
    return-void

    #@44
    .line 211
    :cond_2
    :try_start_1
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@47
    move-result-object v4

    #@48
    goto :goto_0

    #@49
    .line 214
    :cond_3
    array-length v0, p3

    #@4a
    .line 215
    .local v0, "N":I
    const/4 v2, 0x0

    #@4b
    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_4

    #@4d
    .line 216
    aget-object v1, p3, v2

    #@4f
    .line 217
    .local v1, "c":Landroid/service/notification/Condition;
    iget-object v4, v1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    #@51
    iget-object v6, p2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    #@53
    const/4 v7, 0x1

    #@54
    invoke-direct {p0, v4, v6, v7}, Lcom/android/server/notification/ConditionProviders;->getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;Z)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    #@57
    move-result-object v3

    #@58
    .line 218
    .local v3, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iput-object p2, v3, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@5a
    .line 219
    iput-object v1, v3, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->condition:Landroid/service/notification/Condition;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5c
    .line 215
    add-int/lit8 v2, v2, 0x1

    #@5e
    goto :goto_1

    #@5f
    .end local v1    # "c":Landroid/service/notification/Condition;
    .end local v3    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_4
    monitor-exit v5

    #@60
    .line 222
    array-length v0, p3

    #@61
    .line 223
    const/4 v2, 0x0

    #@62
    :goto_2
    if-ge v2, v0, :cond_6

    #@64
    .line 224
    aget-object v1, p3, v2

    #@66
    .line 225
    .restart local v1    # "c":Landroid/service/notification/Condition;
    iget-object v4, p0, Lcom/android/server/notification/ConditionProviders;->mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

    #@68
    if-eqz v4, :cond_5

    #@6a
    .line 226
    iget-object v4, p0, Lcom/android/server/notification/ConditionProviders;->mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

    #@6c
    iget-object v5, v1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    #@6e
    invoke-interface {v4, v5, v1}, Lcom/android/server/notification/ConditionProviders$Callback;->onConditionChanged(Landroid/net/Uri;Landroid/service/notification/Condition;)V

    #@71
    .line 223
    :cond_5
    add-int/lit8 v2, v2, 0x1

    #@73
    goto :goto_2

    #@74
    .line 209
    .end local v0    # "N":I
    .end local v1    # "c":Landroid/service/notification/Condition;
    .end local v2    # "i":I
    :catchall_0
    move-exception v4

    #@75
    monitor-exit v5

    #@76
    throw v4

    #@77
    .line 208
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_6
    return-void
.end method

.method public onBootPhaseAppsCanStart()V
    .locals 2

    #@0
    .prologue
    .line 124
    invoke-super {p0}, Lcom/android/server/notification/ManagedServices;->onBootPhaseAppsCanStart()V

    #@3
    .line 125
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
    .line 126
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
    .line 125
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 128
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

    #@1c
    if-eqz v1, :cond_1

    #@1e
    .line 129
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

    #@20
    invoke-interface {v1}, Lcom/android/server/notification/ConditionProviders$Callback;->onBootComplete()V

    #@23
    .line 123
    :cond_1
    return-void
.end method

.method protected onServiceAdded(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@0
    .prologue
    .line 143
    invoke-static {p1}, Lcom/android/server/notification/ConditionProviders;->provider(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/IConditionProvider;

    #@3
    move-result-object v1

    #@4
    .line 145
    .local v1, "provider":Landroid/service/notification/IConditionProvider;
    :try_start_0
    invoke-interface {v1}, Landroid/service/notification/IConditionProvider;->onConnected()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 149
    :goto_0
    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 150
    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

    #@d
    iget-object v3, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    #@f
    invoke-interface {v2, v3}, Lcom/android/server/notification/ConditionProviders$Callback;->onServiceAdded(Landroid/content/ComponentName;)V

    #@12
    .line 142
    :cond_0
    return-void

    #@13
    .line 146
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
    .line 156
    if-nez p1, :cond_0

    #@2
    return-void

    #@3
    .line 157
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
    .line 158
    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    #@15
    .line 159
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
    .line 157
    :goto_1
    add-int/lit8 v0, v0, -0x1

    #@21
    goto :goto_0

    #@22
    .line 160
    :cond_1
    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    #@24
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@27
    goto :goto_1

    #@28
    .line 155
    .end local v1    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_2
    return-void
.end method

.method public onUserSwitched(I)V
    .locals 1
    .param p1, "user"    # I

    #@0
    .prologue
    .line 135
    invoke-super {p0, p1}, Lcom/android/server/notification/ManagedServices;->onUserSwitched(I)V

    #@3
    .line 136
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 137
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

    #@9
    invoke-interface {v0}, Lcom/android/server/notification/ConditionProviders$Callback;->onUserSwitched()V

    #@c
    .line 134
    :cond_0
    return-void
.end method

.method public setCallback(Lcom/android/server/notification/ConditionProviders$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/server/notification/ConditionProviders$Callback;

    #@0
    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/server/notification/ConditionProviders;->mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

    #@2
    .line 60
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
    .line 285
    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    #@3
    monitor-enter v2

    #@4
    .line 286
    const/4 v1, 0x0

    #@5
    :try_start_0
    invoke-direct {p0, p2, p1, v1}, Lcom/android/server/notification/ConditionProviders;->getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;Z)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    #@8
    move-result-object v0

    #@9
    .line 287
    .local v0, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    if-nez v0, :cond_0

    #@b
    .line 288
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
    .line 289
    return v5

    #@31
    .line 291
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
    .line 292
    :cond_1
    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/server/notification/ConditionProviders;->subscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V

    #@3b
    .line 293
    iget-boolean v1, v0, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->subscribed:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3d
    monitor-exit v2

    #@3e
    return v1

    #@3f
    .line 285
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
    .line 298
    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 299
    const/4 v1, 0x0

    #@4
    :try_start_0
    invoke-direct {p0, p2, p1, v1}, Lcom/android/server/notification/ConditionProviders;->getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;Z)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    #@7
    move-result-object v0

    #@8
    .line 300
    .local v0, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    if-nez v0, :cond_0

    #@a
    .line 301
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
    .line 302
    return-void

    #@30
    .line 304
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
    .line 305
    :cond_1
    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/server/notification/ConditionProviders;->unsubscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@39
    monitor-exit v2

    #@3a
    .line 297
    return-void

    #@3b
    .line 298
    .end local v0    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :catchall_0
    move-exception v1

    #@3c
    monitor-exit v2

    #@3d
    throw v1
.end method
