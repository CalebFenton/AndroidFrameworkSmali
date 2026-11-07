.class public Landroid/net/http/QuicOptions;
.super Ljava/lang/Object;
.source "QuicOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/http/QuicOptions$Builder;,
        Landroid/net/http/QuicOptions$Experimental;
    }
.end annotation


# instance fields
.field private final blacklist mClientConnectionOptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCloseSessionsOnIpChange:Ljava/lang/Boolean;

.field private final blacklist mConnectionOptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCryptoHandshakeTimeout:Ljava/time/Duration;

.field private final blacklist mDelayJobsWithAvailableSpdySession:Ljava/lang/Boolean;

.field private final blacklist mEnableTlsZeroRtt:Ljava/lang/Boolean;

.field private final blacklist mEnabledQuicVersions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mExtraQuicheFlags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mGoawaySessionsOnIpChange:Ljava/lang/Boolean;

.field private final blacklist mHandshakeUserAgent:Ljava/lang/String;

.field private final blacklist mIdleConnectionTimeout:Ljava/time/Duration;

.field private final blacklist mInMemoryServerConfigsCacheSize:Ljava/lang/Integer;

.field private final blacklist mIncreaseBrokenServicePeriodExponentially:Ljava/lang/Boolean;

.field private final blacklist mInitialBrokenServicePeriod:Ljava/time/Duration;

.field private final blacklist mPreCryptoHandshakeIdleTimeout:Ljava/time/Duration;

.field private final blacklist mQuicHostAllowlist:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRetransmittableOnWireTimeout:Ljava/time/Duration;

.field private final blacklist mRetryWithoutAltSvcOnQuicErrors:Ljava/lang/Boolean;


# direct methods
.method constructor blacklist <init>(Landroid/net/http/QuicOptions$Builder;)V
    .registers 4
    .param p1, "builder"    # Landroid/net/http/QuicOptions$Builder;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-static {p1}, Landroid/net/http/QuicOptions$Builder;->-$$Nest$fgetmQuicHostAllowlist(Landroid/net/http/QuicOptions$Builder;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 67
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/net/http/QuicOptions;->mQuicHostAllowlist:Ljava/util/Set;

    .line 68
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-static {p1}, Landroid/net/http/QuicOptions$Builder;->-$$Nest$fgetmEnabledQuicVersions(Landroid/net/http/QuicOptions$Builder;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 69
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/net/http/QuicOptions;->mEnabledQuicVersions:Ljava/util/Set;

    .line 70
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-static {p1}, Landroid/net/http/QuicOptions$Builder;->-$$Nest$fgetmConnectionOptions(Landroid/net/http/QuicOptions$Builder;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 71
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/net/http/QuicOptions;->mConnectionOptions:Ljava/util/Set;

    .line 72
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-static {p1}, Landroid/net/http/QuicOptions$Builder;->-$$Nest$fgetmClientConnectionOptions(Landroid/net/http/QuicOptions$Builder;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 73
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/net/http/QuicOptions;->mClientConnectionOptions:Ljava/util/Set;

    .line 74
    invoke-static {p1}, Landroid/net/http/QuicOptions$Builder;->-$$Nest$fgetmInMemoryServerConfigsCacheSize(Landroid/net/http/QuicOptions$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/net/http/QuicOptions;->mInMemoryServerConfigsCacheSize:Ljava/lang/Integer;

    .line 75
    invoke-static {p1}, Landroid/net/http/QuicOptions$Builder;->-$$Nest$fgetmHandshakeUserAgent(Landroid/net/http/QuicOptions$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/http/QuicOptions;->mHandshakeUserAgent:Ljava/lang/String;

    .line 76
    invoke-static {p1}, Landroid/net/http/QuicOptions$Builder;->-$$Nest$fgetmRetryWithoutAltSvcOnQuicErrors(Landroid/net/http/QuicOptions$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/net/http/QuicOptions;->mRetryWithoutAltSvcOnQuicErrors:Ljava/lang/Boolean;

    .line 77
    invoke-static {p1}, Landroid/net/http/QuicOptions$Builder;->-$$Nest$fgetmEnableTlsZeroRtt(Landroid/net/http/QuicOptions$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/net/http/QuicOptions;->mEnableTlsZeroRtt:Ljava/lang/Boolean;

    .line 78
    invoke-static {p1}, Landroid/net/http/QuicOptions$Builder;->-$$Nest$fgetmPreCryptoHandshakeIdleTimeout(Landroid/net/http/QuicOptions$Builder;)Ljava/time/Duration;

    move-result-object v0

    iput-object v0, p0, Landroid/net/http/QuicOptions;->mPreCryptoHandshakeIdleTimeout:Ljava/time/Duration;

    .line 79
    invoke-static {p1}, Landroid/net/http/QuicOptions$Builder;->-$$Nest$fgetmCryptoHandshakeTimeout(Landroid/net/http/QuicOptions$Builder;)Ljava/time/Duration;

    move-result-object v0

    iput-object v0, p0, Landroid/net/http/QuicOptions;->mCryptoHandshakeTimeout:Ljava/time/Duration;

    .line 80
    invoke-static {p1}, Landroid/net/http/QuicOptions$Builder;->-$$Nest$fgetmIdleConnectionTimeout(Landroid/net/http/QuicOptions$Builder;)Ljava/time/Duration;

    move-result-object v0

    iput-object v0, p0, Landroid/net/http/QuicOptions;->mIdleConnectionTimeout:Ljava/time/Duration;

    .line 81
    invoke-static {p1}, Landroid/net/http/QuicOptions$Builder;->-$$Nest$fgetmRetransmittableOnWireTimeout(Landroid/net/http/QuicOptions$Builder;)Ljava/time/Duration;

    move-result-object v0

    iput-object v0, p0, Landroid/net/http/QuicOptions;->mRetransmittableOnWireTimeout:Ljava/time/Duration;

    .line 82
    invoke-static {p1}, Landroid/net/http/QuicOptions$Builder;->-$$Nest$fgetmCloseSessionsOnIpChange(Landroid/net/http/QuicOptions$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/net/http/QuicOptions;->mCloseSessionsOnIpChange:Ljava/lang/Boolean;

    .line 83
    invoke-static {p1}, Landroid/net/http/QuicOptions$Builder;->-$$Nest$fgetmGoawaySessionsOnIpChange(Landroid/net/http/QuicOptions$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/net/http/QuicOptions;->mGoawaySessionsOnIpChange:Ljava/lang/Boolean;

    .line 84
    invoke-static {p1}, Landroid/net/http/QuicOptions$Builder;->-$$Nest$fgetmInitialBrokenServicePeriod(Landroid/net/http/QuicOptions$Builder;)Ljava/time/Duration;

    move-result-object v0

    iput-object v0, p0, Landroid/net/http/QuicOptions;->mInitialBrokenServicePeriod:Ljava/time/Duration;

    .line 85
    invoke-static {p1}, Landroid/net/http/QuicOptions$Builder;->-$$Nest$fgetmIncreaseBrokenServicePeriodExponentially(Landroid/net/http/QuicOptions$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/net/http/QuicOptions;->mIncreaseBrokenServicePeriodExponentially:Ljava/lang/Boolean;

    .line 87
    invoke-static {p1}, Landroid/net/http/QuicOptions$Builder;->-$$Nest$fgetmDelayJobsWithAvailableSpdySession(Landroid/net/http/QuicOptions$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/net/http/QuicOptions;->mDelayJobsWithAvailableSpdySession:Ljava/lang/Boolean;

    .line 88
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-static {p1}, Landroid/net/http/QuicOptions$Builder;->-$$Nest$fgetmExtraQuicheFlags(Landroid/net/http/QuicOptions$Builder;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 89
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/net/http/QuicOptions;->mExtraQuicheFlags:Ljava/util/Set;

    .line 90
    return-void
.end method

.method public static blacklist builder()Landroid/net/http/QuicOptions$Builder;
    .registers 1

    .line 140
    new-instance v0, Landroid/net/http/QuicOptions$Builder;

    invoke-direct {v0}, Landroid/net/http/QuicOptions$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public whitelist getAllowedQuicHosts()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Landroid/net/http/QuicOptions;->mQuicHostAllowlist:Ljava/util/Set;

    return-object v0
.end method

.method public whitelist getHandshakeUserAgent()Ljava/lang/String;
    .registers 2

    .line 123
    iget-object v0, p0, Landroid/net/http/QuicOptions;->mHandshakeUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getIdleConnectionTimeout()Ljava/time/Duration;
    .registers 2

    .line 131
    iget-object v0, p0, Landroid/net/http/QuicOptions;->mIdleConnectionTimeout:Ljava/time/Duration;

    return-object v0
.end method

.method public whitelist getInMemoryServerConfigsCacheSize()I
    .registers 3

    .line 112
    invoke-virtual {p0}, Landroid/net/http/QuicOptions;->hasInMemoryServerConfigsCacheSize()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 115
    iget-object v0, p0, Landroid/net/http/QuicOptions;->mInMemoryServerConfigsCacheSize:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 113
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "InMemoryServerConfigsCacheSize is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist hasInMemoryServerConfigsCacheSize()Z
    .registers 2

    .line 105
    iget-object v0, p0, Landroid/net/http/QuicOptions;->mInMemoryServerConfigsCacheSize:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
