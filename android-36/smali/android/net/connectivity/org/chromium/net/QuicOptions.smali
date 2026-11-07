.class public final Landroid/net/connectivity/org/chromium/net/QuicOptions;
.super Ljava/lang/Object;
.source "QuicOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;,
        Landroid/net/connectivity/org/chromium/net/QuicOptions$QuichePassthroughOption;,
        Landroid/net/connectivity/org/chromium/net/QuicOptions$Experimental;
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

.field private final blacklist mCryptoHandshakeTimeoutSeconds:Ljava/lang/Long;

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

.field private final blacklist mIdleConnectionTimeoutSeconds:Ljava/lang/Long;

.field private final blacklist mInMemoryServerConfigsCacheSize:Ljava/lang/Integer;

.field private final blacklist mIncreaseBrokenServicePeriodExponentially:Ljava/lang/Boolean;

.field private final blacklist mInitialBrokenServicePeriodSeconds:Ljava/lang/Long;

.field private final blacklist mPreCryptoHandshakeIdleTimeoutSeconds:Ljava/lang/Long;

.field private final blacklist mQuicHostAllowlist:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRetransmittableOnWireTimeoutMillis:Ljava/lang/Long;

.field private final blacklist mRetryWithoutAltSvcOnQuicErrors:Ljava/lang/Boolean;


# direct methods
.method constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;)V
    .registers 4
    .param p1, "builder"    # Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-static {p1}, Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;->-$$Nest$fgetmQuicHostAllowlist(Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 55
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions;->mQuicHostAllowlist:Ljava/util/Set;

    .line 56
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-static {p1}, Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;->-$$Nest$fgetmEnabledQuicVersions(Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 57
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions;->mEnabledQuicVersions:Ljava/util/Set;

    .line 58
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-static {p1}, Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;->-$$Nest$fgetmConnectionOptions(Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 59
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions;->mConnectionOptions:Ljava/util/Set;

    .line 60
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-static {p1}, Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;->-$$Nest$fgetmClientConnectionOptions(Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 61
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions;->mClientConnectionOptions:Ljava/util/Set;

    .line 62
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;->-$$Nest$fgetmInMemoryServerConfigsCacheSize(Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions;->mInMemoryServerConfigsCacheSize:Ljava/lang/Integer;

    .line 63
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;->-$$Nest$fgetmHandshakeUserAgent(Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions;->mHandshakeUserAgent:Ljava/lang/String;

    .line 64
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;->-$$Nest$fgetmRetryWithoutAltSvcOnQuicErrors(Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions;->mRetryWithoutAltSvcOnQuicErrors:Ljava/lang/Boolean;

    .line 65
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;->-$$Nest$fgetmEnableTlsZeroRtt(Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions;->mEnableTlsZeroRtt:Ljava/lang/Boolean;

    .line 66
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;->-$$Nest$fgetmPreCryptoHandshakeIdleTimeoutSeconds(Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions;->mPreCryptoHandshakeIdleTimeoutSeconds:Ljava/lang/Long;

    .line 67
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;->-$$Nest$fgetmCryptoHandshakeTimeoutSeconds(Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions;->mCryptoHandshakeTimeoutSeconds:Ljava/lang/Long;

    .line 68
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;->-$$Nest$fgetmIdleConnectionTimeoutSeconds(Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions;->mIdleConnectionTimeoutSeconds:Ljava/lang/Long;

    .line 69
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;->-$$Nest$fgetmRetransmittableOnWireTimeoutMillis(Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions;->mRetransmittableOnWireTimeoutMillis:Ljava/lang/Long;

    .line 70
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;->-$$Nest$fgetmCloseSessionsOnIpChange(Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions;->mCloseSessionsOnIpChange:Ljava/lang/Boolean;

    .line 71
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;->-$$Nest$fgetmGoawaySessionsOnIpChange(Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions;->mGoawaySessionsOnIpChange:Ljava/lang/Boolean;

    .line 72
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;->-$$Nest$fgetmInitialBrokenServicePeriodSeconds(Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions;->mInitialBrokenServicePeriodSeconds:Ljava/lang/Long;

    .line 73
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;->-$$Nest$fgetmIncreaseBrokenServicePeriodExponentially(Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions;->mIncreaseBrokenServicePeriodExponentially:Ljava/lang/Boolean;

    .line 75
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;->-$$Nest$fgetmDelayJobsWithAvailableSpdySession(Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions;->mDelayJobsWithAvailableSpdySession:Ljava/lang/Boolean;

    .line 76
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-static {p1}, Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;->-$$Nest$fgetmExtraQuicheFlags(Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 77
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions;->mExtraQuicheFlags:Ljava/util/Set;

    .line 78
    return-void
.end method

.method public static blacklist builder()Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;
    .registers 1

    .line 166
    new-instance v0, Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public blacklist getClientConnectionOptions()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions;->mClientConnectionOptions:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist getCloseSessionsOnIpChange()Ljava/lang/Boolean;
    .registers 2

    .line 138
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions;->mCloseSessionsOnIpChange:Ljava/lang/Boolean;

    return-object v0
.end method

.method public blacklist getConnectionOptions()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions;->mConnectionOptions:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist getCryptoHandshakeTimeoutSeconds()Ljava/lang/Long;
    .registers 2

    .line 123
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions;->mCryptoHandshakeTimeoutSeconds:Ljava/lang/Long;

    return-object v0
.end method

.method public blacklist getDelayJobsWithAvailableSpdySession()Ljava/lang/Boolean;
    .registers 2

    .line 158
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions;->mDelayJobsWithAvailableSpdySession:Ljava/lang/Boolean;

    return-object v0
.end method

.method public blacklist getEnableTlsZeroRtt()Ljava/lang/Boolean;
    .registers 2

    .line 113
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions;->mEnableTlsZeroRtt:Ljava/lang/Boolean;

    return-object v0
.end method

.method public blacklist getEnabledQuicVersions()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions;->mEnabledQuicVersions:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist getExtraQuicheFlags()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions;->mExtraQuicheFlags:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist getGoawaySessionsOnIpChange()Ljava/lang/Boolean;
    .registers 2

    .line 143
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions;->mGoawaySessionsOnIpChange:Ljava/lang/Boolean;

    return-object v0
.end method

.method public blacklist getHandshakeUserAgent()Ljava/lang/String;
    .registers 2

    .line 103
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions;->mHandshakeUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getIdleConnectionTimeoutSeconds()Ljava/lang/Long;
    .registers 2

    .line 128
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions;->mIdleConnectionTimeoutSeconds:Ljava/lang/Long;

    return-object v0
.end method

.method public blacklist getInMemoryServerConfigsCacheSize()Ljava/lang/Integer;
    .registers 2

    .line 98
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions;->mInMemoryServerConfigsCacheSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public blacklist getIncreaseBrokenServicePeriodExponentially()Ljava/lang/Boolean;
    .registers 2

    .line 153
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions;->mIncreaseBrokenServicePeriodExponentially:Ljava/lang/Boolean;

    return-object v0
.end method

.method public blacklist getInitialBrokenServicePeriodSeconds()Ljava/lang/Long;
    .registers 2

    .line 148
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions;->mInitialBrokenServicePeriodSeconds:Ljava/lang/Long;

    return-object v0
.end method

.method public blacklist getPreCryptoHandshakeIdleTimeoutSeconds()Ljava/lang/Long;
    .registers 2

    .line 118
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions;->mPreCryptoHandshakeIdleTimeoutSeconds:Ljava/lang/Long;

    return-object v0
.end method

.method public blacklist getQuicHostAllowlist()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions;->mQuicHostAllowlist:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist getRetransmittableOnWireTimeoutMillis()Ljava/lang/Long;
    .registers 2

    .line 133
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions;->mRetransmittableOnWireTimeoutMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public blacklist getRetryWithoutAltSvcOnQuicErrors()Ljava/lang/Boolean;
    .registers 2

    .line 108
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions;->mRetryWithoutAltSvcOnQuicErrors:Ljava/lang/Boolean;

    return-object v0
.end method
