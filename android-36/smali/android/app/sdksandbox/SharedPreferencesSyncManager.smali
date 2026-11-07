.class public Landroid/app/sdksandbox/SharedPreferencesSyncManager;
.super Ljava/lang/Object;
.source "SharedPreferencesSyncManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/sdksandbox/SharedPreferencesSyncManager$SharedPreferencesSyncCallback;,
        Landroid/app/sdksandbox/SharedPreferencesSyncManager$ChangeListener;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SdkSandboxSyncManager"

.field private static blacklist sInstanceMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/sdksandbox/SharedPreferencesSyncManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCallback:Landroid/app/sdksandbox/ISharedPreferencesSyncCallback;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mKeysToSync:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mListener:Landroid/app/sdksandbox/SharedPreferencesSyncManager$ChangeListener;

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mService:Landroid/app/sdksandbox/ISdkSandboxManager;

.field private blacklist mWaitingForSandbox:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/app/sdksandbox/SharedPreferencesSyncManager;)Landroid/app/sdksandbox/ISharedPreferencesSyncCallback;
    .registers 1

    iget-object p0, p0, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->mCallback:Landroid/app/sdksandbox/ISharedPreferencesSyncCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/app/sdksandbox/SharedPreferencesSyncManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKeysToSync(Landroid/app/sdksandbox/SharedPreferencesSyncManager;)Landroid/util/ArraySet;
    .registers 1

    iget-object p0, p0, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->mKeysToSync:Landroid/util/ArraySet;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/app/sdksandbox/SharedPreferencesSyncManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmService(Landroid/app/sdksandbox/SharedPreferencesSyncManager;)Landroid/app/sdksandbox/ISdkSandboxManager;
    .registers 1

    iget-object p0, p0, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->mService:Landroid/app/sdksandbox/ISdkSandboxManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWaitingForSandbox(Landroid/app/sdksandbox/SharedPreferencesSyncManager;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->mWaitingForSandbox:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWaitingForSandbox(Landroid/app/sdksandbox/SharedPreferencesSyncManager;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->mWaitingForSandbox:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mbulkSyncData(Landroid/app/sdksandbox/SharedPreferencesSyncManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->bulkSyncData()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateBundle(Landroid/app/sdksandbox/SharedPreferencesSyncManager;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Landroid/app/sdksandbox/SharedPreferencesKey;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->updateBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Landroid/app/sdksandbox/SharedPreferencesKey;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 50
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->sInstanceMap:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/app/sdksandbox/ISdkSandboxManager;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/app/sdksandbox/ISdkSandboxManager;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->mLock:Ljava/lang/Object;

    .line 54
    new-instance v0, Landroid/app/sdksandbox/SharedPreferencesSyncManager$SharedPreferencesSyncCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/sdksandbox/SharedPreferencesSyncManager$SharedPreferencesSyncCallback;-><init>(Landroid/app/sdksandbox/SharedPreferencesSyncManager;Landroid/app/sdksandbox/SharedPreferencesSyncManager-IA;)V

    iput-object v0, p0, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->mCallback:Landroid/app/sdksandbox/ISharedPreferencesSyncCallback;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->mWaitingForSandbox:Z

    .line 60
    iput-object v1, p0, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->mListener:Landroid/app/sdksandbox/SharedPreferencesSyncManager$ChangeListener;

    .line 64
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->mKeysToSync:Landroid/util/ArraySet;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->mContext:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->mService:Landroid/app/sdksandbox/ISdkSandboxManager;

    .line 72
    return-void
.end method

.method private blacklist bulkSyncData()V
    .registers 10

    .line 181
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 182
    .local v0, "data":Landroid/os/Bundle;
    invoke-direct {p0}, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->getDefaultSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 183
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 184
    .local v2, "allData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v3, "keysWithTypeBeingSynced":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/sdksandbox/SharedPreferencesKey;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_13
    iget-object v5, p0, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->mKeysToSync:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_3d

    .line 187
    iget-object v5, p0, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->mKeysToSync:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 188
    .local v5, "key":Ljava/lang/String;
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 189
    .local v6, "value":Ljava/lang/Object;
    if-nez v6, :cond_33

    .line 192
    new-instance v7, Landroid/app/sdksandbox/SharedPreferencesKey;

    const/4 v8, 0x5

    invoke-direct {v7, v5, v8}, Landroid/app/sdksandbox/SharedPreferencesKey;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    goto :goto_3a

    .line 196
    :cond_33
    invoke-direct {p0, v0, v5, v6}, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->updateBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Landroid/app/sdksandbox/SharedPreferencesKey;

    move-result-object v7

    .line 197
    .local v7, "keyWithTypeAdded":Landroid/app/sdksandbox/SharedPreferencesKey;
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/Object;
    .end local v7    # "keyWithTypeAdded":Landroid/app/sdksandbox/SharedPreferencesKey;
    :goto_3a
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 200
    .end local v4    # "i":I
    :cond_3d
    new-instance v4, Landroid/app/sdksandbox/SharedPreferencesUpdate;

    invoke-direct {v4, v3, v0}, Landroid/app/sdksandbox/SharedPreferencesUpdate;-><init>(Ljava/util/Collection;Landroid/os/Bundle;)V

    .line 203
    .local v4, "update":Landroid/app/sdksandbox/SharedPreferencesUpdate;
    :try_start_42
    new-instance v5, Landroid/app/sdksandbox/SandboxLatencyInfo;

    const/4 v6, 0x6

    invoke-direct {v5, v6}, Landroid/app/sdksandbox/SandboxLatencyInfo;-><init>(I)V

    .line 205
    .local v5, "sandboxLatencyInfo":Landroid/app/sdksandbox/SandboxLatencyInfo;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/app/sdksandbox/SandboxLatencyInfo;->setTimeAppCalledSystemServer(J)V

    .line 206
    iget-object v6, p0, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->mService:Landroid/app/sdksandbox/ISdkSandboxManager;

    iget-object v7, p0, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->mContext:Landroid/content/Context;

    .line 207
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->mCallback:Landroid/app/sdksandbox/ISharedPreferencesSyncCallback;

    .line 206
    invoke-interface {v6, v7, v5, v4, v8}, Landroid/app/sdksandbox/ISdkSandboxManager;->syncDataFromClient(Ljava/lang/String;Landroid/app/sdksandbox/SandboxLatencyInfo;Landroid/app/sdksandbox/SharedPreferencesUpdate;Landroid/app/sdksandbox/ISharedPreferencesSyncCallback;)V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_5c} :catch_5d

    .line 210
    .end local v5    # "sandboxLatencyInfo":Landroid/app/sdksandbox/SandboxLatencyInfo;
    goto :goto_7a

    .line 208
    :catch_5d
    move-exception v5

    .line 209
    .local v5, "e":Landroid/os/RemoteException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t connect to SdkSandboxManagerService: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SdkSandboxSyncManager"

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_7a
    return-void
.end method

.method private blacklist getDefaultSharedPreferences()Landroid/content/SharedPreferences;
    .registers 3

    .line 214
    iget-object v0, p0, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 215
    .local v0, "appContext":Landroid/content/Context;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    return-object v1
.end method

.method public static declared-synchronized blacklist getInstance(Landroid/content/Context;Landroid/app/sdksandbox/ISdkSandboxManager;)Landroid/app/sdksandbox/SharedPreferencesSyncManager;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Landroid/app/sdksandbox/ISdkSandboxManager;

    const-class v0, Landroid/app/sdksandbox/SharedPreferencesSyncManager;

    monitor-enter v0

    .line 80
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "packageName":Ljava/lang/String;
    sget-object v2, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->sInstanceMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 82
    sget-object v2, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->sInstanceMap:Landroid/util/ArrayMap;

    new-instance v3, Landroid/app/sdksandbox/SharedPreferencesSyncManager;

    invoke-direct {v3, p0, p1}, Landroid/app/sdksandbox/SharedPreferencesSyncManager;-><init>(Landroid/content/Context;Landroid/app/sdksandbox/ISdkSandboxManager;)V

    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_19
    sget-object v2, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->sInstanceMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/sdksandbox/SharedPreferencesSyncManager;
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_23

    monitor-exit v0

    return-object v2

    .line 79
    .end local v1    # "packageName":Ljava/lang/String;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "service":Landroid/app/sdksandbox/ISdkSandboxManager;
    :catchall_23
    move-exception p0

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p0
.end method

.method private blacklist syncData()V
    .registers 3

    .line 168
    iget-object v0, p0, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 170
    :try_start_3
    iget-object v1, p0, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->mKeysToSync:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 171
    monitor-exit v0

    return-void

    .line 174
    :cond_d
    invoke-direct {p0}, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->bulkSyncData()V

    .line 175
    monitor-exit v0

    .line 176
    return-void

    .line 175
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private blacklist updateBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Landroid/app/sdksandbox/SharedPreferencesKey;
    .registers 12
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .line 270
    const-string v0, "SdkSandboxSyncManager"

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 272
    .local v1, "type":Ljava/lang/String;
    const/4 v2, 0x5

    :try_start_b
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/4 v7, 0x2

    sparse-switch v3, :sswitch_data_102

    :cond_16
    goto :goto_53

    :sswitch_17
    const-string v3, "Boolean"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    move v3, v4

    goto :goto_54

    :sswitch_21
    const-string v3, "Float"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    move v3, v5

    goto :goto_54

    :sswitch_2b
    const-string v3, "Long"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    move v3, v6

    goto :goto_54

    :sswitch_35
    const-string v3, "Integer"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    move v3, v7

    goto :goto_54

    :sswitch_3f
    const-string v3, "String"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    const/4 v3, 0x0

    goto :goto_54

    :sswitch_49
    const-string v3, "HashSet"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    move v3, v2

    goto :goto_54

    :goto_53
    const/4 v3, -0x1

    :goto_54
    packed-switch v3, :pswitch_data_11c

    .line 293
    goto :goto_b7

    .line 290
    :pswitch_58
    new-instance v3, Ljava/util/ArrayList;

    move-object v4, p3

    check-cast v4, Ljava/util/Set;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, p2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 291
    new-instance v3, Landroid/app/sdksandbox/SharedPreferencesKey;

    const/4 v4, 0x6

    invoke-direct {v3, p2, v4}, Landroid/app/sdksandbox/SharedPreferencesKey;-><init>(Ljava/lang/String;I)V

    return-object v3

    .line 286
    :pswitch_6a
    move-object v3, p3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, p2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 287
    new-instance v3, Landroid/app/sdksandbox/SharedPreferencesKey;

    invoke-direct {v3, p2, v6}, Landroid/app/sdksandbox/SharedPreferencesKey;-><init>(Ljava/lang/String;I)V

    return-object v3

    .line 283
    :pswitch_7a
    move-object v3, p3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {p1, p2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 284
    new-instance v3, Landroid/app/sdksandbox/SharedPreferencesKey;

    invoke-direct {v3, p2, v7}, Landroid/app/sdksandbox/SharedPreferencesKey;-><init>(Ljava/lang/String;I)V

    return-object v3

    .line 280
    :pswitch_8a
    move-object v3, p3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, p2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 281
    new-instance v3, Landroid/app/sdksandbox/SharedPreferencesKey;

    invoke-direct {v3, p2, v5}, Landroid/app/sdksandbox/SharedPreferencesKey;-><init>(Ljava/lang/String;I)V

    return-object v3

    .line 277
    :pswitch_9a
    move-object v3, p3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p1, p2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 278
    new-instance v3, Landroid/app/sdksandbox/SharedPreferencesKey;

    invoke-direct {v3, p2, v4}, Landroid/app/sdksandbox/SharedPreferencesKey;-><init>(Ljava/lang/String;I)V

    return-object v3

    .line 274
    :pswitch_aa
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, p2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    new-instance v3, Landroid/app/sdksandbox/SharedPreferencesKey;

    invoke-direct {v3, p2, v2}, Landroid/app/sdksandbox/SharedPreferencesKey;-><init>(Ljava/lang/String;I)V

    return-object v3

    .line 293
    :goto_b7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown type found in default SharedPreferences for Key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d7
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_d7} :catch_d8

    .line 308
    goto :goto_fc

    .line 300
    :catch_d8
    move-exception v3

    .line 301
    .local v3, "ignore":Ljava/lang/ClassCastException;
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 302
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wrong type found in default SharedPreferences for Key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    .end local v3    # "ignore":Ljava/lang/ClassCastException;
    :goto_fc
    new-instance v0, Landroid/app/sdksandbox/SharedPreferencesKey;

    invoke-direct {v0, p2, v2}, Landroid/app/sdksandbox/SharedPreferencesKey;-><init>(Ljava/lang/String;I)V

    return-object v0

    :sswitch_data_102
    .sparse-switch
        -0x733427ac -> :sswitch_49
        -0x6bc5b3cf -> :sswitch_3f
        -0x2811e6e2 -> :sswitch_35
        0x243a9c -> :sswitch_2b
        0x40d323c -> :sswitch_21
        0x67140408 -> :sswitch_17
    .end sparse-switch

    :pswitch_data_11c
    .packed-switch 0x0
        :pswitch_aa
        :pswitch_9a
        :pswitch_8a
        :pswitch_7a
        :pswitch_6a
        :pswitch_58
    .end packed-switch
.end method


# virtual methods
.method public blacklist addSharedPreferencesSyncKeys(Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 94
    .local p1, "keyNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 95
    :try_start_3
    iget-object v1, p0, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->mKeysToSync:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 97
    iget-object v1, p0, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->mListener:Landroid/app/sdksandbox/SharedPreferencesSyncManager$ChangeListener;

    if-nez v1, :cond_1d

    .line 98
    new-instance v1, Landroid/app/sdksandbox/SharedPreferencesSyncManager$ChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/app/sdksandbox/SharedPreferencesSyncManager$ChangeListener;-><init>(Landroid/app/sdksandbox/SharedPreferencesSyncManager;Landroid/app/sdksandbox/SharedPreferencesSyncManager-IA;)V

    iput-object v1, p0, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->mListener:Landroid/app/sdksandbox/SharedPreferencesSyncManager$ChangeListener;

    .line 99
    invoke-direct {p0}, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->getDefaultSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->mListener:Landroid/app/sdksandbox/SharedPreferencesSyncManager$ChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 101
    :cond_1d
    invoke-direct {p0}, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->syncData()V

    .line 102
    monitor-exit v0

    .line 103
    return-void

    .line 102
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public blacklist getSharedPreferencesSyncKeys()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 141
    :try_start_3
    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->mKeysToSync:Landroid/util/ArraySet;

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    monitor-exit v0

    return-object v1

    .line 142
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public blacklist isWaitingForSandbox()Z
    .registers 3

    .line 153
    iget-object v0, p0, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 154
    :try_start_3
    iget-boolean v1, p0, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->mWaitingForSandbox:Z

    monitor-exit v0

    return v1

    .line 155
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public blacklist removeSharedPreferencesSyncKeys(Ljava/util/Set;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 112
    .local p1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 113
    :try_start_3
    iget-object v1, p0, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->mKeysToSync:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    .line 115
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v1, "keysWithTypeBeingRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/sdksandbox/SharedPreferencesKey;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 118
    .local v3, "key":Ljava/lang/String;
    new-instance v4, Landroid/app/sdksandbox/SharedPreferencesKey;

    const/4 v5, 0x5

    invoke-direct {v4, v3, v5}, Landroid/app/sdksandbox/SharedPreferencesKey;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    nop

    .end local v3    # "key":Ljava/lang/String;
    goto :goto_11

    .line 121
    :cond_28
    new-instance v2, Landroid/app/sdksandbox/SharedPreferencesUpdate;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-direct {v2, v1, v3}, Landroid/app/sdksandbox/SharedPreferencesUpdate;-><init>(Ljava/util/Collection;Landroid/os/Bundle;)V
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_6c

    .line 124
    .local v2, "update":Landroid/app/sdksandbox/SharedPreferencesUpdate;
    :try_start_32
    new-instance v3, Landroid/app/sdksandbox/SandboxLatencyInfo;

    const/4 v4, 0x6

    invoke-direct {v3, v4}, Landroid/app/sdksandbox/SandboxLatencyInfo;-><init>(I)V

    .line 126
    .local v3, "sandboxLatencyInfo":Landroid/app/sdksandbox/SandboxLatencyInfo;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/app/sdksandbox/SandboxLatencyInfo;->setTimeAppCalledSystemServer(J)V

    .line 127
    iget-object v4, p0, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->mService:Landroid/app/sdksandbox/ISdkSandboxManager;

    iget-object v5, p0, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->mContext:Landroid/content/Context;

    .line 128
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->mCallback:Landroid/app/sdksandbox/ISharedPreferencesSyncCallback;

    .line 127
    invoke-interface {v4, v5, v3, v2, v6}, Landroid/app/sdksandbox/ISdkSandboxManager;->syncDataFromClient(Ljava/lang/String;Landroid/app/sdksandbox/SandboxLatencyInfo;Landroid/app/sdksandbox/SharedPreferencesUpdate;Landroid/app/sdksandbox/ISharedPreferencesSyncCallback;)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_4c} :catch_4d
    .catchall {:try_start_32 .. :try_end_4c} :catchall_6c

    .line 131
    .end local v3    # "sandboxLatencyInfo":Landroid/app/sdksandbox/SandboxLatencyInfo;
    goto :goto_6a

    .line 129
    :catch_4d
    move-exception v3

    .line 130
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_4e
    const-string v4, "SdkSandboxSyncManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t connect to SdkSandboxManagerService: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .end local v1    # "keysWithTypeBeingRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/sdksandbox/SharedPreferencesKey;>;"
    .end local v2    # "update":Landroid/app/sdksandbox/SharedPreferencesUpdate;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_6a
    monitor-exit v0

    .line 133
    return-void

    .line 132
    :catchall_6c
    move-exception v1

    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_4e .. :try_end_6e} :catchall_6c

    throw v1
.end method
