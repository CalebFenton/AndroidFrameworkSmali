.class public final Landroid/net/IpPrefix;
.super Ljava/lang/Object;
.source "IpPrefix.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/IpPrefix;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o address:[B

.field private final greylist-max-o prefixLength:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetaddress(Landroid/net/IpPrefix;)[B
    .registers 1

    iget-object p0, p0, Landroid/net/IpPrefix;->address:[B

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 289
    new-instance v0, Landroid/net/IpPrefix$2;

    invoke-direct {v0}, Landroid/net/IpPrefix$2;-><init>()V

    sput-object v0, Landroid/net/IpPrefix;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    invoke-static {p1}, Landroid/net/NetworkUtils;->legacyParseIpAndMask(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 115
    .local v0, "ipAndMask":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/net/InetAddress;Ljava/lang/Integer;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    iput-object v1, p0, Landroid/net/IpPrefix;->address:[B

    .line 116
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Landroid/net/IpPrefix;->prefixLength:I

    .line 117
    invoke-direct {p0}, Landroid/net/IpPrefix;->checkAndMaskAddressAndPrefixLength()V

    .line 118
    return-void
.end method

.method public constructor whitelist <init>(Ljava/net/InetAddress;I)V
    .registers 4
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "prefixLength"    # I

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/IpPrefix;->address:[B

    .line 95
    iput p2, p0, Landroid/net/IpPrefix;->prefixLength:I

    .line 96
    invoke-direct {p0}, Landroid/net/IpPrefix;->checkAndMaskAddressAndPrefixLength()V

    .line 97
    return-void
.end method

.method public constructor greylist-max-o <init>([BI)V
    .registers 4
    .param p1, "address"    # [B
    .param p2, "prefixLength"    # I

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/net/IpPrefix;->address:[B

    .line 79
    iput p2, p0, Landroid/net/IpPrefix;->prefixLength:I

    .line 80
    invoke-direct {p0}, Landroid/net/IpPrefix;->checkAndMaskAddressAndPrefixLength()V

    .line 81
    return-void
.end method

.method private greylist-max-o checkAndMaskAddressAndPrefixLength()V
    .registers 4

    .line 60
    iget-object v0, p0, Landroid/net/IpPrefix;->address:[B

    array-length v0, v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_30

    iget-object v0, p0, Landroid/net/IpPrefix;->address:[B

    array-length v0, v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_e

    goto :goto_30

    .line 61
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IpPrefix has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/IpPrefix;->address:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes which is neither 4 nor 16"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_30
    :goto_30
    iget-object v0, p0, Landroid/net/IpPrefix;->address:[B

    iget v1, p0, Landroid/net/IpPrefix;->prefixLength:I

    invoke-static {v0, v1}, Landroid/net/connectivity/com/android/net/module/util/NetUtils;->maskRawAddress([BI)V

    .line 65
    return-void
.end method

.method public static greylist-max-o lengthComparator()Ljava/util/Comparator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Landroid/net/IpPrefix;",
            ">;"
        }
    .end annotation

    .line 260
    new-instance v0, Landroid/net/IpPrefix$1;

    invoke-direct {v0}, Landroid/net/IpPrefix$1;-><init>()V

    return-object v0
.end method


# virtual methods
.method public whitelist contains(Ljava/net/InetAddress;)Z
    .registers 5
    .param p1, "address"    # Ljava/net/InetAddress;

    .line 189
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 190
    .local v0, "addrBytes":[B
    if-eqz v0, :cond_19

    array-length v1, v0

    iget-object v2, p0, Landroid/net/IpPrefix;->address:[B

    array-length v2, v2

    if-eq v1, v2, :cond_d

    goto :goto_19

    .line 193
    :cond_d
    iget v1, p0, Landroid/net/IpPrefix;->prefixLength:I

    invoke-static {v0, v1}, Landroid/net/connectivity/com/android/net/module/util/NetUtils;->maskRawAddress([BI)V

    .line 194
    iget-object v1, p0, Landroid/net/IpPrefix;->address:[B

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1

    .line 191
    :cond_19
    :goto_19
    const/4 v1, 0x0

    return v1
.end method

.method public greylist-max-o containsPrefix(Landroid/net/IpPrefix;)Z
    .registers 4
    .param p1, "otherPrefix"    # Landroid/net/IpPrefix;

    .line 205
    invoke-virtual {p1}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v0

    iget v1, p0, Landroid/net/IpPrefix;->prefixLength:I

    if-ge v0, v1, :cond_a

    const/4 v0, 0x0

    return v0

    .line 206
    :cond_a
    invoke-virtual {p1}, Landroid/net/IpPrefix;->getRawAddress()[B

    move-result-object v0

    .line 207
    .local v0, "otherAddress":[B
    iget v1, p0, Landroid/net/IpPrefix;->prefixLength:I

    invoke-static {v0, v1}, Landroid/net/connectivity/com/android/net/module/util/NetUtils;->maskRawAddress([BI)V

    .line 208
    iget-object v1, p0, Landroid/net/IpPrefix;->address:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 243
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 129
    instance-of v0, p1, Landroid/net/IpPrefix;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 130
    return v1

    .line 132
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/net/IpPrefix;

    .line 133
    .local v0, "that":Landroid/net/IpPrefix;
    iget-object v2, p0, Landroid/net/IpPrefix;->address:[B

    iget-object v3, v0, Landroid/net/IpPrefix;->address:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget v2, p0, Landroid/net/IpPrefix;->prefixLength:I

    iget v3, v0, Landroid/net/IpPrefix;->prefixLength:I

    if-ne v2, v3, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    return v1
.end method

.method public whitelist getAddress()Ljava/net/InetAddress;
    .registers 4

    .line 154
    :try_start_0
    iget-object v0, p0, Landroid/net/IpPrefix;->address:[B

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 155
    :catch_7
    move-exception v0

    .line 158
    .local v0, "e":Ljava/net/UnknownHostException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Address is invalid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getPrefixLength()I
    .registers 2

    .line 179
    iget v0, p0, Landroid/net/IpPrefix;->prefixLength:I

    return v0
.end method

.method public whitelist getRawAddress()[B
    .registers 2

    .line 169
    iget-object v0, p0, Landroid/net/IpPrefix;->address:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 143
    iget-object v0, p0, Landroid/net/IpPrefix;->address:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iget v1, p0, Landroid/net/IpPrefix;->prefixLength:I

    mul-int/lit8 v1, v1, 0xb

    add-int/2addr v0, v1

    return v0
.end method

.method public greylist-max-o isIPv4()Z
    .registers 2

    .line 222
    invoke-virtual {p0}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet4Address;

    return v0
.end method

.method public greylist-max-o isIPv6()Z
    .registers 2

    .line 215
    invoke-virtual {p0}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet6Address;

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 232
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/net/IpPrefix;->address:[B

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/IpPrefix;->prefixLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_23
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_23} :catch_24

    return-object v0

    .line 233
    :catch_24
    move-exception v0

    .line 235
    .local v0, "e":Ljava/net/UnknownHostException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "IpPrefix with invalid address! Shouldn\'t happen."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 250
    iget-object v0, p0, Landroid/net/IpPrefix;->address:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 251
    iget v0, p0, Landroid/net/IpPrefix;->prefixLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    return-void
.end method
