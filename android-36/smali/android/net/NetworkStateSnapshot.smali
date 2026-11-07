.class public final Landroid/net/NetworkStateSnapshot;
.super Ljava/lang/Object;
.source "NetworkStateSnapshot.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/NetworkStateSnapshot;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mLegacyType:I

.field private final blacklist mLinkProperties:Landroid/net/LinkProperties;

.field private final blacklist mNetwork:Landroid/net/Network;

.field private final blacklist mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private final blacklist mSubscriberId:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 149
    new-instance v0, Landroid/net/NetworkStateSnapshot$1;

    invoke-direct {v0}, Landroid/net/NetworkStateSnapshot$1;-><init>()V

    sput-object v0, Landroid/net/NetworkStateSnapshot;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/Network;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Ljava/lang/String;I)V
    .registers 7
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p3, "linkProperties"    # Landroid/net/LinkProperties;
    .param p4, "subscriberId"    # Ljava/lang/String;
    .param p5, "legacyType"    # I

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    iput-object v0, p0, Landroid/net/NetworkStateSnapshot;->mNetwork:Landroid/net/Network;

    .line 70
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkCapabilities;

    iput-object v0, p0, Landroid/net/NetworkStateSnapshot;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 71
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkProperties;

    iput-object v0, p0, Landroid/net/NetworkStateSnapshot;->mLinkProperties:Landroid/net/LinkProperties;

    .line 72
    iput-object p4, p0, Landroid/net/NetworkStateSnapshot;->mSubscriberId:Ljava/lang/String;

    .line 73
    iput p5, p0, Landroid/net/NetworkStateSnapshot;->mLegacyType:I

    .line 74
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const-class v0, Landroid/net/Network;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    iput-object v0, p0, Landroid/net/NetworkStateSnapshot;->mNetwork:Landroid/net/Network;

    .line 79
    const-class v0, Landroid/net/NetworkCapabilities;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkCapabilities;

    iput-object v0, p0, Landroid/net/NetworkStateSnapshot;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 80
    const-class v0, Landroid/net/LinkProperties;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkProperties;

    iput-object v0, p0, Landroid/net/NetworkStateSnapshot;->mLinkProperties:Landroid/net/LinkProperties;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStateSnapshot;->mSubscriberId:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkStateSnapshot;->mLegacyType:I

    .line 83
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 166
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 167
    :cond_4
    instance-of v1, p1, Landroid/net/NetworkStateSnapshot;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 168
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/NetworkStateSnapshot;

    .line 169
    .local v1, "that":Landroid/net/NetworkStateSnapshot;
    iget v3, p0, Landroid/net/NetworkStateSnapshot;->mLegacyType:I

    iget v4, v1, Landroid/net/NetworkStateSnapshot;->mLegacyType:I

    if-ne v3, v4, :cond_3c

    iget-object v3, p0, Landroid/net/NetworkStateSnapshot;->mNetwork:Landroid/net/Network;

    iget-object v4, v1, Landroid/net/NetworkStateSnapshot;->mNetwork:Landroid/net/Network;

    .line 170
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    iget-object v3, p0, Landroid/net/NetworkStateSnapshot;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v4, v1, Landroid/net/NetworkStateSnapshot;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 171
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    iget-object v3, p0, Landroid/net/NetworkStateSnapshot;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v4, v1, Landroid/net/NetworkStateSnapshot;->mLinkProperties:Landroid/net/LinkProperties;

    .line 172
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    iget-object v3, p0, Landroid/net/NetworkStateSnapshot;->mSubscriberId:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/NetworkStateSnapshot;->mSubscriberId:Ljava/lang/String;

    .line 173
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    goto :goto_3d

    :cond_3c
    move v0, v2

    .line 169
    :goto_3d
    return v0
.end method

.method public blacklist getLegacyType()I
    .registers 2

    .line 131
    iget v0, p0, Landroid/net/NetworkStateSnapshot;->mLegacyType:I

    return v0
.end method

.method public blacklist getLinkProperties()Landroid/net/LinkProperties;
    .registers 2

    .line 100
    iget-object v0, p0, Landroid/net/NetworkStateSnapshot;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method public blacklist getNetwork()Landroid/net/Network;
    .registers 2

    .line 88
    iget-object v0, p0, Landroid/net/NetworkStateSnapshot;->mNetwork:Landroid/net/Network;

    return-object v0
.end method

.method public blacklist getNetworkCapabilities()Landroid/net/NetworkCapabilities;
    .registers 2

    .line 94
    iget-object v0, p0, Landroid/net/NetworkStateSnapshot;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    return-object v0
.end method

.method public blacklist getSubId()I
    .registers 3

    .line 116
    iget-object v0, p0, Landroid/net/NetworkStateSnapshot;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 117
    iget-object v0, p0, Landroid/net/NetworkStateSnapshot;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v0

    .line 118
    .local v0, "spec":Landroid/net/NetworkSpecifier;
    instance-of v1, v0, Landroid/net/TelephonyNetworkSpecifier;

    if-eqz v1, :cond_1b

    .line 119
    move-object v1, v0

    check-cast v1, Landroid/net/TelephonyNetworkSpecifier;

    invoke-virtual {v1}, Landroid/net/TelephonyNetworkSpecifier;->getSubscriptionId()I

    move-result v1

    return v1

    .line 122
    .end local v0    # "spec":Landroid/net/NetworkSpecifier;
    :cond_1b
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getSubscriberId()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 111
    iget-object v0, p0, Landroid/net/NetworkStateSnapshot;->mSubscriberId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 178
    iget-object v0, p0, Landroid/net/NetworkStateSnapshot;->mNetwork:Landroid/net/Network;

    iget-object v1, p0, Landroid/net/NetworkStateSnapshot;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v2, p0, Landroid/net/NetworkStateSnapshot;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v3, p0, Landroid/net/NetworkStateSnapshot;->mSubscriberId:Ljava/lang/String;

    iget v4, p0, Landroid/net/NetworkStateSnapshot;->mLegacyType:I

    .line 179
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 178
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkStateSnapshot{network="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/NetworkStateSnapshot;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", networkCapabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/NetworkStateSnapshot;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", linkProperties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/NetworkStateSnapshot;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subscriberId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/NetworkStateSnapshot;->mSubscriberId:Ljava/lang/String;

    .line 188
    invoke-static {v1}, Landroid/net/connectivity/com/android/net/module/util/NetworkIdentityUtils;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", legacyType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/NetworkStateSnapshot;->mLegacyType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 141
    iget-object v0, p0, Landroid/net/NetworkStateSnapshot;->mNetwork:Landroid/net/Network;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 142
    iget-object v0, p0, Landroid/net/NetworkStateSnapshot;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 143
    iget-object v0, p0, Landroid/net/NetworkStateSnapshot;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 144
    iget-object v0, p0, Landroid/net/NetworkStateSnapshot;->mSubscriberId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget v0, p0, Landroid/net/NetworkStateSnapshot;->mLegacyType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    return-void
.end method
