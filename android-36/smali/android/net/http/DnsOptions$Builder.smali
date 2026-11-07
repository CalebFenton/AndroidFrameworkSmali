.class public final Landroid/net/http/DnsOptions$Builder;
.super Ljava/lang/Object;
.source "DnsOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/http/DnsOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mEnableStaleDns:I

.field private blacklist mPersistHostCache:I

.field private blacklist mPersistHostCachePeriod:Ljava/time/Duration;

.field private blacklist mPreestablishConnectionsToStaleDnsResults:I

.field private blacklist mStaleDnsOptions:Landroid/net/http/DnsOptions$StaleDnsOptions;

.field private blacklist mUseHttpStackDnsResolver:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmEnableStaleDns(Landroid/net/http/DnsOptions$Builder;)I
    .registers 1

    iget p0, p0, Landroid/net/http/DnsOptions$Builder;->mEnableStaleDns:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPersistHostCache(Landroid/net/http/DnsOptions$Builder;)I
    .registers 1

    iget p0, p0, Landroid/net/http/DnsOptions$Builder;->mPersistHostCache:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPersistHostCachePeriod(Landroid/net/http/DnsOptions$Builder;)Ljava/time/Duration;
    .registers 1

    iget-object p0, p0, Landroid/net/http/DnsOptions$Builder;->mPersistHostCachePeriod:Ljava/time/Duration;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreestablishConnectionsToStaleDnsResults(Landroid/net/http/DnsOptions$Builder;)I
    .registers 1

    iget p0, p0, Landroid/net/http/DnsOptions$Builder;->mPreestablishConnectionsToStaleDnsResults:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStaleDnsOptions(Landroid/net/http/DnsOptions$Builder;)Landroid/net/http/DnsOptions$StaleDnsOptions;
    .registers 1

    iget-object p0, p0, Landroid/net/http/DnsOptions$Builder;->mStaleDnsOptions:Landroid/net/http/DnsOptions$StaleDnsOptions;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUseHttpStackDnsResolver(Landroid/net/http/DnsOptions$Builder;)I
    .registers 1

    iget p0, p0, Landroid/net/http/DnsOptions$Builder;->mUseHttpStackDnsResolver:I

    return p0
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/http/DnsOptions;
    .registers 2

    .line 399
    new-instance v0, Landroid/net/http/DnsOptions;

    invoke-direct {v0, p0}, Landroid/net/http/DnsOptions;-><init>(Landroid/net/http/DnsOptions$Builder;)V

    return-object v0
.end method

.method public whitelist setPersistHostCache(I)Landroid/net/http/DnsOptions$Builder;
    .registers 2
    .param p1, "state"    # I

    .line 375
    iput p1, p0, Landroid/net/http/DnsOptions$Builder;->mPersistHostCache:I

    .line 376
    return-object p0
.end method

.method public whitelist setPersistHostCachePeriod(Ljava/time/Duration;)Landroid/net/http/DnsOptions$Builder;
    .registers 2
    .param p1, "persistHostCachePeriod"    # Ljava/time/Duration;

    .line 389
    iput-object p1, p0, Landroid/net/http/DnsOptions$Builder;->mPersistHostCachePeriod:Ljava/time/Duration;

    .line 390
    return-object p0
.end method

.method public whitelist setPreestablishConnectionsToStaleDnsResults(I)Landroid/net/http/DnsOptions$Builder;
    .registers 2
    .param p1, "state"    # I

    .line 360
    iput p1, p0, Landroid/net/http/DnsOptions$Builder;->mPreestablishConnectionsToStaleDnsResults:I

    .line 361
    return-object p0
.end method

.method public whitelist setStaleDns(I)Landroid/net/http/DnsOptions$Builder;
    .registers 2
    .param p1, "state"    # I

    .line 323
    iput p1, p0, Landroid/net/http/DnsOptions$Builder;->mEnableStaleDns:I

    .line 324
    return-object p0
.end method

.method public whitelist setStaleDnsOptions(Landroid/net/http/DnsOptions$StaleDnsOptions;)Landroid/net/http/DnsOptions$Builder;
    .registers 2
    .param p1, "staleDnsOptions"    # Landroid/net/http/DnsOptions$StaleDnsOptions;

    .line 336
    iput-object p1, p0, Landroid/net/http/DnsOptions$Builder;->mStaleDnsOptions:Landroid/net/http/DnsOptions$StaleDnsOptions;

    .line 337
    return-object p0
.end method

.method public whitelist setUseHttpStackDnsResolver(I)Landroid/net/http/DnsOptions$Builder;
    .registers 2
    .param p1, "state"    # I

    .line 311
    iput p1, p0, Landroid/net/http/DnsOptions$Builder;->mUseHttpStackDnsResolver:I

    .line 312
    return-object p0
.end method
