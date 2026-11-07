.class public final Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;
.super Ljava/lang/Object;
.source "IkeSecurityParameterIndex.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field static final blacklist sAssignedIkeSpis:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/util/Pair<",
            "Ljava/net/InetAddress;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCloseGuard:Landroid/util/CloseGuard;

.field private blacklist mIsBoundToIkeSaRecord:Z

.field private blacklist mSourceAddress:Ljava/net/InetAddress;

.field private final blacklist mSpi:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;->sAssignedIkeSpis:Ljava/util/Set;

    return-void
.end method

.method constructor blacklist <init>(Ljava/net/InetAddress;J)V
    .registers 6
    .param p1, "sourceAddress"    # Ljava/net/InetAddress;
    .param p2, "spi"    # J

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/util/CloseGuard;

    invoke-direct {v0}, Landroid/util/CloseGuard;-><init>()V

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;->mCloseGuard:Landroid/util/CloseGuard;

    .line 59
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;->mSourceAddress:Ljava/net/InetAddress;

    .line 60
    iput-wide p2, p0, Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;->mSpi:J

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;->mIsBoundToIkeSaRecord:Z

    .line 62
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;->mCloseGuard:Landroid/util/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Landroid/util/CloseGuard;->open(Ljava/lang/String;)V

    .line 63
    return-void
.end method


# virtual methods
.method public blacklist bindToIkeSaRecord()V
    .registers 3

    .line 127
    iget-boolean v0, p0, Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;->mIsBoundToIkeSaRecord:Z

    if-nez v0, :cond_8

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;->mIsBoundToIkeSaRecord:Z

    .line 131
    return-void

    .line 128
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already bound"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api close()V
    .registers 6

    .line 83
    iget-boolean v0, p0, Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;->mIsBoundToIkeSaRecord:Z

    if-eqz v0, :cond_5

    .line 84
    return-void

    .line 87
    :cond_5
    sget-object v0, Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;->sAssignedIkeSpis:Ljava/util/Set;

    new-instance v1, Landroid/util/Pair;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;->mSourceAddress:Ljava/net/InetAddress;

    iget-wide v3, p0, Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;->mSpi:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->close()V

    .line 89
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;->mCloseGuard:Landroid/util/CloseGuard;

    if-eqz v0, :cond_9

    .line 95
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->warnIfOpen()V

    .line 97
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;->close()V

    .line 98
    return-void
.end method

.method public blacklist getSourceAddress()Ljava/net/InetAddress;
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;->mSourceAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public blacklist getSpi()J
    .registers 3

    .line 71
    iget-wide v0, p0, Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;->mSpi:J

    return-wide v0
.end method

.method public blacklist migrate(Ljava/net/InetAddress;)V
    .registers 8
    .param p1, "newSourceAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;->mSourceAddress:Ljava/net/InetAddress;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 104
    return-void

    .line 107
    :cond_9
    sget-object v0, Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;->sAssignedIkeSpis:Ljava/util/Set;

    new-instance v1, Landroid/util/Pair;

    iget-wide v2, p0, Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;->mSpi:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 117
    sget-object v0, Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;->sAssignedIkeSpis:Ljava/util/Set;

    new-instance v1, Landroid/util/Pair;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;->mSourceAddress:Ljava/net/InetAddress;

    iget-wide v3, p0, Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;->mSpi:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 118
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;->mSourceAddress:Ljava/net/InetAddress;

    .line 119
    return-void

    .line 108
    :cond_31
    new-instance v0, Ljava/io/IOException;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;->mSourceAddress:Ljava/net/InetAddress;

    .line 111
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;->mSpi:J

    .line 112
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 113
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;->mSpi:J

    .line 114
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    .line 109
    const-string v2, "SPI colllision migrating IKE SPI <%s, %d> to <%s, %d>"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist unbindFromIkeSaRecord()V
    .registers 2

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;->mIsBoundToIkeSaRecord:Z

    .line 140
    return-void
.end method
