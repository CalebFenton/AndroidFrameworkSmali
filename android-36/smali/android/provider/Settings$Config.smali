.class public final Landroid/provider/Settings$Config;
.super Landroid/provider/Settings$NameValueTable;
.source "Settings.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Settings$Config$SyncDisabledMode;
    }
.end annotation


# static fields
.field public static final blacklist CONTENT_URI:Landroid/net/Uri;

.field public static final blacklist SYNC_DISABLED_MODE_NONE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist SYNC_DISABLED_MODE_PERSISTENT:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist SYNC_DISABLED_MODE_UNTIL_REBOOT:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final blacklist sNameValueCache:Landroid/provider/Settings$NameValueCache;

.field private static final blacklist sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 12

    .line 20979
    const-string v0, "content://settings/config"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$Config;->CONTENT_URI:Landroid/net/Uri;

    .line 20981
    new-instance v0, Landroid/provider/Settings$ContentProviderHolder;

    sget-object v1, Landroid/provider/Settings$Config;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1}, Landroid/provider/Settings$ContentProviderHolder;-><init>(Landroid/net/Uri;)V

    sput-object v0, Landroid/provider/Settings$Config;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    .line 20985
    new-instance v2, Landroid/provider/Settings$NameValueCache;

    sget-object v3, Landroid/provider/Settings$Config;->CONTENT_URI:Landroid/net/Uri;

    sget-object v9, Landroid/provider/Settings$Config;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    const-class v10, Landroid/provider/Settings$Config;

    const/4 v11, 0x0

    const-string v4, "GET_config"

    const-string v5, "PUT_config"

    const-string v6, "DELETE_config"

    const-string v7, "LIST_config"

    const-string v8, "SET_ALL_config"

    invoke-direct/range {v2 .. v11}, Landroid/provider/Settings$NameValueCache;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/provider/Settings$ContentProviderHolder;Ljava/lang/Class;Landroid/provider/Settings-IA;)V

    sput-object v2, Landroid/provider/Settings$Config;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 20996
    invoke-direct {p0}, Landroid/provider/Settings$NameValueTable;-><init>()V

    .line 20997
    return-void
.end method

.method public static blacklist checkCallingOrSelfPermission(Ljava/lang/String;)I
    .registers 2
    .param p0, "permission"    # Ljava/lang/String;

    .line 21368
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 21369
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 21368
    return v0
.end method

.method public static blacklist clearMonitorCallback(Landroid/content/ContentResolver;)V
    .registers 8
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 21310
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v6, v0

    .line 21311
    .local v6, "arg":Landroid/os/Bundle;
    const-string v0, "_user"

    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 21312
    sget-object v0, Landroid/provider/Settings$Config;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {v0, p0}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v1

    .line 21313
    .local v1, "cp":Landroid/content/IContentProvider;
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    sget-object v0, Landroid/provider/Settings$Config;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v0}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v0

    .line 21314
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UNREGISTER_MONITOR_CALLBACK_config"

    .line 21313
    const/4 v5, 0x0

    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_29} :catch_2b

    .line 21318
    nop

    .end local v1    # "cp":Landroid/content/IContentProvider;
    .end local v6    # "arg":Landroid/os/Bundle;
    goto :goto_33

    .line 21316
    :catch_2b
    move-exception v0

    .line 21317
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Settings"

    const-string v2, "Can\'t clear config monitor callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21319
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_33
    return-void
.end method

.method public static blacklist clearProviderForTest()V
    .registers 1

    .line 21394
    sget-object v0, Landroid/provider/Settings$Config;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {v0}, Landroid/provider/Settings$ContentProviderHolder;->clearProviderForTest()V

    .line 21395
    sget-object v0, Landroid/provider/Settings$Config;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    invoke-virtual {v0}, Landroid/provider/Settings$NameValueCache;->clearGenerationTrackerForTest()V

    .line 21396
    return-void
.end method

.method static blacklist createCompositeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "namespace"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .line 21425
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21426
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 21428
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist createNamespaceUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 2
    .param p0, "namespace"    # Ljava/lang/String;

    .line 21437
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21438
    sget-object v0, Landroid/provider/Settings$Config;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist createPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "namespace"    # Ljava/lang/String;

    .line 21432
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist deleteString(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0, "namespace"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 21198
    invoke-static {}, Landroid/provider/Settings$Config;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 21199
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Settings$Config;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    .line 21200
    invoke-static {p0, p1}, Landroid/provider/Settings$Config;->createCompositeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v3

    .line 21199
    invoke-virtual {v1, v0, v2, v3}, Landroid/provider/Settings$NameValueCache;->deleteStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method public static blacklist getAllStrings()Ljava/util/Map;
    .registers 13
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 21046
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v1, v0

    .line 21048
    .local v1, "allFlags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_6
    invoke-static {}, Landroid/provider/Settings$Config;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 21049
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v8, v2

    .line 21050
    .local v8, "arg":Landroid/os/Bundle;
    const-string v2, "_user"

    invoke-virtual {v0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v3

    invoke-virtual {v8, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 21051
    sget-object v2, Landroid/provider/Settings$Config;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {v2, v0}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v3

    .line 21053
    .local v3, "cp":Landroid/content/IContentProvider;
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/provider/Flags;->reduceBinderTransactionSizeForGetAllProperties()Z

    move-result v2
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_23} :catch_bb

    const-string/jumbo v9, "value"

    if-eqz v2, :cond_98

    .line 21054
    :try_start_28
    invoke-virtual {v0}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v4

    sget-object v2, Landroid/provider/Settings$Config;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v2}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v2

    .line 21055
    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    const-string v6, "LIST_namespaces_config"

    .line 21054
    const/4 v7, 0x0

    invoke-interface/range {v3 .. v8}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 21057
    .local v2, "b":Landroid/os/Bundle;
    if-eqz v2, :cond_97

    .line 21058
    const-class v4, Ljava/util/HashSet;

    .line 21059
    invoke-virtual {v2, v9, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    .line 21061
    .local v4, "namespaces":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_97

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 21062
    .local v6, "namespace":Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 21063
    invoke-static {v6, v7}, Landroid/provider/Settings$Config;->getStrings(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object v7

    .line 21064
    .local v7, "keyValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_68
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_96

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 21065
    .local v10, "key":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v1, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21066
    nop

    .end local v10    # "key":Ljava/lang/String;
    goto :goto_68

    .line 21067
    .end local v6    # "namespace":Ljava/lang/String;
    .end local v7    # "keyValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_96
    goto :goto_4b

    .line 21069
    .end local v2    # "b":Landroid/os/Bundle;
    .end local v4    # "namespaces":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_97
    goto :goto_ba

    .line 21070
    :cond_98
    invoke-virtual {v0}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v4

    sget-object v2, Landroid/provider/Settings$Config;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v2}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v2

    .line 21071
    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    const-string v6, "LIST_config"

    .line 21070
    const/4 v7, 0x0

    invoke-interface/range {v3 .. v8}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 21073
    .restart local v2    # "b":Landroid/os/Bundle;
    if-eqz v2, :cond_ba

    .line 21074
    const-class v4, Ljava/util/HashMap;

    .line 21075
    invoke-virtual {v2, v9, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 21077
    .local v4, "flagsToValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_ba
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_ba} :catch_bb

    .line 21082
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "b":Landroid/os/Bundle;
    .end local v3    # "cp":Landroid/content/IContentProvider;
    .end local v4    # "flagsToValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "arg":Landroid/os/Bundle;
    :cond_ba
    :goto_ba
    goto :goto_d6

    .line 21080
    :catch_bb
    move-exception v0

    .line 21081
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t query configuration table for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/provider/Settings$Config;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Settings"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21083
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_d6
    return-object v1
.end method

.method private static blacklist getContentResolver()Landroid/content/ContentResolver;
    .registers 1

    .line 21442
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 21010
    invoke-static {}, Landroid/provider/Settings$Config;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 21011
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Settings$Config;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    invoke-virtual {v0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v2

    invoke-virtual {v1, v0, p0, v2}, Landroid/provider/Settings$NameValueCache;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getStrings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .registers 5
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "namespace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 21100
    .local p2, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/provider/Settings$Config;->createPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21102
    .local v0, "prefix":Ljava/lang/String;
    sget-object v1, Landroid/provider/Settings$Config;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    invoke-static {v1, p0, v0, p2}, Landroid/provider/Settings$NameValueCache;->-$$Nest$mgetStringsForPrefixStripPrefix(Landroid/provider/Settings$NameValueCache;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getStrings(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .registers 3
    .param p0, "namespace"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 21029
    .local p1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/provider/Settings$Config;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/provider/Settings$Config;->getStrings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSyncDisabledMode()I
    .registers 8
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 21269
    :try_start_0
    invoke-static {}, Landroid/provider/Settings$Config;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 21270
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    move-object v7, v1

    .line 21271
    .local v7, "args":Landroid/os/Bundle;
    sget-object v1, Landroid/provider/Settings$Config;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {v1, v0}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v2

    .line 21272
    .local v2, "cp":Landroid/content/IContentProvider;
    invoke-virtual {v0}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    sget-object v1, Landroid/provider/Settings$Config;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v1}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v1

    .line 21273
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    const-string v5, "GET_SYNC_DISABLED_MODE_config"

    .line 21272
    const/4 v6, 0x0

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 21276
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v3, "config_get_sync_disabled_mode_return"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_28} :catch_29

    return v3

    .line 21277
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "cp":Landroid/content/IContentProvider;
    .end local v7    # "args":Landroid/os/Bundle;
    :catch_29
    move-exception v0

    .line 21278
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t query sync disabled mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$Config;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Settings"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21280
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, -0x1

    return v0
.end method

.method private static blacklist handleMonitorCallback(Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$MonitorCallback;)V
    .registers 7
    .param p0, "result"    # Landroid/os/Bundle;
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "monitorCallback"    # Landroid/provider/DeviceConfig$MonitorCallback;

    .line 21402
    const-string/jumbo v0, "monitor_callback_type"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21403
    .local v0, "callbackType":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_5c

    :cond_10
    goto :goto_26

    :sswitch_11
    const-string v1, "access_callback"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_27

    :sswitch_1b
    const-string/jumbo v1, "namespace_updated_callback"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x0

    goto :goto_27

    :goto_26
    const/4 v1, -0x1

    :goto_27
    const-string/jumbo v2, "namespace"

    packed-switch v1, :pswitch_data_66

    .line 21419
    const-string v1, "Settings"

    const-string v2, "Unrecognized DeviceConfig callback"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b

    .line 21411
    :pswitch_35
    const-string v1, "calling_package"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 21412
    .local v1, "callingPackage":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 21413
    .local v2, "namespace":Ljava/lang/String;
    if-eqz v2, :cond_5b

    if-eqz v1, :cond_5b

    .line 21414
    new-instance v3, Landroid/provider/Settings$Config$$ExternalSyntheticLambda2;

    invoke-direct {v3, p2, v1, v2}, Landroid/provider/Settings$Config$$ExternalSyntheticLambda2;-><init>(Landroid/provider/DeviceConfig$MonitorCallback;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_5b

    .line 21405
    .end local v1    # "callingPackage":Ljava/lang/String;
    .end local v2    # "namespace":Ljava/lang/String;
    :pswitch_4d
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 21406
    .local v1, "updatedNamespace":Ljava/lang/String;
    if-eqz v1, :cond_5b

    .line 21407
    new-instance v2, Landroid/provider/Settings$Config$$ExternalSyntheticLambda1;

    invoke-direct {v2, p2, v1}, Landroid/provider/Settings$Config$$ExternalSyntheticLambda1;-><init>(Landroid/provider/DeviceConfig$MonitorCallback;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 21422
    .end local v1    # "updatedNamespace":Ljava/lang/String;
    :cond_5b
    :goto_5b
    return-void

    :sswitch_data_5c
    .sparse-switch
        -0x2ccdde53 -> :sswitch_1b
        0x45856cc0 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_4d
        :pswitch_35
    .end packed-switch
.end method

.method static synthetic blacklist lambda$handleMonitorCallback$1(Landroid/provider/DeviceConfig$MonitorCallback;Ljava/lang/String;)V
    .registers 2
    .param p0, "monitorCallback"    # Landroid/provider/DeviceConfig$MonitorCallback;
    .param p1, "updatedNamespace"    # Ljava/lang/String;

    .line 21407
    invoke-interface {p0, p1}, Landroid/provider/DeviceConfig$MonitorCallback;->onNamespaceUpdate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$handleMonitorCallback$2(Landroid/provider/DeviceConfig$MonitorCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "monitorCallback"    # Landroid/provider/DeviceConfig$MonitorCallback;
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;

    .line 21415
    invoke-interface {p0, p1, p2}, Landroid/provider/DeviceConfig$MonitorCallback;->onDeviceConfigAccess(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$setMonitorCallbackAsUser$0(Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$MonitorCallback;Landroid/os/Bundle;)V
    .registers 3
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "callback"    # Landroid/provider/DeviceConfig$MonitorCallback;
    .param p2, "result"    # Landroid/os/Bundle;

    .line 21381
    invoke-static {p2, p0, p1}, Landroid/provider/Settings$Config;->handleMonitorCallback(Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$MonitorCallback;)V

    .line 21382
    return-void
.end method

.method public static blacklist putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 12
    .param p0, "namespace"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "makeDefault"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 21127
    invoke-static {}, Landroid/provider/Settings$Config;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 21128
    .local v1, "resolver":Landroid/content/ContentResolver;
    sget-object v0, Landroid/provider/Settings$Config;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    invoke-static {p0, p1}, Landroid/provider/Settings$Config;->createCompositeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 21129
    invoke-virtual {v1}, Landroid/content/ContentResolver;->getUserId()I

    move-result v6

    .line 21128
    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    move v5, p3

    .end local p2    # "value":Ljava/lang/String;
    .end local p3    # "makeDefault":Z
    .local v3, "value":Ljava/lang/String;
    .local v5, "makeDefault":Z
    invoke-virtual/range {v0 .. v7}, Landroid/provider/Settings$NameValueCache;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Z

    move-result p2

    return p2
.end method

.method public static blacklist registerContentObserver(Ljava/lang/String;ZLandroid/database/ContentObserver;)V
    .registers 5
    .param p0, "namespace"    # Ljava/lang/String;
    .param p1, "notifyForDescendants"    # Z
    .param p2, "observer"    # Landroid/database/ContentObserver;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 21330
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 21331
    invoke-static {p0}, Landroid/provider/Settings$Config;->createNamespaceUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 21333
    return-void
.end method

.method public static blacklist resetToDefaults(ILjava/lang/String;)V
    .registers 10
    .param p0, "resetMode"    # I
    .param p1, "namespace"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 21221
    :try_start_0
    invoke-static {}, Landroid/provider/Settings$Config;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 21222
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v7, v1

    .line 21223
    .local v7, "arg":Landroid/os/Bundle;
    const-string v1, "_user"

    invoke-virtual {v0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v2

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 21224
    const-string v1, "_reset_mode"

    invoke-virtual {v7, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 21225
    if-eqz p1, :cond_23

    .line 21226
    const-string v1, "_prefix"

    invoke-static {p1}, Landroid/provider/Settings$Config;->createPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21228
    :cond_23
    sget-object v1, Landroid/provider/Settings$Config;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {v1, v0}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v2

    .line 21229
    .local v2, "cp":Landroid/content/IContentProvider;
    invoke-virtual {v0}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    sget-object v1, Landroid/provider/Settings$Config;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v1}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v1

    .line 21230
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RESET_config"

    .line 21229
    const/4 v6, 0x0

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3d} :catch_3f

    .line 21233
    nop

    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "cp":Landroid/content/IContentProvider;
    .end local v7    # "arg":Landroid/os/Bundle;
    goto :goto_5a

    .line 21231
    :catch_3f
    move-exception v0

    .line 21232
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t reset to defaults for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$Config;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Settings"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21234
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_5a
    return-void
.end method

.method public static blacklist setMonitorCallback(Landroid/content/ContentResolver;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$MonitorCallback;)V
    .registers 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/provider/DeviceConfig$MonitorCallback;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 21297
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p1, p0, v0, p2}, Landroid/provider/Settings$Config;->setMonitorCallbackAsUser(Ljava/util/concurrent/Executor;Landroid/content/ContentResolver;ILandroid/provider/DeviceConfig$MonitorCallback;)V

    .line 21298
    return-void
.end method

.method private static blacklist setMonitorCallbackAsUser(Ljava/util/concurrent/Executor;Landroid/content/ContentResolver;ILandroid/provider/DeviceConfig$MonitorCallback;)V
    .registers 11
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "userHandle"    # I
    .param p3, "callback"    # Landroid/provider/DeviceConfig$MonitorCallback;

    .line 21377
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v6, v0

    .line 21378
    .local v6, "arg":Landroid/os/Bundle;
    const-string v0, "_user"

    invoke-virtual {v6, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 21379
    const-string v0, "_monitor_callback_key"

    new-instance v1, Landroid/os/RemoteCallback;

    new-instance v2, Landroid/provider/Settings$Config$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p3}, Landroid/provider/Settings$Config$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$MonitorCallback;)V

    invoke-direct {v1, v2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 21383
    sget-object v0, Landroid/provider/Settings$Config;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {v0, p1}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v1

    .line 21384
    .local v1, "cp":Landroid/content/IContentProvider;
    invoke-virtual {p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    sget-object v0, Landroid/provider/Settings$Config;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v0}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v0

    .line 21385
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    const-string v4, "REGISTER_MONITOR_CALLBACK_config"

    .line 21384
    const/4 v5, 0x0

    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_34} :catch_36

    .line 21389
    nop

    .end local v1    # "cp":Landroid/content/IContentProvider;
    .end local v6    # "arg":Landroid/os/Bundle;
    goto :goto_3e

    .line 21387
    :catch_36
    move-exception v0

    .line 21388
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Settings"

    const-string v2, "Can\'t set config monitor callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21390
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3e
    return-void
.end method

.method public static blacklist setStrings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/Map;)Z
    .registers 8
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "namespace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/DeviceConfig$BadConfigException;
        }
    .end annotation

    .line 21166
    .local p2, "keyValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 21167
    .local v0, "compositeKeyValueMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 21168
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    nop

    .line 21169
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/provider/Settings$Config;->createCompositeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 21168
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21170
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_15

    .line 21171
    :cond_36
    sget-object v1, Landroid/provider/Settings$Config;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    .line 21172
    invoke-static {p1}, Landroid/provider/Settings$Config;->createPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 21171
    invoke-virtual {v1, p0, v2, v0}, Landroid/provider/Settings$NameValueCache;->setStringsForPrefix(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/HashMap;)I

    move-result v1

    .line 21173
    .local v1, "result":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_44

    .line 21174
    return v2

    .line 21175
    :cond_44
    const/4 v2, 0x2

    if-ne v1, v2, :cond_49

    .line 21176
    const/4 v2, 0x0

    return v2

    .line 21179
    :cond_49
    new-instance v2, Landroid/provider/DeviceConfig$BadConfigException;

    invoke-direct {v2}, Landroid/provider/DeviceConfig$BadConfigException;-><init>()V

    throw v2
.end method

.method public static blacklist setStrings(Ljava/lang/String;Ljava/util/Map;)Z
    .registers 3
    .param p0, "namespace"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/DeviceConfig$BadConfigException;
        }
    .end annotation

    .line 21148
    .local p1, "keyValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Landroid/provider/Settings$Config;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/provider/Settings$Config;->setStrings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public static blacklist setSyncDisabledMode(I)V
    .registers 9
    .param p0, "disableSyncMode"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 21247
    :try_start_0
    invoke-static {}, Landroid/provider/Settings$Config;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 21248
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v7, v1

    .line 21249
    .local v7, "args":Landroid/os/Bundle;
    const-string v1, "_disabled_mode"

    invoke-virtual {v7, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 21250
    sget-object v1, Landroid/provider/Settings$Config;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {v1, v0}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v2

    .line 21251
    .local v2, "cp":Landroid/content/IContentProvider;
    invoke-virtual {v0}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    sget-object v1, Landroid/provider/Settings$Config;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v1}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SET_SYNC_DISABLED_MODE_config"

    const/4 v6, 0x0

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_29} :catch_2b

    .line 21255
    nop

    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "cp":Landroid/content/IContentProvider;
    .end local v7    # "args":Landroid/os/Bundle;
    goto :goto_46

    .line 21253
    :catch_2b
    move-exception v0

    .line 21254
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t set sync disabled mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$Config;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Settings"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21256
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_46
    return-void
.end method

.method public static blacklist unregisterContentObserver(Landroid/database/ContentObserver;)V
    .registers 2
    .param p0, "observer"    # Landroid/database/ContentObserver;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 21344
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 21345
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 21346
    return-void
.end method
