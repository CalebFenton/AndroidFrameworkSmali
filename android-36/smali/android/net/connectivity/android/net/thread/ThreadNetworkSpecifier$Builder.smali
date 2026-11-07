.class public final Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier$Builder;
.super Ljava/lang/Object;
.source "ThreadNetworkSpecifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mActiveTimestamp:Landroid/net/thread/OperationalDatasetTimestamp;

.field private final blacklist mExtendedPanId:[B

.field private blacklist mRouterEligibleForLeader:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActiveTimestamp(Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier$Builder;)Landroid/net/thread/OperationalDatasetTimestamp;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier$Builder;->mActiveTimestamp:Landroid/net/thread/OperationalDatasetTimestamp;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExtendedPanId(Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier$Builder;)[B
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier$Builder;->mExtendedPanId:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRouterEligibleForLeader(Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier$Builder;->mRouterEligibleForLeader:Z

    return p0
.end method

.method public constructor blacklist <init>(Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier;)V
    .registers 3
    .param p1, "specifier"    # Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier;

    .line 199
    invoke-virtual {p1}, Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier;->getExtendedPanId()[B

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier$Builder;-><init>([B)V

    .line 200
    invoke-virtual {p1}, Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier;->getActiveTimestamp()Landroid/net/thread/OperationalDatasetTimestamp;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier$Builder;->setActiveTimestamp(Landroid/net/thread/OperationalDatasetTimestamp;)Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier$Builder;

    .line 201
    invoke-virtual {p1}, Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier;->isRouterEligibleForLeader()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier$Builder;->setRouterEligibleForLeader(Z)Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier$Builder;

    .line 202
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 5
    .param p1, "extendedPanId"    # [B

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    if-eqz p1, :cond_16

    array-length v0, p1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_16

    .line 190
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier$Builder;->mExtendedPanId:[B

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier$Builder;->mRouterEligibleForLeader:Z

    .line 192
    return-void

    .line 184
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extendedPanId is null or length is not 8: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 188
    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist build()Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier;
    .registers 3

    .line 224
    new-instance v0, Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier;-><init>(Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier$Builder;Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier-IA;)V

    return-object v0
.end method

.method public blacklist setActiveTimestamp(Landroid/net/thread/OperationalDatasetTimestamp;)Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier$Builder;
    .registers 2
    .param p1, "activeTimestamp"    # Landroid/net/thread/OperationalDatasetTimestamp;

    .line 207
    iput-object p1, p0, Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier$Builder;->mActiveTimestamp:Landroid/net/thread/OperationalDatasetTimestamp;

    .line 208
    return-object p0
.end method

.method public blacklist setRouterEligibleForLeader(Z)Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier$Builder;
    .registers 2
    .param p1, "eligible"    # Z

    .line 217
    iput-boolean p1, p0, Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier$Builder;->mRouterEligibleForLeader:Z

    .line 218
    return-object p0
.end method
