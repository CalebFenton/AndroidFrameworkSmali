.class final Landroid/net/connectivity/org/chromium/net/ExperimentalOptionsTranslator;
.super Ljava/lang/Object;
.source "ExperimentalOptionsTranslator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/net/ExperimentalOptionsTranslator$JsonPatch;
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist applyJsonPatches(Lorg/json/JSONObject;Ljava/util/List;)Lorg/json/JSONObject;
    .registers 6
    .param p0, "jsonOptions"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List<",
            "Landroid/net/connectivity/org/chromium/net/ExperimentalOptionsTranslator$JsonPatch;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 254
    .local p1, "patches":Ljava/util/List;, "Ljava/util/List<Landroid/net/connectivity/org/chromium/net/ExperimentalOptionsTranslator$JsonPatch;>;"
    if-nez p0, :cond_a

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 255
    const/4 v0, 0x0

    return-object v0

    .line 258
    :cond_a
    if-nez p0, :cond_12

    .line 259
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object p0, v0

    .line 262
    :cond_12
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/connectivity/org/chromium/net/ExperimentalOptionsTranslator$JsonPatch;

    .line 264
    .local v1, "patch":Landroid/net/connectivity/org/chromium/net/ExperimentalOptionsTranslator$JsonPatch;
    :try_start_22
    invoke-interface {v1, p0}, Landroid/net/connectivity/org/chromium/net/ExperimentalOptionsTranslator$JsonPatch;->applyTo(Lorg/json/JSONObject;)V
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_22 .. :try_end_25} :catch_27

    .line 267
    nop

    .line 268
    .end local v1    # "patch":Landroid/net/connectivity/org/chromium/net/ExperimentalOptionsTranslator$JsonPatch;
    goto :goto_16

    .line 265
    .restart local v1    # "patch":Landroid/net/connectivity/org/chromium/net/ExperimentalOptionsTranslator$JsonPatch;
    :catch_27
    move-exception v0

    .line 266
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unable to apply JSON patch!"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 270
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "patch":Landroid/net/connectivity/org/chromium/net/ExperimentalOptionsTranslator$JsonPatch;
    :cond_30
    return-object p0
.end method

.method static blacklist connectionMigrationOptionsToJson(Lorg/json/JSONObject;Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;)V
    .registers 8
    .param p0, "experimentalOptions"    # Lorg/json/JSONObject;
    .param p1, "options"    # Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 22
    const-string v0, "QUIC"

    invoke-static {p0, v0}, Landroid/net/connectivity/org/chromium/net/ExperimentalOptionsTranslator;->createDefaultIfAbsent(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 24
    .local v0, "quicOptions":Lorg/json/JSONObject;
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;->getEnableDefaultNetworkMigration()Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "migrate_sessions_on_network_change_v2"

    if-eqz v1, :cond_16

    .line 25
    nop

    .line 27
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;->getEnableDefaultNetworkMigration()Ljava/lang/Boolean;

    move-result-object v1

    .line 25
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    :cond_16
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;->getAllowServerMigration()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 30
    const-string v1, "allow_server_migration"

    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;->getAllowServerMigration()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    :cond_25
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;->getMigrateIdleConnections()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_34

    .line 33
    const-string v1, "migrate_idle_sessions"

    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;->getMigrateIdleConnections()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    :cond_34
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;->getIdleMigrationPeriodSeconds()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_44

    .line 36
    nop

    .line 38
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;->getIdleMigrationPeriodSeconds()Ljava/lang/Long;

    move-result-object v1

    .line 36
    const-string v3, "idle_session_migration_period_seconds"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    :cond_44
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;->getRetryPreHandshakeErrorsOnAlternateNetwork()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_54

    .line 41
    nop

    .line 43
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;->getRetryPreHandshakeErrorsOnAlternateNetwork()Ljava/lang/Boolean;

    move-result-object v1

    .line 41
    const-string v3, "retry_on_alternate_network_before_handshake"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    :cond_54
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;->getMaxTimeOnNonDefaultNetworkSeconds()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_64

    .line 46
    nop

    .line 48
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;->getMaxTimeOnNonDefaultNetworkSeconds()Ljava/lang/Long;

    move-result-object v1

    .line 46
    const-string v3, "max_time_on_non_default_network_seconds"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    :cond_64
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;->getMaxPathDegradingEagerMigrationsCount()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_74

    .line 51
    nop

    .line 53
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;->getMaxPathDegradingEagerMigrationsCount()Ljava/lang/Integer;

    move-result-object v1

    .line 51
    const-string v3, "max_migrations_to_non_default_network_on_path_degrading"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    :cond_74
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;->getMaxWriteErrorEagerMigrationsCount()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_84

    .line 56
    nop

    .line 58
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;->getMaxWriteErrorEagerMigrationsCount()Ljava/lang/Integer;

    move-result-object v1

    .line 56
    const-string v3, "max_migrations_to_non_default_network_on_write_error"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    :cond_84
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;->getEnablePathDegradationMigration()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_c4

    .line 61
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;->getEnablePathDegradationMigration()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 62
    .local v1, "pathDegradationValue":Z
    const-string v3, "allow_port_migration"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 64
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;->getAllowNonDefaultNetworkUsage()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_c4

    .line 65
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;->getAllowNonDefaultNetworkUsage()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 66
    .local v3, "nonDefaultNetworkValue":Z
    if-nez v1, :cond_b2

    if-nez v3, :cond_aa

    goto :goto_b2

    .line 68
    :cond_aa
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unable to turn on non-default network usage without path degradation migration!"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 71
    :cond_b2
    :goto_b2
    const-string v4, "migrate_sessions_early_v2"

    if-eqz v1, :cond_c0

    if-eqz v3, :cond_c0

    .line 72
    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 77
    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_c4

    .line 79
    :cond_c0
    const/4 v2, 0x0

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 83
    .end local v1    # "pathDegradationValue":Z
    .end local v3    # "nonDefaultNetworkValue":Z
    :cond_c4
    :goto_c4
    return-void
.end method

.method private static blacklist createDefaultIfAbsent(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 7
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;

    .line 274
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 275
    .local v0, "object":Lorg/json/JSONObject;
    if-nez v0, :cond_30

    .line 276
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    move-object v0, v1

    .line 278
    :try_start_c
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_f} :catch_10

    .line 282
    goto :goto_30

    .line 279
    :catch_10
    move-exception v1

    .line 280
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed adding a default object for key ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 285
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_30
    :goto_30
    return-object v0
.end method

.method static blacklist dnsOptionsToJson(Lorg/json/JSONObject;Landroid/net/connectivity/org/chromium/net/DnsOptions;)V
    .registers 7
    .param p0, "experimentalOptions"    # Lorg/json/JSONObject;
    .param p1, "options"    # Landroid/net/connectivity/org/chromium/net/DnsOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 87
    const-string v0, "AsyncDNS"

    invoke-static {p0, v0}, Landroid/net/connectivity/org/chromium/net/ExperimentalOptionsTranslator;->createDefaultIfAbsent(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 89
    .local v0, "asyncDnsOptions":Lorg/json/JSONObject;
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/DnsOptions;->getUseBuiltInDnsResolver()Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "enable"

    if-eqz v1, :cond_15

    .line 90
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/DnsOptions;->getUseBuiltInDnsResolver()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    :cond_15
    const-string v1, "StaleDNS"

    invoke-static {p0, v1}, Landroid/net/connectivity/org/chromium/net/ExperimentalOptionsTranslator;->createDefaultIfAbsent(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 95
    .local v1, "staleDnsOptions":Lorg/json/JSONObject;
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/DnsOptions;->getEnableStaleDns()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_28

    .line 96
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/DnsOptions;->getEnableStaleDns()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    :cond_28
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/DnsOptions;->getPersistHostCache()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 100
    const-string v2, "persist_to_disk"

    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/DnsOptions;->getPersistHostCache()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    :cond_37
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/DnsOptions;->getPersistHostCachePeriodMillis()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_46

    .line 104
    const-string v2, "persist_delay_ms"

    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/DnsOptions;->getPersistHostCachePeriodMillis()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    :cond_46
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/DnsOptions;->getStaleDnsOptions()Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions;

    move-result-object v2

    if-eqz v2, :cond_8f

    .line 108
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/DnsOptions;->getStaleDnsOptions()Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions;

    move-result-object v2

    .line 110
    .local v2, "staleDnsOptionsJava":Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions;
    invoke-virtual {v2}, Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions;->getAllowCrossNetworkUsage()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_60

    .line 111
    nop

    .line 112
    invoke-virtual {v2}, Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions;->getAllowCrossNetworkUsage()Ljava/lang/Boolean;

    move-result-object v3

    .line 111
    const-string v4, "allow_other_network"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    :cond_60
    invoke-virtual {v2}, Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions;->getFreshLookupTimeoutMillis()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_6f

    .line 116
    const-string v3, "delay_ms"

    invoke-virtual {v2}, Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions;->getFreshLookupTimeoutMillis()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    :cond_6f
    invoke-virtual {v2}, Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions;->getUseStaleOnNameNotResolved()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_7f

    .line 120
    nop

    .line 122
    invoke-virtual {v2}, Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions;->getUseStaleOnNameNotResolved()Ljava/lang/Boolean;

    move-result-object v3

    .line 120
    const-string v4, "use_stale_on_name_not_resolved"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    :cond_7f
    invoke-virtual {v2}, Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions;->getMaxExpiredDelayMillis()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_8f

    .line 126
    nop

    .line 127
    invoke-virtual {v2}, Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions;->getMaxExpiredDelayMillis()Ljava/lang/Long;

    move-result-object v3

    .line 126
    const-string v4, "max_expired_time_ms"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    .end local v2    # "staleDnsOptionsJava":Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions;
    :cond_8f
    const-string v2, "QUIC"

    invoke-static {p0, v2}, Landroid/net/connectivity/org/chromium/net/ExperimentalOptionsTranslator;->createDefaultIfAbsent(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 132
    .local v2, "quicOptions":Lorg/json/JSONObject;
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/DnsOptions;->getPreestablishConnectionsToStaleDnsResults()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_a5

    .line 133
    nop

    .line 135
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/DnsOptions;->getPreestablishConnectionsToStaleDnsResults()Ljava/lang/Boolean;

    move-result-object v3

    .line 133
    const-string v4, "race_stale_dns_on_connection"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    :cond_a5
    return-void
.end method

.method static blacklist quicOptionsToJson(Lorg/json/JSONObject;Landroid/net/connectivity/org/chromium/net/QuicOptions;)V
    .registers 6
    .param p0, "experimentalOptions"    # Lorg/json/JSONObject;
    .param p1, "options"    # Landroid/net/connectivity/org/chromium/net/QuicOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 141
    const-string v0, "QUIC"

    invoke-static {p0, v0}, Landroid/net/connectivity/org/chromium/net/ExperimentalOptionsTranslator;->createDefaultIfAbsent(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 146
    .local v0, "quicOptions":Lorg/json/JSONObject;
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/QuicOptions;->getQuicHostAllowlist()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    const-string v2, ","

    if-nez v1, :cond_1f

    .line 147
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/QuicOptions;->getQuicHostAllowlist()Ljava/util/Set;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "host_whitelist"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    :cond_1f
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/QuicOptions;->getEnabledQuicVersions()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_36

    .line 150
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/QuicOptions;->getEnabledQuicVersions()Ljava/util/Set;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "quic_version"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    :cond_36
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/QuicOptions;->getConnectionOptions()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4d

    .line 153
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/QuicOptions;->getConnectionOptions()Ljava/util/Set;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "connection_options"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    :cond_4d
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/QuicOptions;->getClientConnectionOptions()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_65

    .line 156
    nop

    .line 158
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/QuicOptions;->getClientConnectionOptions()Ljava/util/Set;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 156
    const-string v3, "client_connection_options"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    :cond_65
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/QuicOptions;->getExtraQuicheFlags()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7c

    .line 161
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/QuicOptions;->getExtraQuicheFlags()Ljava/util/Set;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "set_quic_flags"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    :cond_7c
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/QuicOptions;->getInMemoryServerConfigsCacheSize()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_8c

    .line 165
    nop

    .line 167
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/QuicOptions;->getInMemoryServerConfigsCacheSize()Ljava/lang/Integer;

    move-result-object v1

    .line 165
    const-string v2, "max_server_configs_stored_in_properties"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    :cond_8c
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/QuicOptions;->getHandshakeUserAgent()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9b

    .line 171
    const-string v1, "user_agent_id"

    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/QuicOptions;->getHandshakeUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    :cond_9b
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/QuicOptions;->getRetryWithoutAltSvcOnQuicErrors()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_ab

    .line 175
    nop

    .line 177
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/QuicOptions;->getRetryWithoutAltSvcOnQuicErrors()Ljava/lang/Boolean;

    move-result-object v1

    .line 175
    const-string v2, "retry_without_alt_svc_on_quic_errors"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    :cond_ab
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/QuicOptions;->getEnableTlsZeroRtt()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_c0

    .line 181
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/QuicOptions;->getEnableTlsZeroRtt()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "disable_tls_zero_rtt"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 184
    :cond_c0
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/QuicOptions;->getPreCryptoHandshakeIdleTimeoutSeconds()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_d0

    .line 185
    nop

    .line 187
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/QuicOptions;->getPreCryptoHandshakeIdleTimeoutSeconds()Ljava/lang/Long;

    move-result-object v1

    .line 185
    const-string v2, "max_idle_time_before_crypto_handshake_seconds"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    :cond_d0
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/QuicOptions;->getCryptoHandshakeTimeoutSeconds()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_e0

    .line 191
    nop

    .line 193
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/QuicOptions;->getCryptoHandshakeTimeoutSeconds()Ljava/lang/Long;

    move-result-object v1

    .line 191
    const-string v2, "max_time_before_crypto_handshake_seconds"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    :cond_e0
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/QuicOptions;->getIdleConnectionTimeoutSeconds()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_f0

    .line 197
    nop

    .line 198
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/QuicOptions;->getIdleConnectionTimeoutSeconds()Ljava/lang/Long;

    move-result-object v1

    .line 197
    const-string v2, "idle_connection_timeout_seconds"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    :cond_f0
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/QuicOptions;->getRetransmittableOnWireTimeoutMillis()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_100

    .line 202
    nop

    .line 204
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/QuicOptions;->getRetransmittableOnWireTimeoutMillis()Ljava/lang/Long;

    move-result-object v1

    .line 202
    const-string v2, "retransmittable_on_wire_timeout_milliseconds"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 207
    :cond_100
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/QuicOptions;->getCloseSessionsOnIpChange()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_10f

    .line 208
    const-string v1, "close_sessions_on_ip_change"

    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/QuicOptions;->getCloseSessionsOnIpChange()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    :cond_10f
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/QuicOptions;->getGoawaySessionsOnIpChange()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_11e

    .line 212
    const-string v1, "goaway_sessions_on_ip_change"

    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/QuicOptions;->getGoawaySessionsOnIpChange()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 215
    :cond_11e
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/QuicOptions;->getInitialBrokenServicePeriodSeconds()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_12e

    .line 216
    nop

    .line 218
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/QuicOptions;->getInitialBrokenServicePeriodSeconds()Ljava/lang/Long;

    move-result-object v1

    .line 216
    const-string v2, "initial_delay_for_broken_alternative_service_seconds"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    :cond_12e
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/QuicOptions;->getIncreaseBrokenServicePeriodExponentially()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_13e

    .line 222
    nop

    .line 224
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/QuicOptions;->getIncreaseBrokenServicePeriodExponentially()Ljava/lang/Boolean;

    move-result-object v1

    .line 222
    const-string v2, "exponential_backoff_on_initial_delay"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 227
    :cond_13e
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/QuicOptions;->getDelayJobsWithAvailableSpdySession()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_14e

    .line 228
    nop

    .line 230
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/QuicOptions;->getDelayJobsWithAvailableSpdySession()Ljava/lang/Boolean;

    move-result-object v1

    .line 228
    const-string v2, "delay_main_job_with_available_spdy_session"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 232
    :cond_14e
    return-void
.end method

.method static blacklist toJsonExperimentalOptions(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 4
    .param p0, "jsonString"    # Ljava/lang/String;

    .line 235
    if-eqz p0, :cond_18

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_18

    .line 239
    :cond_9
    :try_start_9
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_e} :catch_f

    return-object v0

    .line 240
    :catch_f
    move-exception v0

    .line 241
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Experimental options parsing failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 236
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_18
    :goto_18
    const/4 v0, 0x0

    return-object v0
.end method
