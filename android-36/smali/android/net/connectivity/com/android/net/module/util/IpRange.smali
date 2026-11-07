.class public final Landroid/net/connectivity/com/android/net/module/util/IpRange;
.super Ljava/lang/Object;
.source "IpRange.java"


# static fields
.field private static final blacklist SIGNUM_POSITIVE:I = 0x1


# instance fields
.field private final blacklist mEndAddr:[B

.field private final blacklist mStartAddr:[B


# direct methods
.method public constructor blacklist <init>(Landroid/net/IpPrefix;)V
    .registers 8
    .param p1, "prefix"    # Landroid/net/IpPrefix;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const-string v0, "prefix must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    invoke-virtual {p1}, Landroid/net/IpPrefix;->getRawAddress()[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/com/android/net/module/util/IpRange;->mStartAddr:[B

    .line 76
    invoke-virtual {p1}, Landroid/net/IpPrefix;->getRawAddress()[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/com/android/net/module/util/IpRange;->mEndAddr:[B

    .line 77
    invoke-virtual {p1}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v0

    .local v0, "bitIndex":I
    :goto_18
    iget-object v1, p0, Landroid/net/connectivity/com/android/net/module/util/IpRange;->mEndAddr:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x8

    if-ge v0, v1, :cond_33

    .line 78
    iget-object v1, p0, Landroid/net/connectivity/com/android/net/module/util/IpRange;->mEndAddr:[B

    div-int/lit8 v2, v0, 0x8

    aget-byte v3, v1, v2

    rem-int/lit8 v4, v0, 0x8

    const/16 v5, 0x80

    shr-int v4, v5, v4

    int-to-byte v4, v4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 80
    .end local v0    # "bitIndex":I
    :cond_33
    return-void
.end method

.method public constructor blacklist <init>(Ljava/net/InetAddress;Ljava/net/InetAddress;)V
    .registers 5
    .param p1, "startAddr"    # Ljava/net/InetAddress;
    .param p2, "endAddr"    # Ljava/net/InetAddress;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, "startAddr must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    const-string v0, "endAddr must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 58
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-static {v0}, Landroid/net/connectivity/com/android/net/module/util/IpRange;->addrToBigInteger([B)Ljava/math/BigInteger;

    move-result-object v0

    .line 59
    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    invoke-static {v1}, Landroid/net/connectivity/com/android/net/module/util/IpRange;->addrToBigInteger([B)Ljava/math/BigInteger;

    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_3e

    .line 64
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/com/android/net/module/util/IpRange;->mStartAddr:[B

    .line 65
    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/com/android/net/module/util/IpRange;->mEndAddr:[B

    .line 66
    return-void

    .line 60
    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid range; start address must be before end address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid range: Address family mismatch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist addrToBigInteger([B)Ljava/math/BigInteger;
    .registers 3
    .param p0, "addr"    # [B

    .line 221
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method private static blacklist getAsInetAddress([B)Ljava/net/InetAddress;
    .registers 4
    .param p0, "address"    # [B

    .line 84
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 85
    :catch_5
    move-exception v0

    .line 88
    .local v0, "e":Ljava/net/UnknownHostException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Address is invalid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist getSubsetPrefixes(Landroid/net/IpPrefix;)Ljava/util/List;
    .registers 8
    .param p0, "prefix"    # Landroid/net/IpPrefix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/IpPrefix;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/IpPrefix;",
            ">;"
        }
    .end annotation

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/net/IpPrefix;>;"
    invoke-virtual {p0}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v1

    .line 166
    .local v1, "currentPrefixLen":I
    new-instance v2, Landroid/net/IpPrefix;

    invoke-virtual {p0}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-direct {v2, v3, v4}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-virtual {p0}, Landroid/net/IpPrefix;->getRawAddress()[B

    move-result-object v2

    .line 169
    .local v2, "other":[B
    div-int/lit8 v3, v1, 0x8

    div-int/lit8 v4, v1, 0x8

    aget-byte v4, v2, v4

    const/16 v5, 0x80

    rem-int/lit8 v6, v1, 0x8

    shr-int/2addr v5, v6

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 171
    new-instance v3, Landroid/net/IpPrefix;

    invoke-static {v2}, Landroid/net/connectivity/com/android/net/module/util/IpRange;->getAsInetAddress([B)Ljava/net/InetAddress;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-direct {v3, v4, v5}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    return-object v0
.end method


# virtual methods
.method public blacklist asIpPrefixes()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/IpPrefix;",
            ">;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Landroid/net/connectivity/com/android/net/module/util/IpRange;->mStartAddr:[B

    array-length v0, v0

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-ne v0, v2, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    move v0, v1

    .line 121
    .local v0, "isIpv6":Z
    :goto_b
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Landroid/net/IpPrefix;>;"
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 126
    .local v4, "workingSet":Ljava/util/Queue;, "Ljava/util/Queue<Landroid/net/IpPrefix;>;"
    new-instance v5, Landroid/net/IpPrefix;

    if-eqz v0, :cond_20

    new-array v2, v2, [B

    invoke-static {v2}, Landroid/net/connectivity/com/android/net/module/util/IpRange;->getAsInetAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    goto :goto_27

    .line 127
    :cond_20
    const/4 v2, 0x4

    new-array v2, v2, [B

    invoke-static {v2}, Landroid/net/connectivity/com/android/net/module/util/IpRange;->getAsInetAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    :goto_27
    invoke-direct {v5, v2, v1}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    .line 126
    invoke-interface {v4, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 130
    :goto_2d
    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_56

    .line 131
    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/IpPrefix;

    .line 132
    .local v1, "workingPrefix":Landroid/net/IpPrefix;
    new-instance v2, Landroid/net/connectivity/com/android/net/module/util/IpRange;

    invoke-direct {v2, v1}, Landroid/net/connectivity/com/android/net/module/util/IpRange;-><init>(Landroid/net/IpPrefix;)V

    .line 136
    .local v2, "workingRange":Landroid/net/connectivity/com/android/net/module/util/IpRange;
    invoke-virtual {p0, v2}, Landroid/net/connectivity/com/android/net/module/util/IpRange;->containsRange(Landroid/net/connectivity/com/android/net/module/util/IpRange;)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 137
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    goto :goto_2d

    .line 143
    :cond_48
    invoke-virtual {p0, v2}, Landroid/net/connectivity/com/android/net/module/util/IpRange;->overlapsRange(Landroid/net/connectivity/com/android/net/module/util/IpRange;)Z

    move-result v5

    if-eqz v5, :cond_55

    .line 144
    invoke-static {v1}, Landroid/net/connectivity/com/android/net/module/util/IpRange;->getSubsetPrefixes(Landroid/net/IpPrefix;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 146
    .end local v1    # "workingPrefix":Landroid/net/IpPrefix;
    .end local v2    # "workingRange":Landroid/net/connectivity/com/android/net/module/util/IpRange;
    :cond_55
    goto :goto_2d

    .line 148
    :cond_56
    return-object v3
.end method

.method public blacklist containsRange(Landroid/net/connectivity/com/android/net/module/util/IpRange;)Z
    .registers 4
    .param p1, "other"    # Landroid/net/connectivity/com/android/net/module/util/IpRange;

    .line 185
    iget-object v0, p0, Landroid/net/connectivity/com/android/net/module/util/IpRange;->mStartAddr:[B

    invoke-static {v0}, Landroid/net/connectivity/com/android/net/module/util/IpRange;->addrToBigInteger([B)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p1, Landroid/net/connectivity/com/android/net/module/util/IpRange;->mStartAddr:[B

    invoke-static {v1}, Landroid/net/connectivity/com/android/net/module/util/IpRange;->addrToBigInteger([B)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_26

    iget-object v0, p0, Landroid/net/connectivity/com/android/net/module/util/IpRange;->mEndAddr:[B

    .line 186
    invoke-static {v0}, Landroid/net/connectivity/com/android/net/module/util/IpRange;->addrToBigInteger([B)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p1, Landroid/net/connectivity/com/android/net/module/util/IpRange;->mEndAddr:[B

    invoke-static {v1}, Landroid/net/connectivity/com/android/net/module/util/IpRange;->addrToBigInteger([B)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_26

    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    .line 185
    :goto_27
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 208
    instance-of v0, p1, Landroid/net/connectivity/com/android/net/module/util/IpRange;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 209
    return v1

    .line 212
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/net/connectivity/com/android/net/module/util/IpRange;

    .line 213
    .local v0, "other":Landroid/net/connectivity/com/android/net/module/util/IpRange;
    iget-object v2, p0, Landroid/net/connectivity/com/android/net/module/util/IpRange;->mStartAddr:[B

    iget-object v3, v0, Landroid/net/connectivity/com/android/net/module/util/IpRange;->mStartAddr:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, p0, Landroid/net/connectivity/com/android/net/module/util/IpRange;->mEndAddr:[B

    iget-object v3, v0, Landroid/net/connectivity/com/android/net/module/util/IpRange;->mEndAddr:[B

    .line 214
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v1, 0x1

    goto :goto_20

    :cond_1f
    nop

    .line 213
    :goto_20
    return v1
.end method

.method public blacklist getEndAddr()Ljava/net/InetAddress;
    .registers 2

    .line 99
    iget-object v0, p0, Landroid/net/connectivity/com/android/net/module/util/IpRange;->mEndAddr:[B

    invoke-static {v0}, Landroid/net/connectivity/com/android/net/module/util/IpRange;->getAsInetAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getStartAddr()Ljava/net/InetAddress;
    .registers 2

    .line 94
    iget-object v0, p0, Landroid/net/connectivity/com/android/net/module/util/IpRange;->mStartAddr:[B

    invoke-static {v0}, Landroid/net/connectivity/com/android/net/module/util/IpRange;->getAsInetAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 203
    iget-object v0, p0, Landroid/net/connectivity/com/android/net/module/util/IpRange;->mStartAddr:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/net/connectivity/com/android/net/module/util/IpRange;->mEndAddr:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist overlapsRange(Landroid/net/connectivity/com/android/net/module/util/IpRange;)Z
    .registers 4
    .param p1, "other"    # Landroid/net/connectivity/com/android/net/module/util/IpRange;

    .line 197
    iget-object v0, p0, Landroid/net/connectivity/com/android/net/module/util/IpRange;->mStartAddr:[B

    invoke-static {v0}, Landroid/net/connectivity/com/android/net/module/util/IpRange;->addrToBigInteger([B)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p1, Landroid/net/connectivity/com/android/net/module/util/IpRange;->mEndAddr:[B

    invoke-static {v1}, Landroid/net/connectivity/com/android/net/module/util/IpRange;->addrToBigInteger([B)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_26

    iget-object v0, p1, Landroid/net/connectivity/com/android/net/module/util/IpRange;->mStartAddr:[B

    .line 198
    invoke-static {v0}, Landroid/net/connectivity/com/android/net/module/util/IpRange;->addrToBigInteger([B)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Landroid/net/connectivity/com/android/net/module/util/IpRange;->mEndAddr:[B

    invoke-static {v1}, Landroid/net/connectivity/com/android/net/module/util/IpRange;->addrToBigInteger([B)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_26

    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    .line 197
    :goto_27
    return v0
.end method
