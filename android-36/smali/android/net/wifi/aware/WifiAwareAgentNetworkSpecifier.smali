.class public Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;
.super Landroid/net/NetworkSpecifier;
.source "WifiAwareAgentNetworkSpecifier.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;
    }
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "WifiAwareAgentNs"

.field private static final greylist-max-o VDBG:Z = false


# instance fields
.field private greylist-max-o mDigester:Ljava/security/MessageDigest;

.field private greylist-max-o mNetworkSpecifiers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmNetworkSpecifiers(Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mNetworkSpecifiers:Ljava/util/Set;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 79
    new-instance v0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$1;

    invoke-direct {v0}, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$1;-><init>()V

    sput-object v0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Landroid/net/NetworkSpecifier;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mNetworkSpecifiers:Ljava/util/Set;

    .line 50
    invoke-direct {p0}, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->initialize()V

    .line 51
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;)V
    .registers 4
    .param p1, "ns"    # Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    .line 53
    invoke-direct {p0}, Landroid/net/NetworkSpecifier;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mNetworkSpecifiers:Ljava/util/Set;

    .line 54
    invoke-direct {p0}, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->initialize()V

    .line 55
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mNetworkSpecifiers:Ljava/util/Set;

    invoke-direct {p0, p1}, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->convert(Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;)Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method

.method public constructor greylist-max-o <init>([Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;)V
    .registers 7
    .param p1, "nss"    # [Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    .line 58
    invoke-direct {p0}, Landroid/net/NetworkSpecifier;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mNetworkSpecifiers:Ljava/util/Set;

    .line 59
    invoke-direct {p0}, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->initialize()V

    .line 60
    array-length v0, p1

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_1f

    aget-object v2, p1, v1

    .line 61
    .local v2, "ns":Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
    iget-object v3, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mNetworkSpecifiers:Ljava/util/Set;

    invoke-direct {p0, v2}, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->convert(Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;)Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    .end local v2    # "ns":Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 63
    :cond_1f
    return-void
.end method

.method private greylist-max-o convert(Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;)Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;
    .registers 6
    .param p1, "ns"    # Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    .line 160
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mDigester:Ljava/security/MessageDigest;

    if-nez v0, :cond_6

    .line 161
    const/4 v0, 0x0

    return-object v0

    .line 164
    :cond_6
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 165
    .local v0, "parcel":Landroid/os/Parcel;
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->writeToParcel(Landroid/os/Parcel;I)V

    .line 166
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    .line 167
    .local v1, "bytes":[B
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 169
    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mDigester:Ljava/security/MessageDigest;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->reset()V

    .line 170
    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mDigester:Ljava/security/MessageDigest;

    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 171
    new-instance v2, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;

    iget-object v3, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mDigester:Ljava/security/MessageDigest;

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;-><init>([B)V

    return-object v2
.end method

.method private greylist-max-o initialize()V
    .registers 4

    .line 152
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mDigester:Ljava/security/MessageDigest;
    :try_end_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_8} :catch_a

    .line 156
    nop

    .line 157
    return-void

    .line 153
    :catch_a
    move-exception v0

    .line 154
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v1, "WifiAwareAgentNs"

    const-string v2, "Can not instantiate a SHA-256 digester!? Will match nothing."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-void
.end method


# virtual methods
.method public whitelist canBeSatisfiedBy(Landroid/net/NetworkSpecifier;)Z
    .registers 7
    .param p1, "other"    # Landroid/net/NetworkSpecifier;

    .line 124
    instance-of v0, p1, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 125
    return v1

    .line 127
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;

    .line 130
    .local v0, "otherNs":Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;
    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mNetworkSpecifiers:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;

    .line 131
    .local v3, "baw":Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;
    iget-object v4, v0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mNetworkSpecifiers:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24

    .line 132
    return v1

    .line 134
    .end local v3    # "baw":Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;
    :cond_24
    goto :goto_f

    .line 136
    :cond_25
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 104
    if-ne p1, p0, :cond_4

    .line 105
    const/4 v0, 0x1

    return v0

    .line 107
    :cond_4
    instance-of v0, p1, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;

    if-nez v0, :cond_a

    .line 108
    const/4 v0, 0x0

    return v0

    .line 110
    :cond_a
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mNetworkSpecifiers:Ljava/util/Set;

    move-object v1, p1

    check-cast v1, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;

    iget-object v1, v1, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mNetworkSpecifiers:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 99
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mNetworkSpecifiers:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public greylist-max-o isEmpty()Z
    .registers 2

    .line 66
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mNetworkSpecifiers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public whitelist redact()Landroid/net/NetworkSpecifier;
    .registers 2

    .line 147
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o satisfiesAwareNetworkSpecifier(Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;)Z
    .registers 4
    .param p1, "ns"    # Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    .line 141
    invoke-direct {p0, p1}, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->convert(Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;)Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;

    move-result-object v0

    .line 142
    .local v0, "nsBytes":Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mNetworkSpecifiers:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 115
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ","

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 116
    .local v0, "sj":Ljava/util/StringJoiner;
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mNetworkSpecifiers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;

    .line 117
    .local v2, "baw":Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;
    invoke-virtual {v2}, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 118
    .end local v2    # "baw":Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;
    goto :goto_d

    .line 119
    :cond_21
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 76
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mNetworkSpecifiers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    .line 77
    return-void
.end method
