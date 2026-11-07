.class public abstract Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;
.super Ljava/lang/Object;
.source "ICronetEngineBuilder.java"


# static fields
.field public static final blacklist CONNECTION_MIGRATION_OPTIONS:I = 0x1

.field public static final blacklist DNS_OPTIONS:I = 0x2

.field public static final blacklist QUIC_OPTIONS:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist addPublicKeyPins(Ljava/lang/String;Ljava/util/Set;ZLjava/util/Date;)Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "[B>;Z",
            "Ljava/util/Date;",
            ")",
            "Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;"
        }
    .end annotation
.end method

.method public abstract blacklist addQuicHint(Ljava/lang/String;II)Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;
.end method

.method public abstract blacklist build()Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;
.end method

.method public blacklist enableBrotli(Z)Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;
    .registers 2
    .param p1, "value"    # Z

    .line 53
    return-object p0
.end method

.method public abstract blacklist enableHttp2(Z)Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;
.end method

.method public abstract blacklist enableHttpCache(IJ)Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;
.end method

.method public blacklist enableNetworkQualityEstimator(Z)Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;
    .registers 2
    .param p1, "value"    # Z

    .line 100
    return-object p0
.end method

.method public abstract blacklist enablePublicKeyPinningBypassForLocalTrustAnchors(Z)Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;
.end method

.method public abstract blacklist enableQuic(Z)Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;
.end method

.method public abstract blacklist enableSdch(Z)Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;
.end method

.method public abstract blacklist getDefaultUserAgent()Ljava/lang/String;
.end method

.method protected blacklist getLogCronetInitializationRef()J
    .registers 3

    .line 114
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected blacklist getSupportedConfigOptions()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 90
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setConnectionMigrationOptions(Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;)Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;
    .registers 2
    .param p1, "connectionMigrationOptions"    # Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;

    .line 66
    return-object p0
.end method

.method public blacklist setDnsOptions(Landroid/net/connectivity/org/chromium/net/DnsOptions;)Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;
    .registers 2
    .param p1, "dnsOptions"    # Landroid/net/connectivity/org/chromium/net/DnsOptions;

    .line 61
    return-object p0
.end method

.method public abstract blacklist setExperimentalOptions(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;
.end method

.method public abstract blacklist setLibraryLoader(Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder$LibraryLoader;)Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;
.end method

.method public blacklist setQuicOptions(Landroid/net/connectivity/org/chromium/net/QuicOptions;)Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;
    .registers 2
    .param p1, "quicOptions"    # Landroid/net/connectivity/org/chromium/net/QuicOptions;

    .line 57
    return-object p0
.end method

.method public abstract blacklist setStoragePath(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;
.end method

.method public blacklist setThreadPriority(I)Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;
    .registers 2
    .param p1, "priority"    # I

    .line 104
    return-object p0
.end method

.method public abstract blacklist setUserAgent(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;
.end method
