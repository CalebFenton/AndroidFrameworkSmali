.class public Landroid/net/http/CronetEngineBuilderWrapper;
.super Landroid/net/http/IHttpEngineBuilder;
.source "CronetEngineBuilderWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/http/CronetEngineBuilderWrapper$ExperimentalOptionsPatch;
    }
.end annotation


# instance fields
.field private final blacklist backend:Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;

.field private final blacklist mExperimentalOptionsPatches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/http/CronetEngineBuilderWrapper$ExperimentalOptionsPatch;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mParsedExperimentalOptions:Lorg/json/JSONObject;


# direct methods
.method public constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;)V
    .registers 3
    .param p1, "backend"    # Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;

    .line 42
    invoke-direct {p0}, Landroid/net/http/IHttpEngineBuilder;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/http/CronetEngineBuilderWrapper;->mExperimentalOptionsPatches:Ljava/util/List;

    .line 39
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Landroid/net/http/CronetEngineBuilderWrapper;->mParsedExperimentalOptions:Lorg/json/JSONObject;

    .line 43
    iput-object p1, p0, Landroid/net/http/CronetEngineBuilderWrapper;->backend:Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;

    .line 44
    return-void
.end method

.method private static blacklist createDefaultIfAbsent(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 7
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;

    .line 111
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 112
    .local v0, "object":Lorg/json/JSONObject;
    if-nez v0, :cond_30

    .line 113
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    move-object v0, v1

    .line 115
    :try_start_c
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_f} :catch_10

    .line 119
    goto :goto_30

    .line 116
    :catch_10
    move-exception v1

    .line 117
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

    .line 122
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_30
    :goto_30
    return-object v0
.end method

.method static synthetic blacklist lambda$setConnectionMigrationOptions$2(Landroid/net/http/ConnectionMigrationOptions;Lorg/json/JSONObject;)V
    .registers 9
    .param p0, "options"    # Landroid/net/http/ConnectionMigrationOptions;
    .param p1, "experimentalOptions"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 244
    const-string v0, "QUIC"

    invoke-static {p1, v0}, Landroid/net/http/CronetEngineBuilderWrapper;->createDefaultIfAbsent(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 246
    .local v0, "quicOptions":Lorg/json/JSONObject;
    invoke-virtual {p0}, Landroid/net/http/ConnectionMigrationOptions;->getDefaultNetworkMigration()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1d

    .line 247
    nop

    .line 249
    invoke-virtual {p0}, Landroid/net/http/ConnectionMigrationOptions;->getDefaultNetworkMigration()I

    move-result v1

    if-ne v1, v3, :cond_17

    move v1, v3

    goto :goto_18

    :cond_17
    move v1, v2

    .line 247
    :goto_18
    const-string v4, "migrate_sessions_on_network_change_v2"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 252
    :cond_1d
    invoke-virtual {p0}, Landroid/net/http/ConnectionMigrationOptions;->getPathDegradationMigration()I

    move-result v1

    if-eqz v1, :cond_60

    .line 253
    nop

    .line 254
    invoke-virtual {p0}, Landroid/net/http/ConnectionMigrationOptions;->getPathDegradationMigration()I

    move-result v1

    if-ne v1, v3, :cond_2c

    move v1, v3

    goto :goto_2d

    :cond_2c
    move v1, v2

    .line 255
    .local v1, "pathDegradationValue":Z
    :goto_2d
    const/4 v4, 0x0

    .line 257
    .local v4, "skipPortMigrationFlag":Z
    invoke-virtual {p0}, Landroid/net/http/ConnectionMigrationOptions;->getAllowNonDefaultNetworkUsage()I

    move-result v5

    if-eqz v5, :cond_59

    .line 259
    nop

    .line 260
    invoke-virtual {p0}, Landroid/net/http/ConnectionMigrationOptions;->getAllowNonDefaultNetworkUsage()I

    move-result v5

    if-ne v5, v3, :cond_3d

    move v5, v3

    goto :goto_3e

    :cond_3d
    move v5, v2

    .line 262
    .local v5, "nonDefaultNetworkValue":Z
    :goto_3e
    if-nez v1, :cond_4b

    if-nez v5, :cond_43

    goto :goto_4b

    .line 264
    :cond_43
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unable to turn on non-default network usage without path degradation migration!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 267
    :cond_4b
    :goto_4b
    const-string v6, "migrate_sessions_early_v2"

    if-eqz v1, :cond_56

    if-eqz v5, :cond_56

    .line 271
    invoke-virtual {v0, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 272
    const/4 v4, 0x1

    goto :goto_59

    .line 274
    :cond_56
    invoke-virtual {v0, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 278
    .end local v5    # "nonDefaultNetworkValue":Z
    :cond_59
    :goto_59
    if-nez v4, :cond_60

    .line 279
    const-string v2, "allow_port_migration"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 282
    .end local v1    # "pathDegradationValue":Z
    .end local v4    # "skipPortMigrationFlag":Z
    :cond_60
    return-void
.end method

.method static synthetic blacklist lambda$setDnsOptions$1(Landroid/net/http/DnsOptions;Lorg/json/JSONObject;)V
    .registers 10
    .param p0, "options"    # Landroid/net/http/DnsOptions;
    .param p1, "experimentalOptions"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 165
    nop

    .line 166
    const-string v0, "AsyncDNS"

    invoke-static {p1, v0}, Landroid/net/http/CronetEngineBuilderWrapper;->createDefaultIfAbsent(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 168
    .local v0, "asyncDnsOptions":Lorg/json/JSONObject;
    invoke-virtual {p0}, Landroid/net/http/DnsOptions;->getUseHttpStackDnsResolver()I

    move-result v1

    const-string v2, "enable"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1e

    .line 169
    nop

    .line 171
    invoke-virtual {p0}, Landroid/net/http/DnsOptions;->getUseHttpStackDnsResolver()I

    move-result v1

    if-ne v1, v4, :cond_1a

    move v1, v4

    goto :goto_1b

    :cond_1a
    move v1, v3

    .line 169
    :goto_1b
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 174
    :cond_1e
    nop

    .line 175
    const-string v1, "StaleDNS"

    invoke-static {p1, v1}, Landroid/net/http/CronetEngineBuilderWrapper;->createDefaultIfAbsent(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 177
    .local v1, "staleDnsOptions":Lorg/json/JSONObject;
    invoke-virtual {p0}, Landroid/net/http/DnsOptions;->getStaleDns()I

    move-result v5

    if-eqz v5, :cond_37

    .line 178
    invoke-virtual {p0}, Landroid/net/http/DnsOptions;->getStaleDns()I

    move-result v5

    if-ne v5, v4, :cond_33

    move v5, v4

    goto :goto_34

    :cond_33
    move v5, v3

    :goto_34
    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 181
    :cond_37
    invoke-virtual {p0}, Landroid/net/http/DnsOptions;->getPersistHostCache()I

    move-result v2

    if-eqz v2, :cond_4c

    .line 182
    nop

    .line 184
    invoke-virtual {p0}, Landroid/net/http/DnsOptions;->getPersistHostCache()I

    move-result v2

    if-ne v2, v4, :cond_46

    move v2, v4

    goto :goto_47

    :cond_46
    move v2, v3

    .line 182
    :goto_47
    const-string v5, "persist_to_disk"

    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 187
    :cond_4c
    invoke-virtual {p0}, Landroid/net/http/DnsOptions;->getPersistHostCachePeriod()Ljava/time/Duration;

    move-result-object v2

    if-eqz v2, :cond_60

    .line 188
    nop

    .line 189
    invoke-virtual {p0}, Landroid/net/http/DnsOptions;->getPersistHostCachePeriod()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Duration;->toMillis()J

    move-result-wide v5

    .line 188
    const-string v2, "persist_delay_ms"

    invoke-virtual {v1, v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 192
    :cond_60
    invoke-virtual {p0}, Landroid/net/http/DnsOptions;->getStaleDnsOptions()Landroid/net/http/DnsOptions$StaleDnsOptions;

    move-result-object v2

    if-eqz v2, :cond_bd

    .line 193
    nop

    .line 194
    invoke-virtual {p0}, Landroid/net/http/DnsOptions;->getStaleDnsOptions()Landroid/net/http/DnsOptions$StaleDnsOptions;

    move-result-object v2

    .line 196
    .local v2, "staleDnsOptionsJava":Landroid/net/http/DnsOptions$StaleDnsOptions;
    invoke-virtual {v2}, Landroid/net/http/DnsOptions$StaleDnsOptions;->getAllowCrossNetworkUsage()I

    move-result v5

    if-eqz v5, :cond_80

    .line 198
    nop

    .line 200
    invoke-virtual {v2}, Landroid/net/http/DnsOptions$StaleDnsOptions;->getAllowCrossNetworkUsage()I

    move-result v5

    if-ne v5, v4, :cond_7a

    move v5, v4

    goto :goto_7b

    :cond_7a
    move v5, v3

    .line 198
    :goto_7b
    const-string v6, "allow_other_network"

    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 204
    :cond_80
    invoke-virtual {v2}, Landroid/net/http/DnsOptions$StaleDnsOptions;->getFreshLookupTimeout()Ljava/time/Duration;

    move-result-object v5

    if-eqz v5, :cond_94

    .line 205
    nop

    .line 207
    invoke-virtual {v2}, Landroid/net/http/DnsOptions$StaleDnsOptions;->getFreshLookupTimeout()Ljava/time/Duration;

    move-result-object v5

    invoke-virtual {v5}, Ljava/time/Duration;->toMillis()J

    move-result-wide v5

    .line 205
    const-string v7, "delay_ms"

    invoke-virtual {v1, v7, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 210
    :cond_94
    invoke-virtual {v2}, Landroid/net/http/DnsOptions$StaleDnsOptions;->getUseStaleOnNameNotResolved()I

    move-result v5

    if-eqz v5, :cond_a9

    .line 212
    nop

    .line 214
    invoke-virtual {v2}, Landroid/net/http/DnsOptions$StaleDnsOptions;->getUseStaleOnNameNotResolved()I

    move-result v5

    if-ne v5, v4, :cond_a3

    move v5, v4

    goto :goto_a4

    :cond_a3
    move v5, v3

    .line 212
    :goto_a4
    const-string v6, "use_stale_on_name_not_resolved"

    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 218
    :cond_a9
    invoke-virtual {v2}, Landroid/net/http/DnsOptions$StaleDnsOptions;->getMaxExpiredDelay()Ljava/time/Duration;

    move-result-object v5

    if-eqz v5, :cond_bd

    .line 219
    nop

    .line 221
    invoke-virtual {v2}, Landroid/net/http/DnsOptions$StaleDnsOptions;->getMaxExpiredDelay()Ljava/time/Duration;

    move-result-object v5

    invoke-virtual {v5}, Ljava/time/Duration;->toMillis()J

    move-result-wide v5

    .line 219
    const-string v7, "max_expired_time_ms"

    invoke-virtual {v1, v7, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 225
    .end local v2    # "staleDnsOptionsJava":Landroid/net/http/DnsOptions$StaleDnsOptions;
    :cond_bd
    const-string v2, "QUIC"

    invoke-static {p1, v2}, Landroid/net/http/CronetEngineBuilderWrapper;->createDefaultIfAbsent(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 227
    .local v2, "quicOptions":Lorg/json/JSONObject;
    invoke-virtual {p0}, Landroid/net/http/DnsOptions;->getPreestablishConnectionsToStaleDnsResults()I

    move-result v5

    if-eqz v5, :cond_d6

    .line 229
    nop

    .line 231
    invoke-virtual {p0}, Landroid/net/http/DnsOptions;->getPreestablishConnectionsToStaleDnsResults()I

    move-result v5

    if-ne v5, v4, :cond_d1

    move v3, v4

    .line 229
    :cond_d1
    const-string v4, "race_stale_dns_on_connection"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 234
    :cond_d6
    return-void
.end method

.method static synthetic blacklist lambda$setQuicOptions$0(Landroid/net/http/QuicOptions;Lorg/json/JSONObject;)V
    .registers 6
    .param p0, "options"    # Landroid/net/http/QuicOptions;
    .param p1, "experimentalOptions"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 134
    const-string v0, "QUIC"

    invoke-static {p1, v0}, Landroid/net/http/CronetEngineBuilderWrapper;->createDefaultIfAbsent(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 136
    .local v0, "quicOptions":Lorg/json/JSONObject;
    invoke-virtual {p0}, Landroid/net/http/QuicOptions;->getAllowedQuicHosts()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_20

    .line 137
    nop

    .line 138
    invoke-virtual {p0}, Landroid/net/http/QuicOptions;->getAllowedQuicHosts()Ljava/util/Set;

    move-result-object v1

    const-string v2, ","

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 137
    const-string v2, "host_whitelist"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    :cond_20
    invoke-virtual {p0}, Landroid/net/http/QuicOptions;->hasInMemoryServerConfigsCacheSize()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 142
    nop

    .line 144
    invoke-virtual {p0}, Landroid/net/http/QuicOptions;->getInMemoryServerConfigsCacheSize()I

    move-result v1

    .line 142
    const-string v2, "max_server_configs_stored_in_properties"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 147
    :cond_30
    invoke-virtual {p0}, Landroid/net/http/QuicOptions;->getHandshakeUserAgent()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3f

    .line 148
    const-string v1, "user_agent_id"

    invoke-virtual {p0}, Landroid/net/http/QuicOptions;->getHandshakeUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    :cond_3f
    invoke-virtual {p0}, Landroid/net/http/QuicOptions;->getIdleConnectionTimeout()Ljava/time/Duration;

    move-result-object v1

    if-eqz v1, :cond_53

    .line 152
    nop

    .line 154
    invoke-virtual {p0}, Landroid/net/http/QuicOptions;->getIdleConnectionTimeout()Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Duration;->toSeconds()J

    move-result-wide v1

    .line 152
    const-string v3, "idle_connection_timeout_seconds"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 156
    :cond_53
    return-void
.end method


# virtual methods
.method public blacklist addPublicKeyPins(Ljava/lang/String;Ljava/util/Set;ZLjava/time/Instant;)Landroid/net/http/IHttpEngineBuilder;
    .registers 7
    .param p1, "hostName"    # Ljava/lang/String;
    .param p3, "includeSubdomains"    # Z
    .param p4, "expirationInstant"    # Ljava/time/Instant;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "[B>;Z",
            "Ljava/time/Instant;",
            ")",
            "Landroid/net/http/IHttpEngineBuilder;"
        }
    .end annotation

    .line 99
    .local p2, "pinsSha256":Ljava/util/Set;, "Ljava/util/Set<[B>;"
    iget-object v0, p0, Landroid/net/http/CronetEngineBuilderWrapper;->backend:Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;

    .line 100
    invoke-static {p4}, Ljava/util/Date;->from(Ljava/time/Instant;)Ljava/util/Date;

    move-result-object v1

    .line 99
    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;->addPublicKeyPins(Ljava/lang/String;Ljava/util/Set;ZLjava/util/Date;)Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;

    .line 101
    return-object p0
.end method

.method public blacklist addQuicHint(Ljava/lang/String;II)Landroid/net/http/IHttpEngineBuilder;
    .registers 5
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "alternatePort"    # I

    .line 89
    iget-object v0, p0, Landroid/net/http/CronetEngineBuilderWrapper;->backend:Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;->addQuicHint(Ljava/lang/String;II)Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;

    .line 90
    return-object p0
.end method

.method public blacklist build()Landroid/net/http/HttpEngine;
    .registers 5

    .line 293
    iget-object v0, p0, Landroid/net/http/CronetEngineBuilderWrapper;->mExperimentalOptionsPatches:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/http/CronetEngineBuilderWrapper$ExperimentalOptionsPatch;

    .line 295
    .local v1, "patch":Landroid/net/http/CronetEngineBuilderWrapper$ExperimentalOptionsPatch;
    :try_start_12
    iget-object v2, p0, Landroid/net/http/CronetEngineBuilderWrapper;->mParsedExperimentalOptions:Lorg/json/JSONObject;

    invoke-interface {v1, v2}, Landroid/net/http/CronetEngineBuilderWrapper$ExperimentalOptionsPatch;->applyTo(Lorg/json/JSONObject;)V
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_17} :catch_19

    .line 298
    nop

    .line 299
    .end local v1    # "patch":Landroid/net/http/CronetEngineBuilderWrapper$ExperimentalOptionsPatch;
    goto :goto_6

    .line 296
    .restart local v1    # "patch":Landroid/net/http/CronetEngineBuilderWrapper$ExperimentalOptionsPatch;
    :catch_19
    move-exception v0

    .line 297
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unable to apply JSON patch!"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 300
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "patch":Landroid/net/http/CronetEngineBuilderWrapper$ExperimentalOptionsPatch;
    :cond_22
    iget-object v0, p0, Landroid/net/http/CronetEngineBuilderWrapper;->backend:Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;

    iget-object v1, p0, Landroid/net/http/CronetEngineBuilderWrapper;->mParsedExperimentalOptions:Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;->setExperimentalOptions(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;

    .line 301
    new-instance v0, Landroid/net/http/CronetEngineWrapper;

    iget-object v1, p0, Landroid/net/http/CronetEngineBuilderWrapper;->backend:Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;->build()Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/http/CronetEngineWrapper;-><init>(Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;)V

    return-object v0
.end method

.method public blacklist getDefaultUserAgent()Ljava/lang/String;
    .registers 2

    .line 48
    iget-object v0, p0, Landroid/net/http/CronetEngineBuilderWrapper;->backend:Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;->getDefaultUserAgent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setConnectionMigrationOptions(Landroid/net/http/ConnectionMigrationOptions;)Landroid/net/http/IHttpEngineBuilder;
    .registers 4
    .param p1, "options"    # Landroid/net/http/ConnectionMigrationOptions;

    .line 242
    iget-object v0, p0, Landroid/net/http/CronetEngineBuilderWrapper;->mExperimentalOptionsPatches:Ljava/util/List;

    new-instance v1, Landroid/net/http/CronetEngineBuilderWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Landroid/net/http/CronetEngineBuilderWrapper$$ExternalSyntheticLambda1;-><init>(Landroid/net/http/ConnectionMigrationOptions;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    return-object p0
.end method

.method public blacklist setDnsOptions(Landroid/net/http/DnsOptions;)Landroid/net/http/IHttpEngineBuilder;
    .registers 4
    .param p1, "options"    # Landroid/net/http/DnsOptions;

    .line 163
    iget-object v0, p0, Landroid/net/http/CronetEngineBuilderWrapper;->mExperimentalOptionsPatches:Ljava/util/List;

    new-instance v1, Landroid/net/http/CronetEngineBuilderWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Landroid/net/http/CronetEngineBuilderWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/net/http/DnsOptions;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    return-object p0
.end method

.method public blacklist setEnableBrotli(Z)Landroid/net/http/IHttpEngineBuilder;
    .registers 3
    .param p1, "value"    # Z

    .line 77
    iget-object v0, p0, Landroid/net/http/CronetEngineBuilderWrapper;->backend:Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;->enableBrotli(Z)Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;

    .line 78
    return-object p0
.end method

.method public blacklist setEnableHttp2(Z)Landroid/net/http/IHttpEngineBuilder;
    .registers 3
    .param p1, "value"    # Z

    .line 71
    iget-object v0, p0, Landroid/net/http/CronetEngineBuilderWrapper;->backend:Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;->enableHttp2(Z)Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;

    .line 72
    return-object p0
.end method

.method public blacklist setEnableHttpCache(IJ)Landroid/net/http/IHttpEngineBuilder;
    .registers 5
    .param p1, "cacheMode"    # I
    .param p2, "maxSize"    # J

    .line 83
    iget-object v0, p0, Landroid/net/http/CronetEngineBuilderWrapper;->backend:Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;->enableHttpCache(IJ)Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;

    .line 84
    return-object p0
.end method

.method public blacklist setEnablePublicKeyPinningBypassForLocalTrustAnchors(Z)Landroid/net/http/IHttpEngineBuilder;
    .registers 3
    .param p1, "value"    # Z

    .line 106
    iget-object v0, p0, Landroid/net/http/CronetEngineBuilderWrapper;->backend:Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;->enablePublicKeyPinningBypassForLocalTrustAnchors(Z)Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;

    .line 107
    return-object p0
.end method

.method public blacklist setEnableQuic(Z)Landroid/net/http/IHttpEngineBuilder;
    .registers 3
    .param p1, "value"    # Z

    .line 65
    iget-object v0, p0, Landroid/net/http/CronetEngineBuilderWrapper;->backend:Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;->enableQuic(Z)Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;

    .line 66
    return-object p0
.end method

.method public blacklist setQuicOptions(Landroid/net/http/QuicOptions;)Landroid/net/http/IHttpEngineBuilder;
    .registers 4
    .param p1, "options"    # Landroid/net/http/QuicOptions;

    .line 132
    iget-object v0, p0, Landroid/net/http/CronetEngineBuilderWrapper;->mExperimentalOptionsPatches:Ljava/util/List;

    new-instance v1, Landroid/net/http/CronetEngineBuilderWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Landroid/net/http/CronetEngineBuilderWrapper$$ExternalSyntheticLambda2;-><init>(Landroid/net/http/QuicOptions;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    return-object p0
.end method

.method public blacklist setStoragePath(Ljava/lang/String;)Landroid/net/http/IHttpEngineBuilder;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 59
    iget-object v0, p0, Landroid/net/http/CronetEngineBuilderWrapper;->backend:Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;->setStoragePath(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;

    .line 60
    return-object p0
.end method

.method public blacklist setUserAgent(Ljava/lang/String;)Landroid/net/http/IHttpEngineBuilder;
    .registers 3
    .param p1, "userAgent"    # Ljava/lang/String;

    .line 53
    iget-object v0, p0, Landroid/net/http/CronetEngineBuilderWrapper;->backend:Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;->setUserAgent(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;

    .line 54
    return-object p0
.end method
