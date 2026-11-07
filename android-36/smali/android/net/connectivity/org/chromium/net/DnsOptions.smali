.class public final Landroid/net/connectivity/org/chromium/net/DnsOptions;
.super Ljava/lang/Object;
.source "DnsOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/net/DnsOptions$Builder;,
        Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions;,
        Landroid/net/connectivity/org/chromium/net/DnsOptions$Experimental;
    }
.end annotation


# instance fields
.field private final blacklist mEnableStaleDns:Ljava/lang/Boolean;

.field private final blacklist mPersistHostCache:Ljava/lang/Boolean;

.field private final blacklist mPersistHostCachePeriodMillis:Ljava/lang/Long;

.field private final blacklist mPreestablishConnectionsToStaleDnsResults:Ljava/lang/Boolean;

.field private final blacklist mStaleDnsOptions:Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions;

.field private final blacklist mUseBuiltInDnsResolver:Ljava/lang/Boolean;


# direct methods
.method constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/DnsOptions$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/net/connectivity/org/chromium/net/DnsOptions$Builder;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/net/DnsOptions$Builder;->-$$Nest$fgetmEnableStaleDns(Landroid/net/connectivity/org/chromium/net/DnsOptions$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/DnsOptions;->mEnableStaleDns:Ljava/lang/Boolean;

    .line 54
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/net/DnsOptions$Builder;->-$$Nest$fgetmStaleDnsOptions(Landroid/net/connectivity/org/chromium/net/DnsOptions$Builder;)Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/DnsOptions;->mStaleDnsOptions:Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions;

    .line 55
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/net/DnsOptions$Builder;->-$$Nest$fgetmPersistHostCachePeriodMillis(Landroid/net/connectivity/org/chromium/net/DnsOptions$Builder;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/DnsOptions;->mPersistHostCachePeriodMillis:Ljava/lang/Long;

    .line 56
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/net/DnsOptions$Builder;->-$$Nest$fgetmPreestablishConnectionsToStaleDnsResults(Landroid/net/connectivity/org/chromium/net/DnsOptions$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/DnsOptions;->mPreestablishConnectionsToStaleDnsResults:Ljava/lang/Boolean;

    .line 58
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/net/DnsOptions$Builder;->-$$Nest$fgetmUseBuiltInDnsResolver(Landroid/net/connectivity/org/chromium/net/DnsOptions$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/DnsOptions;->mUseBuiltInDnsResolver:Ljava/lang/Boolean;

    .line 59
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/net/DnsOptions$Builder;->-$$Nest$fgetmPersistHostCache(Landroid/net/connectivity/org/chromium/net/DnsOptions$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/DnsOptions;->mPersistHostCache:Ljava/lang/Boolean;

    .line 60
    return-void
.end method

.method public static blacklist builder()Landroid/net/connectivity/org/chromium/net/DnsOptions$Builder;
    .registers 1

    .line 93
    new-instance v0, Landroid/net/connectivity/org/chromium/net/DnsOptions$Builder;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/net/DnsOptions$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public blacklist getEnableStaleDns()Ljava/lang/Boolean;
    .registers 2

    .line 74
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/DnsOptions;->mEnableStaleDns:Ljava/lang/Boolean;

    return-object v0
.end method

.method public blacklist getPersistHostCache()Ljava/lang/Boolean;
    .registers 2

    .line 69
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/DnsOptions;->mPersistHostCache:Ljava/lang/Boolean;

    return-object v0
.end method

.method public blacklist getPersistHostCachePeriodMillis()Ljava/lang/Long;
    .registers 2

    .line 79
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/DnsOptions;->mPersistHostCachePeriodMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public blacklist getPreestablishConnectionsToStaleDnsResults()Ljava/lang/Boolean;
    .registers 2

    .line 84
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/DnsOptions;->mPreestablishConnectionsToStaleDnsResults:Ljava/lang/Boolean;

    return-object v0
.end method

.method public blacklist getStaleDnsOptions()Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions;
    .registers 2

    .line 89
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/DnsOptions;->mStaleDnsOptions:Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions;

    return-object v0
.end method

.method public blacklist getUseBuiltInDnsResolver()Ljava/lang/Boolean;
    .registers 2

    .line 64
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/DnsOptions;->mUseBuiltInDnsResolver:Ljava/lang/Boolean;

    return-object v0
.end method
