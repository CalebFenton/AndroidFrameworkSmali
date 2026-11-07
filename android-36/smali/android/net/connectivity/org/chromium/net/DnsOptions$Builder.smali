.class public final Landroid/net/connectivity/org/chromium/net/DnsOptions$Builder;
.super Ljava/lang/Object;
.source "DnsOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/DnsOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mEnableStaleDns:Ljava/lang/Boolean;

.field private blacklist mPersistHostCache:Ljava/lang/Boolean;

.field private blacklist mPersistHostCachePeriodMillis:Ljava/lang/Long;

.field private blacklist mPreestablishConnectionsToStaleDnsResults:Ljava/lang/Boolean;

.field private blacklist mStaleDnsOptions:Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions;

.field private blacklist mUseBuiltInDnsResolver:Ljava/lang/Boolean;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmEnableStaleDns(Landroid/net/connectivity/org/chromium/net/DnsOptions$Builder;)Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/DnsOptions$Builder;->mEnableStaleDns:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPersistHostCache(Landroid/net/connectivity/org/chromium/net/DnsOptions$Builder;)Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/DnsOptions$Builder;->mPersistHostCache:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPersistHostCachePeriodMillis(Landroid/net/connectivity/org/chromium/net/DnsOptions$Builder;)Ljava/lang/Long;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/DnsOptions$Builder;->mPersistHostCachePeriodMillis:Ljava/lang/Long;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreestablishConnectionsToStaleDnsResults(Landroid/net/connectivity/org/chromium/net/DnsOptions$Builder;)Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/DnsOptions$Builder;->mPreestablishConnectionsToStaleDnsResults:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStaleDnsOptions(Landroid/net/connectivity/org/chromium/net/DnsOptions$Builder;)Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/DnsOptions$Builder;->mStaleDnsOptions:Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUseBuiltInDnsResolver(Landroid/net/connectivity/org/chromium/net/DnsOptions$Builder;)Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/DnsOptions$Builder;->mUseBuiltInDnsResolver:Ljava/lang/Boolean;

    return-object p0
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/net/connectivity/org/chromium/net/DnsOptions;
    .registers 2

    .line 350
    new-instance v0, Landroid/net/connectivity/org/chromium/net/DnsOptions;

    invoke-direct {v0, p0}, Landroid/net/connectivity/org/chromium/net/DnsOptions;-><init>(Landroid/net/connectivity/org/chromium/net/DnsOptions$Builder;)V

    return-object v0
.end method

.method public blacklist enableStaleDns(Z)Landroid/net/connectivity/org/chromium/net/DnsOptions$Builder;
    .registers 3
    .param p1, "enable"    # Z

    .line 265
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/DnsOptions$Builder;->mEnableStaleDns:Ljava/lang/Boolean;

    .line 266
    return-object p0
.end method

.method public blacklist persistHostCache(Z)Landroid/net/connectivity/org/chromium/net/DnsOptions$Builder;
    .registers 3
    .param p1, "persistHostCache"    # Z

    .line 317
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/DnsOptions$Builder;->mPersistHostCache:Ljava/lang/Boolean;

    .line 318
    return-object p0
.end method

.method public blacklist preestablishConnectionsToStaleDnsResults(Z)Landroid/net/connectivity/org/chromium/net/DnsOptions$Builder;
    .registers 3
    .param p1, "enable"    # Z

    .line 304
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/DnsOptions$Builder;->mPreestablishConnectionsToStaleDnsResults:Ljava/lang/Boolean;

    .line 305
    return-object p0
.end method

.method public blacklist setPersistDelay(Ljava/time/Duration;)Landroid/net/connectivity/org/chromium/net/DnsOptions$Builder;
    .registers 4
    .param p1, "persistToDiskPeriod"    # Ljava/time/Duration;

    .line 341
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/net/connectivity/org/chromium/net/DnsOptions$Builder;->setPersistHostCachePeriodMillis(J)Landroid/net/connectivity/org/chromium/net/DnsOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setPersistHostCachePeriodMillis(J)Landroid/net/connectivity/org/chromium/net/DnsOptions$Builder;
    .registers 4
    .param p1, "persistHostCachePeriodMillis"    # J

    .line 329
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/DnsOptions$Builder;->mPersistHostCachePeriodMillis:Ljava/lang/Long;

    .line 330
    return-object p0
.end method

.method public blacklist setStaleDnsOptions(Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions$Builder;)Landroid/net/connectivity/org/chromium/net/DnsOptions$Builder;
    .registers 3
    .param p1, "staleDnsOptionsBuilder"    # Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions$Builder;

    .line 284
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions$Builder;->build()Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/connectivity/org/chromium/net/DnsOptions$Builder;->setStaleDnsOptions(Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions;)Landroid/net/connectivity/org/chromium/net/DnsOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setStaleDnsOptions(Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions;)Landroid/net/connectivity/org/chromium/net/DnsOptions$Builder;
    .registers 2
    .param p1, "staleDnsOptions"    # Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions;

    .line 277
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/DnsOptions$Builder;->mStaleDnsOptions:Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions;

    .line 278
    return-object p0
.end method

.method public blacklist useBuiltInDnsResolver(Z)Landroid/net/connectivity/org/chromium/net/DnsOptions$Builder;
    .registers 3
    .param p1, "enable"    # Z

    .line 255
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/DnsOptions$Builder;->mUseBuiltInDnsResolver:Ljava/lang/Boolean;

    .line 256
    return-object p0
.end method
