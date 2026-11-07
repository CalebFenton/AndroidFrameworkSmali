.class public final Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions$Builder;
.super Ljava/lang/Object;
.source "DnsOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAllowCrossNetworkUsage:Ljava/lang/Boolean;

.field private blacklist mFreshLookupTimeoutMillis:Ljava/lang/Long;

.field private blacklist mMaxExpiredDelayMillis:Ljava/lang/Long;

.field private blacklist mUseStaleOnNameNotResolved:Ljava/lang/Boolean;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAllowCrossNetworkUsage(Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions$Builder;)Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions$Builder;->mAllowCrossNetworkUsage:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFreshLookupTimeoutMillis(Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions$Builder;)Ljava/lang/Long;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions$Builder;->mFreshLookupTimeoutMillis:Ljava/lang/Long;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxExpiredDelayMillis(Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions$Builder;)Ljava/lang/Long;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions$Builder;->mMaxExpiredDelayMillis:Ljava/lang/Long;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUseStaleOnNameNotResolved(Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions$Builder;)Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions$Builder;->mUseStaleOnNameNotResolved:Ljava/lang/Boolean;

    return-object p0
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist allowCrossNetworkUsage(Z)Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions$Builder;
    .registers 3
    .param p1, "allowCrossNetworkUsage"    # Z

    .line 213
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions$Builder;->mAllowCrossNetworkUsage:Ljava/lang/Boolean;

    .line 214
    return-object p0
.end method

.method public blacklist build()Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions;
    .registers 2

    .line 238
    new-instance v0, Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions;

    invoke-direct {v0, p0}, Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions;-><init>(Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions$Builder;)V

    return-object v0
.end method

.method public blacklist setFreshLookupTimeout(Ljava/time/Duration;)Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions$Builder;
    .registers 4
    .param p1, "freshLookupTimeout"    # Ljava/time/Duration;

    .line 179
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions$Builder;->setFreshLookupTimeoutMillis(J)Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setFreshLookupTimeoutMillis(J)Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions$Builder;
    .registers 4
    .param p1, "freshLookupTimeoutMillis"    # J

    .line 167
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions$Builder;->mFreshLookupTimeoutMillis:Ljava/lang/Long;

    .line 168
    return-object p0
.end method

.method public blacklist setMaxExpiredDelay(Ljava/time/Duration;)Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions$Builder;
    .registers 4
    .param p1, "maxExpiredDelay"    # Ljava/time/Duration;

    .line 201
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions$Builder;->setMaxExpiredDelayMillis(J)Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setMaxExpiredDelayMillis(J)Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions$Builder;
    .registers 4
    .param p1, "maxExpiredDelayMillis"    # J

    .line 190
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions$Builder;->mMaxExpiredDelayMillis:Ljava/lang/Long;

    .line 191
    return-object p0
.end method

.method public blacklist useStaleOnNameNotResolved(Z)Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions$Builder;
    .registers 3
    .param p1, "useStaleOnNameNotResolved"    # Z

    .line 229
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions$Builder;->mUseStaleOnNameNotResolved:Ljava/lang/Boolean;

    .line 230
    return-object p0
.end method
