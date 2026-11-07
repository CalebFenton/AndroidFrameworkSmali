.class public final Landroid/app/compat/CompatChanges;
.super Ljava/lang/Object;
.source "CompatChanges.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final blacklist QUERY_CACHE:Landroid/app/compat/ChangeIdStateCache;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 44
    new-instance v0, Landroid/app/compat/ChangeIdStateCache;

    invoke-direct {v0}, Landroid/app/compat/ChangeIdStateCache;-><init>()V

    sput-object v0, Landroid/app/compat/CompatChanges;->QUERY_CACHE:Landroid/app/compat/ChangeIdStateCache;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist isChangeEnabled(J)Z
    .registers 3
    .param p0, "changeId"    # J

    .line 60
    invoke-static {p0, p1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static whitelist isChangeEnabled(JI)Z
    .registers 5
    .param p0, "changeId"    # J
    .param p2, "uid"    # I

    .line 101
    sget-object v0, Landroid/app/compat/CompatChanges;->QUERY_CACHE:Landroid/app/compat/ChangeIdStateCache;

    invoke-static {p0, p1, p2}, Landroid/app/compat/ChangeIdStateQuery;->byUid(JI)Landroid/app/compat/ChangeIdStateQuery;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/compat/ChangeIdStateCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static whitelist isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z
    .registers 6
    .param p0, "changeId"    # J
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 79
    sget-object v0, Landroid/app/compat/CompatChanges;->QUERY_CACHE:Landroid/app/compat/ChangeIdStateCache;

    .line 80
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 79
    invoke-static {p0, p1, p2, v1}, Landroid/app/compat/ChangeIdStateQuery;->byPackageName(JLjava/lang/String;I)Landroid/app/compat/ChangeIdStateQuery;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/compat/ChangeIdStateCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static whitelist putAllPackageOverrides(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Landroid/app/compat/PackageOverride;",
            ">;>;)V"
        }
    .end annotation

    .line 115
    .local p0, "packageNameToOverrides":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/Long;Landroid/app/compat/PackageOverride;>;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 116
    .local v0, "packageNameToConfig":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/compat/CompatibilityOverrideConfig;>;"
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 117
    .local v2, "packageName":Ljava/lang/String;
    new-instance v3, Lcom/android/internal/compat/CompatibilityOverrideConfig;

    .line 118
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-direct {v3, v4}, Lcom/android/internal/compat/CompatibilityOverrideConfig;-><init>(Ljava/util/Map;)V

    .line 117
    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .end local v2    # "packageName":Ljava/lang/String;
    goto :goto_d

    .line 120
    :cond_28
    new-instance v1, Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;

    invoke-direct {v1, v0}, Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;-><init>(Ljava/util/Map;)V

    .line 123
    .local v1, "config":Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;
    :try_start_2d
    sget-object v2, Landroid/app/compat/CompatChanges;->QUERY_CACHE:Landroid/app/compat/ChangeIdStateCache;

    invoke-virtual {v2}, Landroid/app/compat/ChangeIdStateCache;->getPlatformCompatService()Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/internal/compat/IPlatformCompat;->putAllOverridesOnReleaseBuilds(Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_36} :catch_37

    .line 126
    goto :goto_3b

    .line 124
    :catch_37
    move-exception v2

    .line 125
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 127
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_3b
    return-void
.end method

.method public static whitelist putPackageOverrides(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .param p0, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Landroid/app/compat/PackageOverride;",
            ">;)V"
        }
    .end annotation

    .line 145
    .local p1, "overrides":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Landroid/app/compat/PackageOverride;>;"
    new-instance v0, Lcom/android/internal/compat/CompatibilityOverrideConfig;

    invoke-direct {v0, p1}, Lcom/android/internal/compat/CompatibilityOverrideConfig;-><init>(Ljava/util/Map;)V

    .line 147
    .local v0, "config":Lcom/android/internal/compat/CompatibilityOverrideConfig;
    :try_start_5
    sget-object v1, Landroid/app/compat/CompatChanges;->QUERY_CACHE:Landroid/app/compat/ChangeIdStateCache;

    invoke-virtual {v1}, Landroid/app/compat/ChangeIdStateCache;->getPlatformCompatService()Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v1

    .line 148
    invoke-interface {v1, v0, p0}, Lcom/android/internal/compat/IPlatformCompat;->putOverridesOnReleaseBuilds(Lcom/android/internal/compat/CompatibilityOverrideConfig;Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_f

    .line 151
    goto :goto_13

    .line 149
    :catch_f
    move-exception v1

    .line 150
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 152
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_13
    return-void
.end method

.method public static whitelist removeAllPackageOverrides(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    .line 165
    .local p0, "packageNameToOverridesToRemove":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Long;>;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 167
    .local v0, "packageNameToConfig":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;>;"
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 168
    .local v2, "packageName":Ljava/lang/String;
    new-instance v3, Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;

    .line 170
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-direct {v3, v4}, Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;-><init>(Ljava/util/Set;)V

    .line 168
    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .end local v2    # "packageName":Ljava/lang/String;
    goto :goto_d

    .line 172
    :cond_28
    new-instance v1, Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;

    invoke-direct {v1, v0}, Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;-><init>(Ljava/util/Map;)V

    .line 175
    .local v1, "config":Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;
    :try_start_2d
    sget-object v2, Landroid/app/compat/CompatChanges;->QUERY_CACHE:Landroid/app/compat/ChangeIdStateCache;

    invoke-virtual {v2}, Landroid/app/compat/ChangeIdStateCache;->getPlatformCompatService()Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/internal/compat/IPlatformCompat;->removeAllOverridesOnReleaseBuilds(Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_36} :catch_37

    .line 178
    goto :goto_3b

    .line 176
    :catch_37
    move-exception v2

    .line 177
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 179
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_3b
    return-void
.end method

.method public static whitelist removePackageOverrides(Ljava/lang/String;Ljava/util/Set;)V
    .registers 4
    .param p0, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 195
    .local p1, "overridesToRemove":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v0, Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;

    invoke-direct {v0, p1}, Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;-><init>(Ljava/util/Set;)V

    .line 198
    .local v0, "config":Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;
    :try_start_5
    sget-object v1, Landroid/app/compat/CompatChanges;->QUERY_CACHE:Landroid/app/compat/ChangeIdStateCache;

    invoke-virtual {v1}, Landroid/app/compat/ChangeIdStateCache;->getPlatformCompatService()Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v1

    .line 199
    invoke-interface {v1, v0, p0}, Lcom/android/internal/compat/IPlatformCompat;->removeOverridesOnReleaseBuilds(Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_f

    .line 202
    goto :goto_13

    .line 200
    :catch_f
    move-exception v1

    .line 201
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 203
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_13
    return-void
.end method
