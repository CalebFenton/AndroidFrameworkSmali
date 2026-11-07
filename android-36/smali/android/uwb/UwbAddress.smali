.class public final Landroid/uwb/UwbAddress;
.super Ljava/lang/Object;
.source "UwbAddress.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/uwb/UwbAddress;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EXTENDED_ADDRESS_BYTE_LENGTH:I = 0x8

.field public static final whitelist SHORT_ADDRESS_BYTE_LENGTH:I = 0x2


# instance fields
.field private final blacklist mAddressBytes:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 117
    new-instance v0, Landroid/uwb/UwbAddress$1;

    invoke-direct {v0}, Landroid/uwb/UwbAddress$1;-><init>()V

    sput-object v0, Landroid/uwb/UwbAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>([B)V
    .registers 2
    .param p1, "address"    # [B

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Landroid/uwb/UwbAddress;->mAddressBytes:[B

    .line 41
    return-void
.end method

.method public static whitelist fromBytes([B)Landroid/uwb/UwbAddress;
    .registers 4
    .param p0, "address"    # [B

    .line 57
    array-length v0, p0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_24

    array-length v0, p0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    goto :goto_24

    .line 59
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

    .line 61
    :cond_24
    :goto_24
    new-instance v0, Landroid/uwb/UwbAddress;

    invoke-direct {v0, p0}, Landroid/uwb/UwbAddress;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 95
    instance-of v0, p1, Landroid/uwb/UwbAddress;

    if-eqz v0, :cond_12

    .line 96
    iget-object v0, p0, Landroid/uwb/UwbAddress;->mAddressBytes:[B

    move-object v1, p1

    check-cast v1, Landroid/uwb/UwbAddress;

    invoke-virtual {v1}, Landroid/uwb/UwbAddress;->toBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0

    .line 98
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 103
    iget-object v0, p0, Landroid/uwb/UwbAddress;->mAddressBytes:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public whitelist size()I
    .registers 2

    .line 80
    iget-object v0, p0, Landroid/uwb/UwbAddress;->mAddressBytes:[B

    array-length v0, v0

    return v0
.end method

.method public whitelist toBytes()[B
    .registers 2

    .line 71
    iget-object v0, p0, Landroid/uwb/UwbAddress;->mAddressBytes:[B

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 8

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/uwb/UwbAddress;->mAddressBytes:[B

    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_23

    aget-byte v4, v1, v3

    .line 88
    .local v4, "addressByte":B
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "%02X"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .end local v4    # "addressByte":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 90
    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 113
    iget-object v0, p0, Landroid/uwb/UwbAddress;->mAddressBytes:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget-object v0, p0, Landroid/uwb/UwbAddress;->mAddressBytes:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 115
    return-void
.end method
