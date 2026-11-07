.class public Landroid/net/http/HttpEngine$Builder;
.super Ljava/lang/Object;
.source "HttpEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/http/HttpEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field public static final whitelist HTTP_CACHE_DISABLED:I = 0x0

.field public static final whitelist HTTP_CACHE_DISK:I = 0x3

.field public static final whitelist HTTP_CACHE_DISK_NO_HTTP:I = 0x2

.field public static final whitelist HTTP_CACHE_IN_MEMORY:I = 0x1


# instance fields
.field protected final blacklist mBuilderDelegate:Landroid/net/http/IHttpEngineBuilder;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 127
    invoke-static {p1}, Landroid/net/http/HttpEngine$Builder;->createBuilderDelegate(Landroid/content/Context;)Landroid/net/http/IHttpEngineBuilder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/http/HttpEngine$Builder;-><init>(Landroid/net/http/IHttpEngineBuilder;)V

    .line 128
    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/http/IHttpEngineBuilder;)V
    .registers 2
    .param p1, "builderDelegate"    # Landroid/net/http/IHttpEngineBuilder;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p1, p0, Landroid/net/http/HttpEngine$Builder;->mBuilderDelegate:Landroid/net/http/IHttpEngineBuilder;

    .line 142
    return-void
.end method

.method private static blacklist createBuilderDelegate(Landroid/content/Context;)Landroid/net/http/IHttpEngineBuilder;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 427
    const-string v0, "HttpEngine#createBuilderDelegate"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 428
    .local v0, "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_6
    new-instance v1, Landroid/net/http/CronetEngineBuilderWrapper;

    new-instance v2, Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;

    new-instance v3, Landroid/net/connectivity/org/chromium/net/impl/NativeCronetEngineBuilderImpl;

    invoke-direct {v3, p0}, Landroid/net/connectivity/org/chromium/net/impl/NativeCronetEngineBuilderImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v3}, Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;-><init>(Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;)V

    invoke-direct {v1, v2}, Landroid/net/http/CronetEngineBuilderWrapper;-><init>(Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;)V
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_1b

    .line 431
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 428
    :cond_1a
    return-object v1

    .line 427
    :catchall_1b
    move-exception v1

    if-eqz v0, :cond_26

    :try_start_1e
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_22

    goto :goto_26

    :catchall_22
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_26
    :goto_26
    throw v1
.end method


# virtual methods
.method public whitelist addPublicKeyPins(Ljava/lang/String;Ljava/util/Set;ZLjava/time/Instant;)Landroid/net/http/HttpEngine$Builder;
    .registers 6
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
            "Landroid/net/http/HttpEngine$Builder;"
        }
    .end annotation

    .line 331
    .local p2, "pinsSha256":Ljava/util/Set;, "Ljava/util/Set<[B>;"
    iget-object v0, p0, Landroid/net/http/HttpEngine$Builder;->mBuilderDelegate:Landroid/net/http/IHttpEngineBuilder;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/net/http/IHttpEngineBuilder;->addPublicKeyPins(Ljava/lang/String;Ljava/util/Set;ZLjava/time/Instant;)Landroid/net/http/IHttpEngineBuilder;

    .line 333
    return-object p0
.end method

.method public whitelist addQuicHint(Ljava/lang/String;II)Landroid/net/http/HttpEngine$Builder;
    .registers 5
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "alternatePort"    # I

    .line 290
    iget-object v0, p0, Landroid/net/http/HttpEngine$Builder;->mBuilderDelegate:Landroid/net/http/IHttpEngineBuilder;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/http/IHttpEngineBuilder;->addQuicHint(Ljava/lang/String;II)Landroid/net/http/IHttpEngineBuilder;

    .line 291
    return-object p0
.end method

.method public whitelist build()Landroid/net/http/HttpEngine;
    .registers 4

    .line 414
    const-string v0, "HttpEngine#build"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 415
    .local v0, "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_6
    iget-object v1, p0, Landroid/net/http/HttpEngine$Builder;->mBuilderDelegate:Landroid/net/http/IHttpEngineBuilder;

    invoke-virtual {v1}, Landroid/net/http/IHttpEngineBuilder;->build()Landroid/net/http/HttpEngine;

    move-result-object v1
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_12

    .line 416
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 415
    :cond_11
    return-object v1

    .line 414
    :catchall_12
    move-exception v1

    if-eqz v0, :cond_1d

    :try_start_15
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_19

    goto :goto_1d

    :catchall_19
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1d
    :goto_1d
    throw v1
.end method

.method public whitelist getDefaultUserAgent()Ljava/lang/String;
    .registers 2

    .line 154
    iget-object v0, p0, Landroid/net/http/HttpEngine$Builder;->mBuilderDelegate:Landroid/net/http/IHttpEngineBuilder;

    invoke-virtual {v0}, Landroid/net/http/IHttpEngineBuilder;->getDefaultUserAgent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setConnectionMigrationOptions(Landroid/net/http/ConnectionMigrationOptions;)Landroid/net/http/HttpEngine$Builder;
    .registers 3
    .param p1, "connectionMigrationOptions"    # Landroid/net/http/ConnectionMigrationOptions;

    .line 403
    iget-object v0, p0, Landroid/net/http/HttpEngine$Builder;->mBuilderDelegate:Landroid/net/http/IHttpEngineBuilder;

    invoke-virtual {v0, p1}, Landroid/net/http/IHttpEngineBuilder;->setConnectionMigrationOptions(Landroid/net/http/ConnectionMigrationOptions;)Landroid/net/http/IHttpEngineBuilder;

    .line 404
    return-object p0
.end method

.method public whitelist setDnsOptions(Landroid/net/http/DnsOptions;)Landroid/net/http/HttpEngine$Builder;
    .registers 3
    .param p1, "dnsOptions"    # Landroid/net/http/DnsOptions;

    .line 385
    iget-object v0, p0, Landroid/net/http/HttpEngine$Builder;->mBuilderDelegate:Landroid/net/http/IHttpEngineBuilder;

    invoke-virtual {v0, p1}, Landroid/net/http/IHttpEngineBuilder;->setDnsOptions(Landroid/net/http/DnsOptions;)Landroid/net/http/IHttpEngineBuilder;

    .line 386
    return-object p0
.end method

.method public whitelist setEnableBrotli(Z)Landroid/net/http/HttpEngine$Builder;
    .registers 3
    .param p1, "value"    # Z

    .line 229
    iget-object v0, p0, Landroid/net/http/HttpEngine$Builder;->mBuilderDelegate:Landroid/net/http/IHttpEngineBuilder;

    invoke-virtual {v0, p1}, Landroid/net/http/IHttpEngineBuilder;->setEnableBrotli(Z)Landroid/net/http/IHttpEngineBuilder;

    .line 230
    return-object p0
.end method

.method public whitelist setEnableHttp2(Z)Landroid/net/http/HttpEngine$Builder;
    .registers 3
    .param p1, "value"    # Z

    .line 214
    iget-object v0, p0, Landroid/net/http/HttpEngine$Builder;->mBuilderDelegate:Landroid/net/http/IHttpEngineBuilder;

    invoke-virtual {v0, p1}, Landroid/net/http/IHttpEngineBuilder;->setEnableHttp2(Z)Landroid/net/http/IHttpEngineBuilder;

    .line 215
    return-object p0
.end method

.method public whitelist setEnableHttpCache(IJ)Landroid/net/http/HttpEngine$Builder;
    .registers 5
    .param p1, "cacheMode"    # I
    .param p2, "maxSize"    # J

    .line 272
    iget-object v0, p0, Landroid/net/http/HttpEngine$Builder;->mBuilderDelegate:Landroid/net/http/IHttpEngineBuilder;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/http/IHttpEngineBuilder;->setEnableHttpCache(IJ)Landroid/net/http/IHttpEngineBuilder;

    .line 273
    return-object p0
.end method

.method public whitelist setEnablePublicKeyPinningBypassForLocalTrustAnchors(Z)Landroid/net/http/HttpEngine$Builder;
    .registers 3
    .param p1, "value"    # Z

    .line 352
    iget-object v0, p0, Landroid/net/http/HttpEngine$Builder;->mBuilderDelegate:Landroid/net/http/IHttpEngineBuilder;

    invoke-virtual {v0, p1}, Landroid/net/http/IHttpEngineBuilder;->setEnablePublicKeyPinningBypassForLocalTrustAnchors(Z)Landroid/net/http/IHttpEngineBuilder;

    .line 353
    return-object p0
.end method

.method public whitelist setEnableQuic(Z)Landroid/net/http/HttpEngine$Builder;
    .registers 3
    .param p1, "value"    # Z

    .line 200
    iget-object v0, p0, Landroid/net/http/HttpEngine$Builder;->mBuilderDelegate:Landroid/net/http/IHttpEngineBuilder;

    invoke-virtual {v0, p1}, Landroid/net/http/IHttpEngineBuilder;->setEnableQuic(Z)Landroid/net/http/IHttpEngineBuilder;

    .line 201
    return-object p0
.end method

.method public whitelist setQuicOptions(Landroid/net/http/QuicOptions;)Landroid/net/http/HttpEngine$Builder;
    .registers 3
    .param p1, "quicOptions"    # Landroid/net/http/QuicOptions;

    .line 369
    iget-object v0, p0, Landroid/net/http/HttpEngine$Builder;->mBuilderDelegate:Landroid/net/http/IHttpEngineBuilder;

    invoke-virtual {v0, p1}, Landroid/net/http/IHttpEngineBuilder;->setQuicOptions(Landroid/net/http/QuicOptions;)Landroid/net/http/IHttpEngineBuilder;

    .line 370
    return-object p0
.end method

.method public whitelist setStoragePath(Ljava/lang/String;)Landroid/net/http/HttpEngine$Builder;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 186
    iget-object v0, p0, Landroid/net/http/HttpEngine$Builder;->mBuilderDelegate:Landroid/net/http/IHttpEngineBuilder;

    invoke-virtual {v0, p1}, Landroid/net/http/IHttpEngineBuilder;->setStoragePath(Ljava/lang/String;)Landroid/net/http/IHttpEngineBuilder;

    .line 187
    return-object p0
.end method

.method public whitelist setUserAgent(Ljava/lang/String;)Landroid/net/http/HttpEngine$Builder;
    .registers 3
    .param p1, "userAgent"    # Ljava/lang/String;

    .line 168
    iget-object v0, p0, Landroid/net/http/HttpEngine$Builder;->mBuilderDelegate:Landroid/net/http/IHttpEngineBuilder;

    invoke-virtual {v0, p1}, Landroid/net/http/IHttpEngineBuilder;->setUserAgent(Ljava/lang/String;)Landroid/net/http/IHttpEngineBuilder;

    .line 169
    return-object p0
.end method
