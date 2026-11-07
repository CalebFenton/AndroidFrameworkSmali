.class public final Landroid/nearby/OffloadCapability;
.super Ljava/lang/Object;
.source "OffloadCapability.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nearby/OffloadCapability$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/nearby/OffloadCapability;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mFastPairSupported:Z

.field private final blacklist mNearbyShareSupported:Z

.field private final blacklist mVersion:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 63
    new-instance v0, Landroid/nearby/OffloadCapability$1;

    invoke-direct {v0}, Landroid/nearby/OffloadCapability$1;-><init>()V

    sput-object v0, Landroid/nearby/OffloadCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ZZJ)V
    .registers 5
    .param p1, "fastPairSupported"    # Z
    .param p2, "nearbyShareSupported"    # Z
    .param p3, "version"    # J

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-boolean p1, p0, Landroid/nearby/OffloadCapability;->mFastPairSupported:Z

    .line 85
    iput-boolean p2, p0, Landroid/nearby/OffloadCapability;->mNearbyShareSupported:Z

    .line 86
    iput-wide p3, p0, Landroid/nearby/OffloadCapability;->mVersion:J

    .line 87
    return-void
.end method

.method synthetic constructor blacklist <init>(ZZJLandroid/nearby/OffloadCapability-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/nearby/OffloadCapability;-><init>(ZZJ)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 91
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 92
    :cond_4
    instance-of v1, p1, Landroid/nearby/OffloadCapability;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 93
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/nearby/OffloadCapability;

    .line 94
    .local v1, "that":Landroid/nearby/OffloadCapability;
    invoke-virtual {p0}, Landroid/nearby/OffloadCapability;->isFastPairSupported()Z

    move-result v3

    invoke-virtual {v1}, Landroid/nearby/OffloadCapability;->isFastPairSupported()Z

    move-result v4

    if-ne v3, v4, :cond_2e

    .line 95
    invoke-virtual {p0}, Landroid/nearby/OffloadCapability;->isNearbyShareSupported()Z

    move-result v3

    invoke-virtual {v1}, Landroid/nearby/OffloadCapability;->isNearbyShareSupported()Z

    move-result v4

    if-ne v3, v4, :cond_2e

    .line 96
    invoke-virtual {p0}, Landroid/nearby/OffloadCapability;->getVersion()J

    move-result-wide v3

    invoke-virtual {v1}, Landroid/nearby/OffloadCapability;->getVersion()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_2e

    goto :goto_2f

    :cond_2e
    move v0, v2

    .line 94
    :goto_2f
    return v0
.end method

.method public whitelist getVersion()J
    .registers 3

    .line 46
    iget-wide v0, p0, Landroid/nearby/OffloadCapability;->mVersion:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 101
    invoke-virtual {p0}, Landroid/nearby/OffloadCapability;->isFastPairSupported()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0}, Landroid/nearby/OffloadCapability;->isNearbyShareSupported()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Landroid/nearby/OffloadCapability;->getVersion()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isFastPairSupported()Z
    .registers 2

    .line 38
    iget-boolean v0, p0, Landroid/nearby/OffloadCapability;->mFastPairSupported:Z

    return v0
.end method

.method public whitelist isNearbyShareSupported()Z
    .registers 2

    .line 42
    iget-boolean v0, p0, Landroid/nearby/OffloadCapability;->mNearbyShareSupported:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OffloadCapability{fastPairSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/nearby/OffloadCapability;->mFastPairSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nearbyShareSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/nearby/OffloadCapability;->mNearbyShareSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/nearby/OffloadCapability;->mVersion:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 52
    iget-boolean v0, p0, Landroid/nearby/OffloadCapability;->mFastPairSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 53
    iget-boolean v0, p0, Landroid/nearby/OffloadCapability;->mNearbyShareSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 54
    iget-wide v0, p0, Landroid/nearby/OffloadCapability;->mVersion:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 55
    return-void
.end method
