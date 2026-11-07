.class public final Landroid/net/http/DnsOptions;
.super Ljava/lang/Object;
.source "DnsOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/http/DnsOptions$Builder;,
        Landroid/net/http/DnsOptions$StaleDnsOptions;,
        Landroid/net/http/DnsOptions$Experimental;,
        Landroid/net/http/DnsOptions$DnsOptionState;
    }
.end annotation


# static fields
.field public static final whitelist DNS_OPTION_DISABLED:I = 0x2

.field public static final whitelist DNS_OPTION_ENABLED:I = 0x1

.field public static final whitelist DNS_OPTION_UNSPECIFIED:I


# instance fields
.field private final blacklist mEnableStaleDns:I

.field private final blacklist mPersistHostCache:I

.field private final blacklist mPersistHostCachePeriod:Ljava/time/Duration;

.field private final blacklist mPreestablishConnectionsToStaleDnsResults:I

.field private final blacklist mStaleDnsOptions:Landroid/net/http/DnsOptions$StaleDnsOptions;

.field private final blacklist mUseHttpStackDnsResolver:I


# direct methods
.method constructor blacklist <init>(Landroid/net/http/DnsOptions$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/net/http/DnsOptions$Builder;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {p1}, Landroid/net/http/DnsOptions$Builder;->-$$Nest$fgetmEnableStaleDns(Landroid/net/http/DnsOptions$Builder;)I

    move-result v0

    iput v0, p0, Landroid/net/http/DnsOptions;->mEnableStaleDns:I

    .line 58
    invoke-static {p1}, Landroid/net/http/DnsOptions$Builder;->-$$Nest$fgetmStaleDnsOptions(Landroid/net/http/DnsOptions$Builder;)Landroid/net/http/DnsOptions$StaleDnsOptions;

    move-result-object v0

    iput-object v0, p0, Landroid/net/http/DnsOptions;->mStaleDnsOptions:Landroid/net/http/DnsOptions$StaleDnsOptions;

    .line 59
    invoke-static {p1}, Landroid/net/http/DnsOptions$Builder;->-$$Nest$fgetmPersistHostCachePeriod(Landroid/net/http/DnsOptions$Builder;)Ljava/time/Duration;

    move-result-object v0

    iput-object v0, p0, Landroid/net/http/DnsOptions;->mPersistHostCachePeriod:Ljava/time/Duration;

    .line 60
    invoke-static {p1}, Landroid/net/http/DnsOptions$Builder;->-$$Nest$fgetmPreestablishConnectionsToStaleDnsResults(Landroid/net/http/DnsOptions$Builder;)I

    move-result v0

    iput v0, p0, Landroid/net/http/DnsOptions;->mPreestablishConnectionsToStaleDnsResults:I

    .line 62
    invoke-static {p1}, Landroid/net/http/DnsOptions$Builder;->-$$Nest$fgetmUseHttpStackDnsResolver(Landroid/net/http/DnsOptions$Builder;)I

    move-result v0

    iput v0, p0, Landroid/net/http/DnsOptions;->mUseHttpStackDnsResolver:I

    .line 63
    invoke-static {p1}, Landroid/net/http/DnsOptions$Builder;->-$$Nest$fgetmPersistHostCache(Landroid/net/http/DnsOptions$Builder;)I

    move-result v0

    iput v0, p0, Landroid/net/http/DnsOptions;->mPersistHostCache:I

    .line 64
    return-void
.end method

.method public static blacklist builder()Landroid/net/http/DnsOptions$Builder;
    .registers 1

    .line 141
    new-instance v0, Landroid/net/http/DnsOptions$Builder;

    invoke-direct {v0}, Landroid/net/http/DnsOptions$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public whitelist getPersistHostCache()I
    .registers 2

    .line 101
    iget v0, p0, Landroid/net/http/DnsOptions;->mPersistHostCache:I

    return v0
.end method

.method public whitelist getPersistHostCachePeriod()Ljava/time/Duration;
    .registers 2

    .line 116
    iget-object v0, p0, Landroid/net/http/DnsOptions;->mPersistHostCachePeriod:Ljava/time/Duration;

    return-object v0
.end method

.method public whitelist getPreestablishConnectionsToStaleDnsResults()I
    .registers 2

    .line 123
    iget v0, p0, Landroid/net/http/DnsOptions;->mPreestablishConnectionsToStaleDnsResults:I

    return v0
.end method

.method public whitelist getStaleDns()I
    .registers 2

    .line 108
    iget v0, p0, Landroid/net/http/DnsOptions;->mEnableStaleDns:I

    return v0
.end method

.method public whitelist getStaleDnsOptions()Landroid/net/http/DnsOptions$StaleDnsOptions;
    .registers 2

    .line 131
    iget-object v0, p0, Landroid/net/http/DnsOptions;->mStaleDnsOptions:Landroid/net/http/DnsOptions$StaleDnsOptions;

    return-object v0
.end method

.method public whitelist getUseHttpStackDnsResolver()I
    .registers 2

    .line 94
    iget v0, p0, Landroid/net/http/DnsOptions;->mUseHttpStackDnsResolver:I

    return v0
.end method
