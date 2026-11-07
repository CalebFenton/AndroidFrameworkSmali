.class public Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;
.super Ljava/lang/Object;
.source "QuicOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/QuicOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
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

.field private blacklist mCloseSessionsOnIpChange:Ljava/lang/Boolean;

.field private final blacklist mConnectionOptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCryptoHandshakeTimeoutSeconds:Ljava/lang/Long;

.field private blacklist mDelayJobsWithAvailableSpdySession:Ljava/lang/Boolean;

.field private blacklist mEnableTlsZeroRtt:Ljava/lang/Boolean;

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

.field private blacklist mGoawaySessionsOnIpChange:Ljava/lang/Boolean;

.field private blacklist mHandshakeUserAgent:Ljava/lang/String;

.field private blacklist mIdleConnectionTimeoutSeconds:Ljava/lang/Long;

.field private blacklist mInMemoryServerConfigsCacheSize:Ljava/lang/Integer;

.field private blacklist mIncreaseBrokenServicePeriodExponentially:Ljava/lang/Boolean;

.field private blacklist mInitialBrokenServicePeriodSeconds:Ljava/lang/Long;

.field private blacklist mPreCryptoHandshakeIdleTimeoutSeconds:Ljava/lang/Long;

.field private final blacklist mQuicHostAllowlist:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRetransmittableOnWireTimeoutMillis:Ljava/lang/Long;

.field private blacklist mRetryWithoutAltSvcOnQuicErrors:Ljava/lang/Boolean;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmClientConnectionOptions(Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;->mClientConnectionOptions:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCloseSessionsOnIpChange(Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;)Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;->mCloseSessionsOnIpChange:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConnectionOptions(Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;->mConnectionOptions:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCryptoHandshakeTimeoutSeconds(Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;)Ljava/lang/Long;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;->mCryptoHandshakeTimeoutSeconds:Ljava/lang/Long;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDelayJobsWithAvailableSpdySession(Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;)Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;->mDelayJobsWithAvailableSpdySession:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEnableTlsZeroRtt(Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;)Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;->mEnableTlsZeroRtt:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEnabledQuicVersions(Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;->mEnabledQuicVersions:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExtraQuicheFlags(Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;->mExtraQuicheFlags:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGoawaySessionsOnIpChange(Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;)Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;->mGoawaySessionsOnIpChange:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandshakeUserAgent(Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;->mHandshakeUserAgent:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIdleConnectionTimeoutSeconds(Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;)Ljava/lang/Long;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;->mIdleConnectionTimeoutSeconds:Ljava/lang/Long;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInMemoryServerConfigsCacheSize(Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;)Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;->mInMemoryServerConfigsCacheSize:Ljava/lang/Integer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIncreaseBrokenServicePeriodExponentially(Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;)Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;->mIncreaseBrokenServicePeriodExponentially:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInitialBrokenServicePeriodSeconds(Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;)Ljava/lang/Long;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;->mInitialBrokenServicePeriodSeconds:Ljava/lang/Long;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreCryptoHandshakeIdleTimeoutSeconds(Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;)Ljava/lang/Long;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;->mPreCryptoHandshakeIdleTimeoutSeconds:Ljava/lang/Long;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmQuicHostAllowlist(Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;->mQuicHostAllowlist:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRetransmittableOnWireTimeoutMillis(Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;)Ljava/lang/Long;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;->mRetransmittableOnWireTimeoutMillis:Ljava/lang/Long;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRetryWithoutAltSvcOnQuicErrors(Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;)Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;->mRetryWithoutAltSvcOnQuicErrors:Ljava/lang/Boolean;

    return-object p0
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;->mQuicHostAllowlist:Ljava/util/Set;

    .line 172
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;->mEnabledQuicVersions:Ljava/util/Set;

    .line 173
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;->mConnectionOptions:Ljava/util/Set;

    .line 174
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;->mClientConnectionOptions:Ljava/util/Set;

    .line 188
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;->mExtraQuicheFlags:Ljava/util/Set;

    .line 190
    return-void
.end method


# virtual methods
.method public blacklist addAllowedQuicHost(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;
    .registers 3
    .param p1, "quicHost"    # Ljava/lang/String;

    .line 201
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;->mQuicHostAllowlist:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 202
    return-object p0
.end method

.method public blacklist addClientConnectionOption(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;
    .registers 3
    .param p1, "clientConnectionOption"    # Ljava/lang/String;

    .line 252
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;->mClientConnectionOptions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 253
    return-object p0
.end method

.method public blacklist addConnectionOption(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;
    .registers 3
    .param p1, "connectionOption"    # Ljava/lang/String;

    .line 240
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;->mConnectionOptions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 241
    return-object p0
.end method

.method public blacklist addEnabledQuicVersion(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;
    .registers 3
    .param p1, "enabledQuicVersion"    # Ljava/lang/String;

    .line 220
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;->mEnabledQuicVersions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 221
    return-object p0
.end method

.method public blacklist addExtraQuicheFlag(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;
    .registers 3
    .param p1, "extraQuicheFlag"    # Ljava/lang/String;

    .line 476
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;->mExtraQuicheFlags:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 477
    return-object p0
.end method

.method public blacklist build()Landroid/net/connectivity/org/chromium/net/QuicOptions;
    .registers 2

    .line 485
    new-instance v0, Landroid/net/connectivity/org/chromium/net/QuicOptions;

    invoke-direct {v0, p0}, Landroid/net/connectivity/org/chromium/net/QuicOptions;-><init>(Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;)V

    return-object v0
.end method

.method public blacklist closeSessionsOnIpChange(Z)Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;
    .registers 3
    .param p1, "closeSessionsOnIpChange"    # Z

    .line 392
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;->mCloseSessionsOnIpChange:Ljava/lang/Boolean;

    .line 393
    return-object p0
.end method

.method public blacklist delayJobsWithAvailableSpdySession(Z)Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;
    .registers 3
    .param p1, "delayJobsWithAvailableSpdySession"    # Z

    .line 461
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;->mDelayJobsWithAvailableSpdySession:Ljava/lang/Boolean;

    .line 462
    return-object p0
.end method

.method public blacklist enableTlsZeroRtt(Z)Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;
    .registers 3
    .param p1, "enableTlsZeroRtt"    # Z

    .line 310
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;->mEnableTlsZeroRtt:Ljava/lang/Boolean;

    .line 311
    return-object p0
.end method

.method public blacklist goawaySessionsOnIpChange(Z)Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;
    .registers 3
    .param p1, "goawaySessionsOnIpChange"    # Z

    .line 406
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;->mGoawaySessionsOnIpChange:Ljava/lang/Boolean;

    .line 407
    return-object p0
.end method

.method public blacklist increaseBrokenServicePeriodExponentially(Z)Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;
    .registers 3
    .param p1, "increaseBrokenServicePeriodExponentially"    # Z

    .line 446
    nop

    .line 447
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;->mIncreaseBrokenServicePeriodExponentially:Ljava/lang/Boolean;

    .line 448
    return-object p0
.end method

.method public blacklist retryWithoutAltSvcOnQuicErrors(Z)Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;
    .registers 3
    .param p1, "retryWithoutAltSvcOnQuicErrors"    # Z

    .line 293
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;->mRetryWithoutAltSvcOnQuicErrors:Ljava/lang/Boolean;

    .line 294
    return-object p0
.end method

.method public blacklist setCryptoHandshakeTimeoutSeconds(J)Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;
    .registers 4
    .param p1, "cryptoHandshakeTimeoutSeconds"    # J

    .line 333
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;->mCryptoHandshakeTimeoutSeconds:Ljava/lang/Long;

    .line 334
    return-object p0
.end method

.method public blacklist setHandshakeUserAgent(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;
    .registers 2
    .param p1, "handshakeUserAgent"    # Ljava/lang/String;

    .line 281
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;->mHandshakeUserAgent:Ljava/lang/String;

    .line 282
    return-object p0
.end method

.method public blacklist setIdleConnectionTimeout(Ljava/time/Duration;)Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;
    .registers 4
    .param p1, "idleConnectionTimeout"    # Ljava/time/Duration;

    .line 361
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    invoke-virtual {p1}, Ljava/time/Duration;->toSeconds()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;->setIdleConnectionTimeoutSeconds(J)Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setIdleConnectionTimeoutSeconds(J)Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;
    .registers 4
    .param p1, "idleConnectionTimeoutSeconds"    # J

    .line 349
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;->mIdleConnectionTimeoutSeconds:Ljava/lang/Long;

    .line 350
    return-object p0
.end method

.method public blacklist setInMemoryServerConfigsCacheSize(I)Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;
    .registers 3
    .param p1, "inMemoryServerConfigsCacheSize"    # I

    .line 267
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;->mInMemoryServerConfigsCacheSize:Ljava/lang/Integer;

    .line 268
    return-object p0
.end method

.method public blacklist setInitialBrokenServicePeriodSeconds(J)Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;
    .registers 4
    .param p1, "initialBrokenServicePeriodSeconds"    # J

    .line 429
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;->mInitialBrokenServicePeriodSeconds:Ljava/lang/Long;

    .line 430
    return-object p0
.end method

.method public blacklist setPreCryptoHandshakeIdleTimeoutSeconds(J)Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;
    .registers 4
    .param p1, "preCryptoHandshakeIdleTimeoutSeconds"    # J

    .line 322
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;->mPreCryptoHandshakeIdleTimeoutSeconds:Ljava/lang/Long;

    .line 323
    return-object p0
.end method

.method public blacklist setRetransmittableOnWireTimeoutMillis(J)Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;
    .registers 4
    .param p1, "retransmittableOnWireTimeoutMillis"    # J

    .line 378
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;->mRetransmittableOnWireTimeoutMillis:Ljava/lang/Long;

    .line 379
    return-object p0
.end method
