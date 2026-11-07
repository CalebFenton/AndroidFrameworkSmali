.class public Landroid/net/http/DnsOptions$StaleDnsOptions;
.super Ljava/lang/Object;
.source "DnsOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/http/DnsOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StaleDnsOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/http/DnsOptions$StaleDnsOptions$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mAllowCrossNetworkUsage:I

.field private final blacklist mFreshLookupTimeout:Ljava/time/Duration;

.field private final blacklist mMaxExpiredDelay:Ljava/time/Duration;

.field private final blacklist mUseStaleOnNameNotResolved:I


# direct methods
.method constructor blacklist <init>(Landroid/net/http/DnsOptions$StaleDnsOptions$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/net/http/DnsOptions$StaleDnsOptions$Builder;

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    invoke-static {p1}, Landroid/net/http/DnsOptions$StaleDnsOptions$Builder;->-$$Nest$fgetmFreshLookupTimeout(Landroid/net/http/DnsOptions$StaleDnsOptions$Builder;)Ljava/time/Duration;

    move-result-object v0

    iput-object v0, p0, Landroid/net/http/DnsOptions$StaleDnsOptions;->mFreshLookupTimeout:Ljava/time/Duration;

    .line 200
    invoke-static {p1}, Landroid/net/http/DnsOptions$StaleDnsOptions$Builder;->-$$Nest$fgetmMaxExpiredDelay(Landroid/net/http/DnsOptions$StaleDnsOptions$Builder;)Ljava/time/Duration;

    move-result-object v0

    iput-object v0, p0, Landroid/net/http/DnsOptions$StaleDnsOptions;->mMaxExpiredDelay:Ljava/time/Duration;

    .line 201
    invoke-static {p1}, Landroid/net/http/DnsOptions$StaleDnsOptions$Builder;->-$$Nest$fgetmAllowCrossNetworkUsage(Landroid/net/http/DnsOptions$StaleDnsOptions$Builder;)I

    move-result v0

    iput v0, p0, Landroid/net/http/DnsOptions$StaleDnsOptions;->mAllowCrossNetworkUsage:I

    .line 202
    invoke-static {p1}, Landroid/net/http/DnsOptions$StaleDnsOptions$Builder;->-$$Nest$fgetmUseStaleOnNameNotResolved(Landroid/net/http/DnsOptions$StaleDnsOptions$Builder;)I

    move-result v0

    iput v0, p0, Landroid/net/http/DnsOptions$StaleDnsOptions;->mUseStaleOnNameNotResolved:I

    .line 203
    return-void
.end method

.method public static blacklist builder()Landroid/net/http/DnsOptions$StaleDnsOptions$Builder;
    .registers 1

    .line 188
    new-instance v0, Landroid/net/http/DnsOptions$StaleDnsOptions$Builder;

    invoke-direct {v0}, Landroid/net/http/DnsOptions$StaleDnsOptions$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public whitelist getAllowCrossNetworkUsage()I
    .registers 2

    .line 177
    iget v0, p0, Landroid/net/http/DnsOptions$StaleDnsOptions;->mAllowCrossNetworkUsage:I

    return v0
.end method

.method public whitelist getFreshLookupTimeout()Ljava/time/Duration;
    .registers 2

    .line 168
    iget-object v0, p0, Landroid/net/http/DnsOptions$StaleDnsOptions;->mFreshLookupTimeout:Ljava/time/Duration;

    return-object v0
.end method

.method public whitelist getMaxExpiredDelay()Ljava/time/Duration;
    .registers 2

    .line 173
    iget-object v0, p0, Landroid/net/http/DnsOptions$StaleDnsOptions;->mMaxExpiredDelay:Ljava/time/Duration;

    return-object v0
.end method

.method public whitelist getUseStaleOnNameNotResolved()I
    .registers 2

    .line 180
    iget v0, p0, Landroid/net/http/DnsOptions$StaleDnsOptions;->mUseStaleOnNameNotResolved:I

    return v0
.end method
