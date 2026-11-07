.class public final Landroid/ranging/uwb/UwbAddress;
.super Ljava/lang/Object;
.source "UwbAddress.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/ranging/uwb/UwbAddress;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EXTENDED_ADDRESS_BYTE_LENGTH:I = 0x8

.field public static final whitelist SHORT_ADDRESS_BYTE_LENGTH:I = 0x2

.field private static final blacklist sExtendedForbiddenUwbAddress:[B

.field private static final blacklist sShortForbiddenUwbAddress:[B


# instance fields
.field private final blacklist mAddressBytes:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_1a

    sput-object v0, Landroid/ranging/uwb/UwbAddress;->sShortForbiddenUwbAddress:[B

    .line 39
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_20

    sput-object v0, Landroid/ranging/uwb/UwbAddress;->sExtendedForbiddenUwbAddress:[B

    .line 162
    new-instance v0, Landroid/ranging/uwb/UwbAddress$1;

    invoke-direct {v0}, Landroid/ranging/uwb/UwbAddress$1;-><init>()V

    sput-object v0, Landroid/ranging/uwb/UwbAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    nop

    :array_1a
    .array-data 1
        -0x1t
        -0x1t
    .end array-data

    nop

    :array_20
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method private constructor blacklist <init>([B)V
    .registers 2
    .param p1, "address"    # [B

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Landroid/ranging/uwb/UwbAddress;->mAddressBytes:[B

    .line 54
    return-void
.end method

.method public static whitelist createRandomShortAddress()Landroid/ranging/uwb/UwbAddress;
    .registers 2

    .line 84
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 85
    .local v0, "secureRandom":Ljava/security/SecureRandom;
    const/4 v1, 0x2

    invoke-static {v1, v0}, Landroid/ranging/uwb/UwbAddress;->generateRandomByteArray(ILjava/security/SecureRandom;)[B

    move-result-object v1

    invoke-static {v1}, Landroid/ranging/uwb/UwbAddress;->fromBytes([B)Landroid/ranging/uwb/UwbAddress;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist fromBytes([B)Landroid/ranging/uwb/UwbAddress;
    .registers 4
    .param p0, "address"    # [B

    .line 70
    array-length v0, p0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_24

    array-length v0, p0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    goto :goto_24

    .line 72
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid UwbAddress length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_24
    :goto_24
    new-instance v0, Landroid/ranging/uwb/UwbAddress;

    invoke-direct {v0, p0}, Landroid/ranging/uwb/UwbAddress;-><init>([B)V

    return-object v0
.end method

.method private static blacklist generateRandomByteArray(ILjava/security/SecureRandom;)[B
    .registers 4
    .param p0, "len"    # I
    .param p1, "secureRandom"    # Ljava/security/SecureRandom;

    .line 102
    new-array v0, p0, [B

    .line 104
    .local v0, "bytes":[B
    :cond_2
    invoke-virtual {p1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 105
    invoke-static {v0}, Landroid/ranging/uwb/UwbAddress;->isForbiddenAddress([B)Z

    move-result v1

    if-nez v1, :cond_2

    .line 106
    return-object v0
.end method

.method public static blacklist getRandomExtendedAddress()Landroid/ranging/uwb/UwbAddress;
    .registers 2

    .line 97
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 98
    .local v0, "secureRandom":Ljava/security/SecureRandom;
    const/16 v1, 0x8

    invoke-static {v1, v0}, Landroid/ranging/uwb/UwbAddress;->generateRandomByteArray(ILjava/security/SecureRandom;)[B

    move-result-object v1

    invoke-static {v1}, Landroid/ranging/uwb/UwbAddress;->fromBytes([B)Landroid/ranging/uwb/UwbAddress;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist isForbiddenAddress([B)Z
    .registers 3
    .param p0, "address"    # [B

    .line 110
    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 111
    sget-object v0, Landroid/ranging/uwb/UwbAddress;->sShortForbiddenUwbAddress:[B

    invoke-static {p0, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0

    .line 113
    :cond_b
    sget-object v0, Landroid/ranging/uwb/UwbAddress;->sExtendedForbiddenUwbAddress:[B

    invoke-static {p0, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 140
    instance-of v0, p1, Landroid/ranging/uwb/UwbAddress;

    if-eqz v0, :cond_12

    .line 141
    iget-object v0, p0, Landroid/ranging/uwb/UwbAddress;->mAddressBytes:[B

    move-object v1, p1

    check-cast v1, Landroid/ranging/uwb/UwbAddress;

    invoke-virtual {v1}, Landroid/ranging/uwb/UwbAddress;->getAddressBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0

    .line 143
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAddressBytes()[B
    .registers 2

    .line 125
    iget-object v0, p0, Landroid/ranging/uwb/UwbAddress;->mAddressBytes:[B

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 148
    iget-object v0, p0, Landroid/ranging/uwb/UwbAddress;->mAddressBytes:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 8

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/ranging/uwb/UwbAddress;->mAddressBytes:[B

    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_23

    aget-byte v4, v1, v3

    .line 133
    .local v4, "addressByte":B
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "%02X"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .end local v4    # "addressByte":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 135
    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 158
    iget-object v0, p0, Landroid/ranging/uwb/UwbAddress;->mAddressBytes:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget-object v0, p0, Landroid/ranging/uwb/UwbAddress;->mAddressBytes:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 160
    return-void
.end method
