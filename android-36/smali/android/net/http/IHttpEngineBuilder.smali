.class public abstract Landroid/net/http/IHttpEngineBuilder;
.super Ljava/lang/Object;
.source "IHttpEngineBuilder.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist addPublicKeyPins(Ljava/lang/String;Ljava/util/Set;ZLjava/time/Instant;)Landroid/net/http/IHttpEngineBuilder;
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
.end method

.method public abstract blacklist addQuicHint(Ljava/lang/String;II)Landroid/net/http/IHttpEngineBuilder;
.end method

.method public abstract blacklist build()Landroid/net/http/HttpEngine;
.end method

.method public abstract blacklist getDefaultUserAgent()Ljava/lang/String;
.end method

.method public abstract blacklist setConnectionMigrationOptions(Landroid/net/http/ConnectionMigrationOptions;)Landroid/net/http/IHttpEngineBuilder;
.end method

.method public abstract blacklist setDnsOptions(Landroid/net/http/DnsOptions;)Landroid/net/http/IHttpEngineBuilder;
.end method

.method public abstract blacklist setEnableBrotli(Z)Landroid/net/http/IHttpEngineBuilder;
.end method

.method public abstract blacklist setEnableHttp2(Z)Landroid/net/http/IHttpEngineBuilder;
.end method

.method public abstract blacklist setEnableHttpCache(IJ)Landroid/net/http/IHttpEngineBuilder;
.end method

.method public abstract blacklist setEnablePublicKeyPinningBypassForLocalTrustAnchors(Z)Landroid/net/http/IHttpEngineBuilder;
.end method

.method public abstract blacklist setEnableQuic(Z)Landroid/net/http/IHttpEngineBuilder;
.end method

.method public abstract blacklist setQuicOptions(Landroid/net/http/QuicOptions;)Landroid/net/http/IHttpEngineBuilder;
.end method

.method public abstract blacklist setStoragePath(Ljava/lang/String;)Landroid/net/http/IHttpEngineBuilder;
.end method

.method public abstract blacklist setUserAgent(Ljava/lang/String;)Landroid/net/http/IHttpEngineBuilder;
.end method
