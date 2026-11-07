.class public Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions;
.super Ljava/lang/Object;
.source "DnsOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/DnsOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StaleDnsOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mAllowCrossNetworkUsage:Ljava/lang/Boolean;

.field private final blacklist mFreshLookupTimeoutMillis:Ljava/lang/Long;

.field private final blacklist mMaxExpiredDelayMillis:Ljava/lang/Long;

.field private final blacklist mUseStaleOnNameNotResolved:Ljava/lang/Boolean;


# direct methods
.method constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions$Builder;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions$Builder;->-$$Nest$fgetmFreshLookupTimeoutMillis(Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions$Builder;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions;->mFreshLookupTimeoutMillis:Ljava/lang/Long;

    .line 145
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions$Builder;->-$$Nest$fgetmMaxExpiredDelayMillis(Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions$Builder;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions;->mMaxExpiredDelayMillis:Ljava/lang/Long;

    .line 146
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions$Builder;->-$$Nest$fgetmAllowCrossNetworkUsage(Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions;->mAllowCrossNetworkUsage:Ljava/lang/Boolean;

    .line 147
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions$Builder;->-$$Nest$fgetmUseStaleOnNameNotResolved(Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions;->mUseStaleOnNameNotResolved:Ljava/lang/Boolean;

    .line 148
    return-void
.end method

.method public static blacklist builder()Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions$Builder;
    .registers 1

    .line 135
    new-instance v0, Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions$Builder;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public blacklist getAllowCrossNetworkUsage()Ljava/lang/Boolean;
    .registers 2

    .line 126
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions;->mAllowCrossNetworkUsage:Ljava/lang/Boolean;

    return-object v0
.end method

.method public blacklist getFreshLookupTimeoutMillis()Ljava/lang/Long;
    .registers 2

    .line 116
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions;->mFreshLookupTimeoutMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public blacklist getMaxExpiredDelayMillis()Ljava/lang/Long;
    .registers 2

    .line 121
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions;->mMaxExpiredDelayMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public blacklist getUseStaleOnNameNotResolved()Ljava/lang/Boolean;
    .registers 2

    .line 131
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/DnsOptions$StaleDnsOptions;->mUseStaleOnNameNotResolved:Ljava/lang/Boolean;

    return-object v0
.end method
