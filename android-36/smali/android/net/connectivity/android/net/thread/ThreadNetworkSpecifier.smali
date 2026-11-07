.class public final Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier;
.super Landroid/net/NetworkSpecifier;
.source "ThreadNetworkSpecifier.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mActiveTimestamp:Landroid/net/thread/OperationalDatasetTimestamp;

.field private final blacklist mExtendedPanId:[B

.field private final blacklist mRouterEligibleForLeader:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 146
    new-instance v0, Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier$1;

    invoke-direct {v0}, Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier$1;-><init>()V

    sput-object v0, Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier$Builder;

    .line 46
    invoke-direct {p0}, Landroid/net/NetworkSpecifier;-><init>()V

    .line 47
    invoke-static {p1}, Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier$Builder;->-$$Nest$fgetmExtendedPanId(Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier$Builder;)[B

    move-result-object v0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier;->mExtendedPanId:[B

    .line 48
    invoke-static {p1}, Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier$Builder;->-$$Nest$fgetmActiveTimestamp(Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier$Builder;)Landroid/net/thread/OperationalDatasetTimestamp;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier;->mActiveTimestamp:Landroid/net/thread/OperationalDatasetTimestamp;

    .line 49
    invoke-static {p1}, Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier$Builder;->-$$Nest$fgetmRouterEligibleForLeader(Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier;->mRouterEligibleForLeader:Z

    .line 50
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier$Builder;Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier;-><init>(Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier$Builder;)V

    return-void
.end method

.method private static varargs blacklist deepHashCode([Ljava/lang/Object;)I
    .registers 2
    .param p0, "values"    # [Ljava/lang/Object;

    .line 120
    invoke-static {p0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public whitelist canBeSatisfiedBy(Landroid/net/NetworkSpecifier;)Z
    .registers 6
    .param p1, "other"    # Landroid/net/NetworkSpecifier;

    .line 86
    instance-of v0, p1, Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 87
    return v1

    .line 89
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier;

    .line 91
    .local v0, "otherSpecifier":Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier;
    iget-object v2, p0, Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier;->mActiveTimestamp:Landroid/net/thread/OperationalDatasetTimestamp;

    if-eqz v2, :cond_18

    iget-object v2, p0, Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier;->mActiveTimestamp:Landroid/net/thread/OperationalDatasetTimestamp;

    iget-object v3, v0, Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier;->mActiveTimestamp:Landroid/net/thread/OperationalDatasetTimestamp;

    invoke-virtual {v2, v3}, Landroid/net/thread/OperationalDatasetTimestamp;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 92
    return v1

    .line 95
    :cond_18
    iget-object v1, p0, Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier;->mExtendedPanId:[B

    iget-object v2, v0, Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier;->mExtendedPanId:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 100
    instance-of v0, p1, Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 101
    return v1

    .line 102
    :cond_6
    const/4 v0, 0x1

    if-ne p0, p1, :cond_a

    .line 103
    return v0

    .line 106
    :cond_a
    move-object v2, p1

    check-cast v2, Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier;

    .line 108
    .local v2, "otherSpecifier":Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier;
    iget-object v3, p0, Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier;->mExtendedPanId:[B

    iget-object v4, v2, Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier;->mExtendedPanId:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_29

    iget-object v3, p0, Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier;->mActiveTimestamp:Landroid/net/thread/OperationalDatasetTimestamp;

    iget-object v4, v2, Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier;->mActiveTimestamp:Landroid/net/thread/OperationalDatasetTimestamp;

    .line 109
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    iget-boolean v3, p0, Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier;->mRouterEligibleForLeader:Z

    iget-boolean v4, v2, Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier;->mRouterEligibleForLeader:Z

    if-ne v3, v4, :cond_29

    move v1, v0

    goto :goto_2a

    :cond_29
    nop

    .line 108
    :goto_2a
    return v1
.end method

.method public blacklist getActiveTimestamp()Landroid/net/thread/OperationalDatasetTimestamp;
    .registers 2

    .line 64
    iget-object v0, p0, Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier;->mActiveTimestamp:Landroid/net/thread/OperationalDatasetTimestamp;

    return-object v0
.end method

.method public blacklist getExtendedPanId()[B
    .registers 2

    .line 55
    iget-object v0, p0, Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier;->mExtendedPanId:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 115
    iget-object v0, p0, Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier;->mExtendedPanId:[B

    iget-object v1, p0, Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier;->mActiveTimestamp:Landroid/net/thread/OperationalDatasetTimestamp;

    iget-boolean v2, p0, Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier;->mRouterEligibleForLeader:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier;->deepHashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isRouterEligibleForLeader()Z
    .registers 2

    .line 72
    iget-boolean v0, p0, Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier;->mRouterEligibleForLeader:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ThreadNetworkSpecifier{extendedPanId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier;->mExtendedPanId:[B

    .line 126
    invoke-static {v1}, Landroid/net/connectivity/com/android/net/module/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activeTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier;->mActiveTimestamp:Landroid/net/thread/OperationalDatasetTimestamp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", routerEligibleForLeader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier;->mRouterEligibleForLeader:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 141
    iget-object v0, p0, Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier;->mExtendedPanId:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 142
    iget-object v0, p0, Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier;->mActiveTimestamp:Landroid/net/thread/OperationalDatasetTimestamp;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier;->mActiveTimestamp:Landroid/net/thread/OperationalDatasetTimestamp;

    invoke-virtual {v0}, Landroid/net/thread/OperationalDatasetTimestamp;->toTlvValue()[B

    move-result-object v0

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 143
    iget-boolean v0, p0, Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier;->mRouterEligibleForLeader:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 144
    return-void
.end method
