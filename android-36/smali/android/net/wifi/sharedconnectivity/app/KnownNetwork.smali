.class public final Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;
.super Ljava/lang/Object;
.source "KnownNetwork.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/sharedconnectivity/app/KnownNetwork$Builder;,
        Landroid/net/wifi/sharedconnectivity/app/KnownNetwork$NetworkSource;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist NETWORK_SOURCE_CLOUD_SELF:I = 0x2

.field public static final whitelist NETWORK_SOURCE_NEARBY_SELF:I = 0x1

.field public static final whitelist NETWORK_SOURCE_UNKNOWN:I


# instance fields
.field private final blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mNetworkProviderInfo:Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;

.field private final blacklist mNetworkSource:I

.field private final blacklist mSecurityTypes:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSsid:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 306
    new-instance v0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork$1;

    invoke-direct {v0}, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork$1;-><init>()V

    sput-object v0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/String;Landroid/util/ArraySet;Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "networkSource"    # I
    .param p2, "ssid"    # Ljava/lang/String;
    .param p4, "networkProviderInfo"    # Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;
    .param p5, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 192
    .local p3, "securityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    invoke-static {p1, p2, p3, p4}, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->validate(ILjava/lang/String;Ljava/util/Set;Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;)V

    .line 194
    iput p1, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->mNetworkSource:I

    .line 195
    iput-object p2, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->mSsid:Ljava/lang/String;

    .line 196
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p3}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    iput-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->mSecurityTypes:Landroid/util/ArraySet;

    .line 197
    iput-object p4, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->mNetworkProviderInfo:Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;

    .line 198
    iput-object p5, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->mExtras:Landroid/os/Bundle;

    .line 199
    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/lang/String;Landroid/util/ArraySet;Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;Landroid/os/Bundle;Landroid/net/wifi/sharedconnectivity/app/KnownNetwork-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;-><init>(ILjava/lang/String;Landroid/util/ArraySet;Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;Landroid/os/Bundle;)V

    return-void
.end method

.method public static blacklist readFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;
    .registers 7
    .param p0, "in"    # Landroid/os/Parcel;

    .line 294
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 295
    .local v1, "networkSource":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 296
    .local v2, "mSsid":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v3

    .line 297
    .local v3, "securityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 298
    new-instance v0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;

    .line 299
    invoke-static {p0}, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->readFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;

    move-result-object v4

    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;-><init>(ILjava/lang/String;Landroid/util/ArraySet;Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;Landroid/os/Bundle;)V

    .line 298
    return-object v0

    .line 301
    :cond_21
    new-instance v0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;

    .line 302
    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v5

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;-><init>(ILjava/lang/String;Landroid/util/ArraySet;Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;Landroid/os/Bundle;)V

    .line 301
    return-object v0
.end method

.method private static blacklist validate(ILjava/lang/String;Ljava/util/Set;Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;)V
    .registers 6
    .param p0, "networkSource"    # I
    .param p1, "ssid"    # Ljava/lang/String;
    .param p3, "networkProviderInfo"    # Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;",
            ")V"
        }
    .end annotation

    .line 170
    .local p2, "securityTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    if-eqz p0, :cond_11

    const/4 v1, 0x2

    if-eq p0, v1, :cond_11

    if-ne p0, v0, :cond_9

    goto :goto_11

    .line 173
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal network source"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_11
    :goto_11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 178
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 181
    if-ne p0, v0, :cond_2a

    if-eqz p3, :cond_22

    goto :goto_2a

    .line 182
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Device info must be provided when network source is NETWORK_SOURCE_NEARBY_SELF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_2a
    :goto_2a
    return-void

    .line 179
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SecurityTypes must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SSID must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 270
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 255
    instance-of v0, p1, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 256
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;

    .line 257
    .local v0, "other":Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;
    iget v2, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->mNetworkSource:I

    invoke-virtual {v0}, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->getNetworkSource()I

    move-result v3

    if-ne v2, v3, :cond_37

    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->mSsid:Ljava/lang/String;

    .line 258
    invoke-virtual {v0}, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->getSsid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->mSecurityTypes:Landroid/util/ArraySet;

    .line 259
    invoke-virtual {v0}, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->getSecurityTypes()Ljava/util/Set;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->mNetworkProviderInfo:Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;

    .line 260
    invoke-virtual {v0}, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->getNetworkProviderInfo()Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    const/4 v1, 0x1

    goto :goto_38

    :cond_37
    nop

    .line 257
    :goto_38
    return v1
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 250
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getNetworkProviderInfo()Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;
    .registers 2

    .line 240
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->mNetworkProviderInfo:Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;

    return-object v0
.end method

.method public whitelist getNetworkSource()I
    .registers 2

    .line 208
    iget v0, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->mNetworkSource:I

    return v0
.end method

.method public whitelist getSecurityTypes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->mSecurityTypes:Landroid/util/ArraySet;

    return-object v0
.end method

.method public whitelist getSsid()Ljava/lang/String;
    .registers 2

    .line 218
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->mSsid:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 265
    iget v0, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->mNetworkSource:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->mSsid:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->mSecurityTypes:Landroid/util/ArraySet;

    iget-object v3, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->mNetworkProviderInfo:Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KnownNetwork["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 321
    const-string v1, "NetworkSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->mNetworkSource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 322
    const-string v1, ", ssid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->mSsid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 323
    const-string v1, ", securityTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->mSecurityTypes:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 324
    const-string v1, ", networkProviderInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->mNetworkProviderInfo:Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;

    invoke-virtual {v1}, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 325
    const-string v1, ", extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 326
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 320
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 275
    iget v0, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->mNetworkSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->mSsid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->mSecurityTypes:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    .line 278
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->mNetworkProviderInfo:Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;

    if-eqz v0, :cond_1d

    .line 279
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 280
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->mNetworkProviderInfo:Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_21

    .line 282
    :cond_1d
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 284
    :goto_21
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 285
    return-void
.end method
