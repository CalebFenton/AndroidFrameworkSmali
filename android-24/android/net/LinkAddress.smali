.class public Landroid/net/LinkAddress;
.super Ljava/lang/Object;
.source "LinkAddress.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/LinkAddress$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private address:Ljava/net/InetAddress;

.field private flags:I

.field private prefixLength:I

.field private scope:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 320
    new-instance v0, Landroid/net/LinkAddress$1;

    #@2
    invoke-direct {v0}, Landroid/net/LinkAddress$1;-><init>()V

    #@5
    .line 319
    sput-object v0, Landroid/net/LinkAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 173
    invoke-direct {p0, p1, v0, v0}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;II)V

    #@4
    .line 174
    iget-object v0, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    #@6
    invoke-static {v0}, Landroid/net/LinkAddress;->scopeForUnicastAddress(Ljava/net/InetAddress;)I

    #@9
    move-result v0

    #@a
    iput v0, p0, Landroid/net/LinkAddress;->scope:I

    #@c
    .line 172
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "scope"    # I

    #@0
    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 187
    invoke-static {p1}, Landroid/net/NetworkUtils;->parseIpAndMask(Ljava/lang/String;)Landroid/util/Pair;

    #@6
    move-result-object v0

    #@7
    .line 188
    .local v0, "ipAndMask":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/net/InetAddress;Ljava/lang/Integer;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@9
    check-cast v1, Ljava/net/InetAddress;

    #@b
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@d
    check-cast v2, Ljava/lang/Integer;

    #@f
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@12
    move-result v2

    #@13
    invoke-direct {p0, v1, v2, p2, p3}, Landroid/net/LinkAddress;->init(Ljava/net/InetAddress;III)V

    #@16
    .line 185
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .locals 1
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "prefixLength"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 151
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;III)V

    #@4
    .line 152
    invoke-static {p1}, Landroid/net/LinkAddress;->scopeForUnicastAddress(Ljava/net/InetAddress;)I

    #@7
    move-result v0

    #@8
    iput v0, p0, Landroid/net/LinkAddress;->scope:I

    #@a
    .line 150
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;III)V
    .locals 0
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "prefixLength"    # I
    .param p3, "flags"    # I
    .param p4, "scope"    # I

    #@0
    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 140
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/LinkAddress;->init(Ljava/net/InetAddress;III)V

    #@6
    .line 139
    return-void
.end method

.method public constructor <init>(Ljava/net/InterfaceAddress;)V
    .locals 2
    .param p1, "interfaceAddress"    # Ljava/net/InterfaceAddress;

    #@0
    .prologue
    .line 162
    invoke-virtual {p1}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    #@3
    move-result-object v0

    #@4
    .line 163
    invoke-virtual {p1}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S

    #@7
    move-result v1

    #@8
    .line 162
    invoke-direct {p0, v0, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    #@b
    .line 161
    return-void
.end method

.method private init(Ljava/net/InetAddress;III)V
    .locals 3
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "prefixLength"    # I
    .param p3, "flags"    # I
    .param p4, "scope"    # I

    #@0
    .prologue
    .line 115
    if-eqz p1, :cond_0

    #@2
    .line 116
    invoke-virtual {p1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    #@5
    move-result v0

    #@6
    .line 115
    if-nez v0, :cond_0

    #@8
    .line 117
    if-gez p2, :cond_1

    #@a
    .line 120
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "Bad LinkAddress params "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    .line 121
    const-string/jumbo v2, "/"

    #@1f
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v0

    #@2f
    .line 118
    :cond_1
    instance-of v0, p1, Ljava/net/Inet4Address;

    #@31
    if-eqz v0, :cond_2

    #@33
    const/16 v0, 0x20

    #@35
    if-gt p2, v0, :cond_0

    #@37
    .line 119
    :cond_2
    const/16 v0, 0x80

    #@39
    if-gt p2, v0, :cond_0

    #@3b
    .line 123
    iput-object p1, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    #@3d
    .line 124
    iput p2, p0, Landroid/net/LinkAddress;->prefixLength:I

    #@3f
    .line 125
    iput p3, p0, Landroid/net/LinkAddress;->flags:I

    #@41
    .line 126
    iput p4, p0, Landroid/net/LinkAddress;->scope:I

    #@43
    .line 114
    return-void
.end method

.method private isIPv6ULA()Z
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 104
    iget-object v2, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    #@3
    if-eqz v2, :cond_1

    #@5
    iget-object v2, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    #@7
    instance-of v2, v2, Ljava/net/Inet6Address;

    #@9
    if-eqz v2, :cond_1

    #@b
    .line 105
    iget-object v2, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    #@d
    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    #@10
    move-result-object v0

    #@11
    .line 106
    .local v0, "bytes":[B
    aget-byte v2, v0, v1

    #@13
    and-int/lit8 v2, v2, -0x4

    #@15
    const/4 v3, -0x4

    #@16
    if-ne v2, v3, :cond_0

    #@18
    const/4 v1, 0x1

    #@19
    :cond_0
    return v1

    #@1a
    .line 108
    .end local v0    # "bytes":[B
    :cond_1
    return v1
.end method

.method static scopeForUnicastAddress(Ljava/net/InetAddress;)I
    .locals 1
    .param p0, "addr"    # Ljava/net/InetAddress;

    #@0
    .prologue
    .line 80
    invoke-virtual {p0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 81
    sget v0, Landroid/system/OsConstants;->RT_SCOPE_HOST:I

    #@8
    return v0

    #@9
    .line 84
    :cond_0
    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_1

    #@f
    invoke-virtual {p0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_2

    #@15
    .line 85
    :cond_1
    sget v0, Landroid/system/OsConstants;->RT_SCOPE_LINK:I

    #@17
    return v0

    #@18
    .line 90
    :cond_2
    instance-of v0, p0, Ljava/net/Inet4Address;

    #@1a
    if-nez v0, :cond_3

    #@1c
    invoke-virtual {p0}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_3

    #@22
    .line 91
    sget v0, Landroid/system/OsConstants;->RT_SCOPE_SITE:I

    #@24
    return v0

    #@25
    .line 94
    :cond_3
    sget v0, Landroid/system/OsConstants;->RT_SCOPE_UNIVERSE:I

    #@27
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 303
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 212
    instance-of v2, p1, Landroid/net/LinkAddress;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 213
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 215
    check-cast v0, Landroid/net/LinkAddress;

    #@9
    .line 216
    .local v0, "linkAddress":Landroid/net/LinkAddress;
    iget-object v2, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    #@b
    iget-object v3, v0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    #@d
    invoke-virtual {v2, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_1

    #@13
    .line 217
    iget v2, p0, Landroid/net/LinkAddress;->prefixLength:I

    #@15
    iget v3, v0, Landroid/net/LinkAddress;->prefixLength:I

    #@17
    if-ne v2, v3, :cond_1

    #@19
    .line 218
    iget v2, p0, Landroid/net/LinkAddress;->flags:I

    #@1b
    iget v3, v0, Landroid/net/LinkAddress;->flags:I

    #@1d
    if-ne v2, v3, :cond_1

    #@1f
    .line 219
    iget v2, p0, Landroid/net/LinkAddress;->scope:I

    #@21
    iget v3, v0, Landroid/net/LinkAddress;->scope:I

    #@23
    if-ne v2, v3, :cond_1

    #@25
    const/4 v1, 0x1

    #@26
    .line 216
    :cond_1
    return v1
.end method

.method public getAddress()Ljava/net/InetAddress;
    .locals 1

    #@0
    .prologue
    .line 249
    iget-object v0, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    #@2
    return-object v0
.end method

.method public getFlags()I
    .locals 1

    #@0
    .prologue
    .line 272
    iget v0, p0, Landroid/net/LinkAddress;->flags:I

    #@2
    return v0
.end method

.method public getNetworkPrefixLength()I
    .locals 1

    #@0
    .prologue
    .line 265
    invoke-virtual {p0}, Landroid/net/LinkAddress;->getPrefixLength()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getPrefixLength()I
    .locals 1

    #@0
    .prologue
    .line 256
    iget v0, p0, Landroid/net/LinkAddress;->prefixLength:I

    #@2
    return v0
.end method

.method public getScope()I
    .locals 1

    #@0
    .prologue
    .line 279
    iget v0, p0, Landroid/net/LinkAddress;->scope:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 227
    iget-object v0, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    #@2
    invoke-virtual {v0}, Ljava/net/InetAddress;->hashCode()I

    #@5
    move-result v0

    #@6
    iget v1, p0, Landroid/net/LinkAddress;->prefixLength:I

    #@8
    mul-int/lit8 v1, v1, 0xb

    #@a
    add-int/2addr v0, v1

    #@b
    iget v1, p0, Landroid/net/LinkAddress;->flags:I

    #@d
    mul-int/lit8 v1, v1, 0x13

    #@f
    add-int/2addr v0, v1

    #@10
    iget v1, p0, Landroid/net/LinkAddress;->scope:I

    #@12
    mul-int/lit8 v1, v1, 0x2b

    #@14
    add-int/2addr v0, v1

    #@15
    return v0
.end method

.method public isGlobalPreferred()Z
    .locals 8

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    const-wide/16 v6, 0x0

    #@4
    .line 293
    iget v2, p0, Landroid/net/LinkAddress;->scope:I

    #@6
    sget v3, Landroid/system/OsConstants;->RT_SCOPE_UNIVERSE:I

    #@8
    if-ne v2, v3, :cond_0

    #@a
    .line 294
    invoke-direct {p0}, Landroid/net/LinkAddress;->isIPv6ULA()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_2

    #@10
    :cond_0
    move v0, v1

    #@11
    .line 293
    :cond_1
    :goto_0
    return v0

    #@12
    .line 295
    :cond_2
    iget v2, p0, Landroid/net/LinkAddress;->flags:I

    #@14
    sget v3, Landroid/system/OsConstants;->IFA_F_DADFAILED:I

    #@16
    sget v4, Landroid/system/OsConstants;->IFA_F_DEPRECATED:I

    #@18
    or-int/2addr v3, v4

    #@19
    and-int/2addr v2, v3

    #@1a
    int-to-long v2, v2

    #@1b
    cmp-long v2, v2, v6

    #@1d
    if-nez v2, :cond_0

    #@1f
    .line 296
    iget v2, p0, Landroid/net/LinkAddress;->flags:I

    #@21
    sget v3, Landroid/system/OsConstants;->IFA_F_TENTATIVE:I

    #@23
    and-int/2addr v2, v3

    #@24
    int-to-long v2, v2

    #@25
    cmp-long v2, v2, v6

    #@27
    if-eqz v2, :cond_1

    #@29
    iget v2, p0, Landroid/net/LinkAddress;->flags:I

    #@2b
    sget v3, Landroid/system/OsConstants;->IFA_F_OPTIMISTIC:I

    #@2d
    and-int/2addr v2, v3

    #@2e
    int-to-long v2, v2

    #@2f
    cmp-long v2, v2, v6

    #@31
    if-nez v2, :cond_1

    #@33
    move v0, v1

    #@34
    goto :goto_0
.end method

.method public isSameAddressAs(Landroid/net/LinkAddress;)Z
    .locals 3
    .param p1, "other"    # Landroid/net/LinkAddress;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 242
    iget-object v1, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    #@3
    iget-object v2, p1, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    #@5
    invoke-virtual {v1, v2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    iget v1, p0, Landroid/net/LinkAddress;->prefixLength:I

    #@d
    iget v2, p1, Landroid/net/LinkAddress;->prefixLength:I

    #@f
    if-ne v1, v2, :cond_0

    #@11
    const/4 v0, 0x1

    #@12
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    #@7
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    const-string/jumbo v1, "/"

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    iget v1, p0, Landroid/net/LinkAddress;->prefixLength:I

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 310
    iget-object v0, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    #@2
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    #@9
    .line 311
    iget v0, p0, Landroid/net/LinkAddress;->prefixLength:I

    #@b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@e
    .line 312
    iget v0, p0, Landroid/net/LinkAddress;->flags:I

    #@10
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 313
    iget v0, p0, Landroid/net/LinkAddress;->scope:I

    #@15
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 309
    return-void
.end method
