.class public final Landroid/net/http/QuicOptions$Builder;
.super Ljava/lang/Object;
.source "QuicOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/http/QuicOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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

.field private blacklist mCryptoHandshakeTimeout:Ljava/time/Duration;

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

.field private blacklist mIdleConnectionTimeout:Ljava/time/Duration;

.field private blacklist mInMemoryServerConfigsCacheSize:Ljava/lang/Integer;

.field private blacklist mIncreaseBrokenServicePeriodExponentially:Ljava/lang/Boolean;

.field private blacklist mInitialBrokenServicePeriod:Ljava/time/Duration;

.field private blacklist mPreCryptoHandshakeIdleTimeout:Ljava/time/Duration;

.field private final blacklist mQuicHostAllowlist:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRetransmittableOnWireTimeout:Ljava/time/Duration;

.field private blacklist mRetryWithoutAltSvcOnQuicErrors:Ljava/lang/Boolean;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmClientConnectionOptions(Landroid/net/http/QuicOptions$Builder;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Landroid/net/http/QuicOptions$Builder;->mClientConnectionOptions:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCloseSessionsOnIpChange(Landroid/net/http/QuicOptions$Builder;)Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Landroid/net/http/QuicOptions$Builder;->mCloseSessionsOnIpChange:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConnectionOptions(Landroid/net/http/QuicOptions$Builder;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Landroid/net/http/QuicOptions$Builder;->mConnectionOptions:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCryptoHandshakeTimeout(Landroid/net/http/QuicOptions$Builder;)Ljava/time/Duration;
    .registers 1

    iget-object p0, p0, Landroid/net/http/QuicOptions$Builder;->mCryptoHandshakeTimeout:Ljava/time/Duration;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDelayJobsWithAvailableSpdySession(Landroid/net/http/QuicOptions$Builder;)Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Landroid/net/http/QuicOptions$Builder;->mDelayJobsWithAvailableSpdySession:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEnableTlsZeroRtt(Landroid/net/http/QuicOptions$Builder;)Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Landroid/net/http/QuicOptions$Builder;->mEnableTlsZeroRtt:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEnabledQuicVersions(Landroid/net/http/QuicOptions$Builder;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Landroid/net/http/QuicOptions$Builder;->mEnabledQuicVersions:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExtraQuicheFlags(Landroid/net/http/QuicOptions$Builder;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Landroid/net/http/QuicOptions$Builder;->mExtraQuicheFlags:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGoawaySessionsOnIpChange(Landroid/net/http/QuicOptions$Builder;)Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Landroid/net/http/QuicOptions$Builder;->mGoawaySessionsOnIpChange:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandshakeUserAgent(Landroid/net/http/QuicOptions$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/net/http/QuicOptions$Builder;->mHandshakeUserAgent:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIdleConnectionTimeout(Landroid/net/http/QuicOptions$Builder;)Ljava/time/Duration;
    .registers 1

    iget-object p0, p0, Landroid/net/http/QuicOptions$Builder;->mIdleConnectionTimeout:Ljava/time/Duration;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInMemoryServerConfigsCacheSize(Landroid/net/http/QuicOptions$Builder;)Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Landroid/net/http/QuicOptions$Builder;->mInMemoryServerConfigsCacheSize:Ljava/lang/Integer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIncreaseBrokenServicePeriodExponentially(Landroid/net/http/QuicOptions$Builder;)Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Landroid/net/http/QuicOptions$Builder;->mIncreaseBrokenServicePeriodExponentially:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInitialBrokenServicePeriod(Landroid/net/http/QuicOptions$Builder;)Ljava/time/Duration;
    .registers 1

    iget-object p0, p0, Landroid/net/http/QuicOptions$Builder;->mInitialBrokenServicePeriod:Ljava/time/Duration;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreCryptoHandshakeIdleTimeout(Landroid/net/http/QuicOptions$Builder;)Ljava/time/Duration;
    .registers 1

    iget-object p0, p0, Landroid/net/http/QuicOptions$Builder;->mPreCryptoHandshakeIdleTimeout:Ljava/time/Duration;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmQuicHostAllowlist(Landroid/net/http/QuicOptions$Builder;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Landroid/net/http/QuicOptions$Builder;->mQuicHostAllowlist:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRetransmittableOnWireTimeout(Landroid/net/http/QuicOptions$Builder;)Ljava/time/Duration;
    .registers 1

    iget-object p0, p0, Landroid/net/http/QuicOptions$Builder;->mRetransmittableOnWireTimeout:Ljava/time/Duration;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRetryWithoutAltSvcOnQuicErrors(Landroid/net/http/QuicOptions$Builder;)Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Landroid/net/http/QuicOptions$Builder;->mRetryWithoutAltSvcOnQuicErrors:Ljava/lang/Boolean;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroid/net/http/QuicOptions$Builder;->mQuicHostAllowlist:Ljava/util/Set;

    .line 148
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroid/net/http/QuicOptions$Builder;->mEnabledQuicVersions:Ljava/util/Set;

    .line 149
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroid/net/http/QuicOptions$Builder;->mConnectionOptions:Ljava/util/Set;

    .line 150
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroid/net/http/QuicOptions$Builder;->mClientConnectionOptions:Ljava/util/Set;

    .line 177
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroid/net/http/QuicOptions$Builder;->mExtraQuicheFlags:Ljava/util/Set;

    .line 179
    return-void
.end method


# virtual methods
.method public whitelist addAllowedQuicHost(Ljava/lang/String;)Landroid/net/http/QuicOptions$Builder;
    .registers 3
    .param p1, "quicHost"    # Ljava/lang/String;

    .line 191
    iget-object v0, p0, Landroid/net/http/QuicOptions$Builder;->mQuicHostAllowlist:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 192
    return-object p0
.end method

.method public whitelist build()Landroid/net/http/QuicOptions;
    .registers 2

    .line 248
    new-instance v0, Landroid/net/http/QuicOptions;

    invoke-direct {v0, p0}, Landroid/net/http/QuicOptions;-><init>(Landroid/net/http/QuicOptions$Builder;)V

    return-object v0
.end method

.method public whitelist setHandshakeUserAgent(Ljava/lang/String;)Landroid/net/http/QuicOptions$Builder;
    .registers 2
    .param p1, "handshakeUserAgent"    # Ljava/lang/String;

    .line 221
    iput-object p1, p0, Landroid/net/http/QuicOptions$Builder;->mHandshakeUserAgent:Ljava/lang/String;

    .line 222
    return-object p0
.end method

.method public whitelist setIdleConnectionTimeout(Ljava/time/Duration;)Landroid/net/http/QuicOptions$Builder;
    .registers 2
    .param p1, "idleConnectionTimeout"    # Ljava/time/Duration;

    .line 238
    iput-object p1, p0, Landroid/net/http/QuicOptions$Builder;->mIdleConnectionTimeout:Ljava/time/Duration;

    .line 239
    return-object p0
.end method

.method public whitelist setInMemoryServerConfigsCacheSize(I)Landroid/net/http/QuicOptions$Builder;
    .registers 3
    .param p1, "inMemoryServerConfigsCacheSize"    # I

    .line 206
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/net/http/QuicOptions$Builder;->mInMemoryServerConfigsCacheSize:Ljava/lang/Integer;

    .line 207
    return-object p0
.end method
