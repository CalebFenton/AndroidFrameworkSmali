.class public final Landroid/net/http/DnsOptions$StaleDnsOptions$Builder;
.super Ljava/lang/Object;
.source "DnsOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/http/DnsOptions$StaleDnsOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAllowCrossNetworkUsage:I

.field private blacklist mFreshLookupTimeout:Ljava/time/Duration;

.field private blacklist mMaxExpiredDelay:Ljava/time/Duration;

.field private blacklist mUseStaleOnNameNotResolved:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAllowCrossNetworkUsage(Landroid/net/http/DnsOptions$StaleDnsOptions$Builder;)I
    .registers 1

    iget p0, p0, Landroid/net/http/DnsOptions$StaleDnsOptions$Builder;->mAllowCrossNetworkUsage:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFreshLookupTimeout(Landroid/net/http/DnsOptions$StaleDnsOptions$Builder;)Ljava/time/Duration;
    .registers 1

    iget-object p0, p0, Landroid/net/http/DnsOptions$StaleDnsOptions$Builder;->mFreshLookupTimeout:Ljava/time/Duration;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxExpiredDelay(Landroid/net/http/DnsOptions$StaleDnsOptions$Builder;)Ljava/time/Duration;
    .registers 1

    iget-object p0, p0, Landroid/net/http/DnsOptions$StaleDnsOptions$Builder;->mMaxExpiredDelay:Ljava/time/Duration;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUseStaleOnNameNotResolved(Landroid/net/http/DnsOptions$StaleDnsOptions$Builder;)I
    .registers 1

    iget p0, p0, Landroid/net/http/DnsOptions$StaleDnsOptions$Builder;->mUseStaleOnNameNotResolved:I

    return p0
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/http/DnsOptions$StaleDnsOptions;
    .registers 2

    .line 279
    new-instance v0, Landroid/net/http/DnsOptions$StaleDnsOptions;

    invoke-direct {v0, p0}, Landroid/net/http/DnsOptions$StaleDnsOptions;-><init>(Landroid/net/http/DnsOptions$StaleDnsOptions$Builder;)V

    return-object v0
.end method

.method public whitelist setAllowCrossNetworkUsage(I)Landroid/net/http/DnsOptions$StaleDnsOptions$Builder;
    .registers 2
    .param p1, "state"    # I

    .line 251
    iput p1, p0, Landroid/net/http/DnsOptions$StaleDnsOptions$Builder;->mAllowCrossNetworkUsage:I

    .line 252
    return-object p0
.end method

.method public whitelist setFreshLookupTimeout(Ljava/time/Duration;)Landroid/net/http/DnsOptions$StaleDnsOptions$Builder;
    .registers 2
    .param p1, "freshLookupTimeout"    # Ljava/time/Duration;

    .line 225
    iput-object p1, p0, Landroid/net/http/DnsOptions$StaleDnsOptions$Builder;->mFreshLookupTimeout:Ljava/time/Duration;

    .line 226
    return-object p0
.end method

.method public whitelist setMaxExpiredDelay(Ljava/time/Duration;)Landroid/net/http/DnsOptions$StaleDnsOptions$Builder;
    .registers 2
    .param p1, "maxExpiredDelay"    # Ljava/time/Duration;

    .line 237
    iput-object p1, p0, Landroid/net/http/DnsOptions$StaleDnsOptions$Builder;->mMaxExpiredDelay:Ljava/time/Duration;

    .line 238
    return-object p0
.end method

.method public whitelist setUseStaleOnNameNotResolved(I)Landroid/net/http/DnsOptions$StaleDnsOptions$Builder;
    .registers 2
    .param p1, "state"    # I

    .line 269
    iput p1, p0, Landroid/net/http/DnsOptions$StaleDnsOptions$Builder;->mUseStaleOnNameNotResolved:I

    .line 270
    return-object p0
.end method
