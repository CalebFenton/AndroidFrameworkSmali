.class public final Landroid/net/IpPrefix;
.super Ljava/lang/Object;
.source "IpPrefix.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IpPrefix$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/IpPrefix;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final address:[B

.field private final prefixLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 220
    new-instance v0, Landroid/net/IpPrefix$1;

    #@2
    invoke-direct {v0}, Landroid/net/IpPrefix$1;-><init>()V

    #@5
    .line 219
    sput-object v0, Landroid/net/IpPrefix;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 105
    invoke-static {p1}, Landroid/net/NetworkUtils;->parseIpAndMask(Ljava/lang/String;)Landroid/util/Pair;

    #@6
    move-result-object v0

    #@7
    .line 106
    .local v0, "ipAndMask":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/net/InetAddress;Ljava/lang/Integer;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@9
    check-cast v1, Ljava/net/InetAddress;

    #@b
    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    #@e
    move-result-object v1

    #@f
    iput-object v1, p0, Landroid/net/IpPrefix;->address:[B

    #@11
    .line 107
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@13
    check-cast v1, Ljava/lang/Integer;

    #@15
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@18
    move-result v1

    #@19
    iput v1, p0, Landroid/net/IpPrefix;->prefixLength:I

    #@1b
    .line 108
    invoke-direct {p0}, Landroid/net/IpPrefix;->checkAndMaskAddressAndPrefixLength()V

    #@1e
    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .locals 1
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "prefixLength"    # I

    #@0
    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 86
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/net/IpPrefix;->address:[B

    #@9
    .line 87
    iput p2, p0, Landroid/net/IpPrefix;->prefixLength:I

    #@b
    .line 88
    invoke-direct {p0}, Landroid/net/IpPrefix;->checkAndMaskAddressAndPrefixLength()V

    #@e
    .line 83
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1
    .param p1, "address"    # [B
    .param p2, "prefixLength"    # I

    #@0
    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, [B

    #@9
    iput-object v0, p0, Landroid/net/IpPrefix;->address:[B

    #@b
    .line 70
    iput p2, p0, Landroid/net/IpPrefix;->prefixLength:I

    #@d
    .line 71
    invoke-direct {p0}, Landroid/net/IpPrefix;->checkAndMaskAddressAndPrefixLength()V

    #@10
    .line 68
    return-void
.end method

.method private checkAndMaskAddressAndPrefixLength()V
    .locals 3

    #@0
    .prologue
    .line 51
    iget-object v0, p0, Landroid/net/IpPrefix;->address:[B

    #@2
    array-length v0, v0

    #@3
    const/4 v1, 0x4

    #@4
    if-eq v0, v1, :cond_0

    #@6
    iget-object v0, p0, Landroid/net/IpPrefix;->address:[B

    #@8
    array-length v0, v0

    #@9
    const/16 v1, 0x10

    #@b
    if-eq v0, v1, :cond_0

    #@d
    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v2, "IpPrefix has "

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    iget-object v2, p0, Landroid/net/IpPrefix;->address:[B

    #@1d
    array-length v2, v2

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    const-string/jumbo v2, " bytes which is neither 4 nor 16"

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    .line 52
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@30
    throw v0

    #@31
    .line 55
    :cond_0
    iget-object v0, p0, Landroid/net/IpPrefix;->address:[B

    #@33
    iget v1, p0, Landroid/net/IpPrefix;->prefixLength:I

    #@35
    invoke-static {v0, v1}, Landroid/net/NetworkUtils;->maskRawAddress([BI)V

    #@38
    .line 50
    return-void
.end method


# virtual methods
.method public contains(Ljava/net/InetAddress;)Z
    .locals 3
    .param p1, "address"    # Ljava/net/InetAddress;

    #@0
    .prologue
    .line 179
    if-nez p1, :cond_1

    #@2
    const/4 v0, 0x0

    #@3
    .line 180
    :goto_0
    if-eqz v0, :cond_0

    #@5
    array-length v1, v0

    #@6
    iget-object v2, p0, Landroid/net/IpPrefix;->address:[B

    #@8
    array-length v2, v2

    #@9
    if-eq v1, v2, :cond_2

    #@b
    .line 181
    :cond_0
    const/4 v1, 0x0

    #@c
    return v1

    #@d
    .line 179
    :cond_1
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    #@10
    move-result-object v0

    #@11
    .local v0, "addrBytes":[B
    goto :goto_0

    #@12
    .line 183
    .end local v0    # "addrBytes":[B
    :cond_2
    iget v1, p0, Landroid/net/IpPrefix;->prefixLength:I

    #@14
    invoke-static {v0, v1}, Landroid/net/NetworkUtils;->maskRawAddress([BI)V

    #@17
    .line 184
    iget-object v1, p0, Landroid/net/IpPrefix;->address:[B

    #@19
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    #@1c
    move-result v1

    #@1d
    return v1
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 205
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
    .line 120
    instance-of v2, p1, Landroid/net/IpPrefix;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 121
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 123
    check-cast v0, Landroid/net/IpPrefix;

    #@9
    .line 124
    .local v0, "that":Landroid/net/IpPrefix;
    iget-object v2, p0, Landroid/net/IpPrefix;->address:[B

    #@b
    iget-object v3, v0, Landroid/net/IpPrefix;->address:[B

    #@d
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_1

    #@13
    iget v2, p0, Landroid/net/IpPrefix;->prefixLength:I

    #@15
    iget v3, v0, Landroid/net/IpPrefix;->prefixLength:I

    #@17
    if-ne v2, v3, :cond_1

    #@19
    const/4 v1, 0x1

    #@1a
    :cond_1
    return v1
.end method

.method public getAddress()Ljava/net/InetAddress;
    .locals 2

    #@0
    .prologue
    .line 145
    :try_start_0
    iget-object v1, p0, Landroid/net/IpPrefix;->address:[B

    #@2
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 146
    :catch_0
    move-exception v0

    #@8
    .line 149
    .local v0, "e":Ljava/net/UnknownHostException;
    const/4 v1, 0x0

    #@9
    return-object v1
.end method

.method public getPrefixLength()I
    .locals 1

    #@0
    .prologue
    .line 169
    iget v0, p0, Landroid/net/IpPrefix;->prefixLength:I

    #@2
    return v0
.end method

.method public getRawAddress()[B
    .locals 1

    #@0
    .prologue
    .line 160
    iget-object v0, p0, Landroid/net/IpPrefix;->address:[B

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [B

    #@8
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 134
    iget-object v0, p0, Landroid/net/IpPrefix;->address:[B

    #@2
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    #@5
    move-result v0

    #@6
    iget v1, p0, Landroid/net/IpPrefix;->prefixLength:I

    #@8
    mul-int/lit8 v1, v1, 0xb

    #@a
    add-int/2addr v0, v1

    #@b
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 194
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v2, p0, Landroid/net/IpPrefix;->address:[B

    #@7
    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "/"

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, p0, Landroid/net/IpPrefix;->prefixLength:I

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    move-result-object v1

    #@24
    return-object v1

    #@25
    .line 195
    :catch_0
    move-exception v0

    #@26
    .line 197
    .local v0, "e":Ljava/net/UnknownHostException;
    new-instance v1, Ljava/lang/IllegalStateException;

    #@28
    const-string/jumbo v2, "IpPrefix with invalid address! Shouldn\'t happen."

    #@2b
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2e
    throw v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 212
    iget-object v0, p0, Landroid/net/IpPrefix;->address:[B

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    #@5
    .line 213
    iget v0, p0, Landroid/net/IpPrefix;->prefixLength:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 211
    return-void
.end method
