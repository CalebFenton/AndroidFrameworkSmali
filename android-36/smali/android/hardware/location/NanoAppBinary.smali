.class public final Landroid/hardware/location/NanoAppBinary;
.super Ljava/lang/Object;
.source "NanoAppBinary.java"

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
            "Landroid/hardware/location/NanoAppBinary;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o EXPECTED_HEADER_VERSION:I = 0x1

.field private static final greylist-max-o EXPECTED_MAGIC_VALUE:I = 0x4f4e414e

.field private static final greylist-max-o HEADER_ORDER:Ljava/nio/ByteOrder;

.field private static final greylist-max-o HEADER_SIZE_BYTES:I = 0x28

.field private static final greylist-max-o NANOAPP_ENCRYPTED_FLAG_BIT:I = 0x2

.field private static final greylist-max-o NANOAPP_SIGNED_FLAG_BIT:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "NanoAppBinary"


# instance fields
.field private greylist-max-o mFlags:I

.field private greylist-max-o mHasValidHeader:Z

.field private greylist-max-o mHeaderVersion:I

.field private greylist-max-o mHwHubType:J

.field private greylist-max-o mMagic:I

.field private greylist-max-o mNanoAppBinary:[B

.field private greylist-max-o mNanoAppId:J

.field private greylist-max-o mNanoAppVersion:I

.field private greylist-max-o mTargetChreApiMajorVersion:B

.field private greylist-max-o mTargetChreApiMinorVersion:B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 71
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Landroid/hardware/location/NanoAppBinary;->HEADER_ORDER:Ljava/nio/ByteOrder;

    .line 240
    new-instance v0, Landroid/hardware/location/NanoAppBinary$1;

    invoke-direct {v0}, Landroid/hardware/location/NanoAppBinary$1;-><init>()V

    sput-object v0, Landroid/hardware/location/NanoAppBinary;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/location/NanoAppBinary;->mHasValidHeader:Z

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 223
    .local v0, "binaryLength":I
    new-array v1, v0, [B

    iput-object v1, p0, Landroid/hardware/location/NanoAppBinary;->mNanoAppBinary:[B

    .line 224
    iget-object v1, p0, Landroid/hardware/location/NanoAppBinary;->mNanoAppBinary:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 226
    invoke-direct {p0}, Landroid/hardware/location/NanoAppBinary;->parseBinaryHeader()V

    .line 227
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/location/NanoAppBinary-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/location/NanoAppBinary;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>([B)V
    .registers 3
    .param p1, "appBinary"    # [B

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/location/NanoAppBinary;->mHasValidHeader:Z

    .line 85
    iput-object p1, p0, Landroid/hardware/location/NanoAppBinary;->mNanoAppBinary:[B

    .line 86
    invoke-direct {p0}, Landroid/hardware/location/NanoAppBinary;->parseBinaryHeader()V

    .line 87
    return-void
.end method

.method private greylist-max-o parseBinaryHeader()V
    .registers 8

    .line 93
    const-string v0, "NanoAppBinary"

    iget-object v1, p0, Landroid/hardware/location/NanoAppBinary;->mNanoAppBinary:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Landroid/hardware/location/NanoAppBinary;->HEADER_ORDER:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 95
    .local v1, "buf":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/hardware/location/NanoAppBinary;->mHasValidHeader:Z

    .line 97
    :try_start_11
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/location/NanoAppBinary;->mHeaderVersion:I

    .line 98
    iget v2, p0, Landroid/hardware/location/NanoAppBinary;->mHeaderVersion:I
    :try_end_19
    .catch Ljava/nio/BufferUnderflowException; {:try_start_11 .. :try_end_19} :catch_bb

    const-string v3, ")"

    const/4 v4, 0x1

    if-eq v2, v4, :cond_45

    .line 99
    :try_start_1e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected header version "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Landroid/hardware/location/NanoAppBinary;->mHeaderVersion:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " while parsing header (expected "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void

    .line 104
    :cond_45
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/location/NanoAppBinary;->mMagic:I

    .line 105
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/location/NanoAppBinary;->mNanoAppId:J

    .line 106
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/location/NanoAppBinary;->mNanoAppVersion:I

    .line 107
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/location/NanoAppBinary;->mFlags:I

    .line 108
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/location/NanoAppBinary;->mHwHubType:J

    .line 109
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iput-byte v2, p0, Landroid/hardware/location/NanoAppBinary;->mTargetChreApiMajorVersion:B

    .line 110
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iput-byte v2, p0, Landroid/hardware/location/NanoAppBinary;->mTargetChreApiMinorVersion:B
    :try_end_6f
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1e .. :try_end_6f} :catch_bb

    .line 114
    nop

    .line 116
    iget v2, p0, Landroid/hardware/location/NanoAppBinary;->mMagic:I

    const v5, 0x4f4e414e

    if-eq v2, v5, :cond_b8

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected magic value "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Landroid/hardware/location/NanoAppBinary;->mMagic:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v6, "0x%08X"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "while parsing header (expected "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 119
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ba

    .line 121
    :cond_b8
    iput-boolean v4, p0, Landroid/hardware/location/NanoAppBinary;->mHasValidHeader:Z

    .line 123
    :goto_ba
    return-void

    .line 111
    :catch_bb
    move-exception v2

    .line 112
    .local v2, "e":Ljava/nio/BufferUnderflowException;
    const-string v3, "Not enough contents in nanoapp header"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getBinary()[B
    .registers 2

    .line 129
    iget-object v0, p0, Landroid/hardware/location/NanoAppBinary;->mNanoAppBinary:[B

    return-object v0
.end method

.method public whitelist getBinaryNoHeader()[B
    .registers 5

    .line 139
    iget-object v0, p0, Landroid/hardware/location/NanoAppBinary;->mNanoAppBinary:[B

    array-length v0, v0

    const/16 v1, 0x28

    if-lt v0, v1, :cond_11

    .line 144
    iget-object v0, p0, Landroid/hardware/location/NanoAppBinary;->mNanoAppBinary:[B

    iget-object v2, p0, Landroid/hardware/location/NanoAppBinary;->mNanoAppBinary:[B

    array-length v2, v2

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0

    .line 140
    :cond_11
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NanoAppBinary binary byte size ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/location/NanoAppBinary;->mNanoAppBinary:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is less than header size ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getFlags()I
    .registers 2

    .line 204
    iget v0, p0, Landroid/hardware/location/NanoAppBinary;->mFlags:I

    return v0
.end method

.method public whitelist getHeaderVersion()I
    .registers 2

    .line 158
    iget v0, p0, Landroid/hardware/location/NanoAppBinary;->mHeaderVersion:I

    return v0
.end method

.method public whitelist getHwHubType()J
    .registers 3

    .line 179
    iget-wide v0, p0, Landroid/hardware/location/NanoAppBinary;->mHwHubType:J

    return-wide v0
.end method

.method public whitelist getNanoAppId()J
    .registers 3

    .line 165
    iget-wide v0, p0, Landroid/hardware/location/NanoAppBinary;->mNanoAppId:J

    return-wide v0
.end method

.method public whitelist getNanoAppVersion()I
    .registers 2

    .line 172
    iget v0, p0, Landroid/hardware/location/NanoAppBinary;->mNanoAppVersion:I

    return v0
.end method

.method public whitelist getTargetChreApiMajorVersion()B
    .registers 2

    .line 186
    iget-byte v0, p0, Landroid/hardware/location/NanoAppBinary;->mTargetChreApiMajorVersion:B

    return v0
.end method

.method public whitelist getTargetChreApiMinorVersion()B
    .registers 2

    .line 193
    iget-byte v0, p0, Landroid/hardware/location/NanoAppBinary;->mTargetChreApiMinorVersion:B

    return v0
.end method

.method public whitelist hasValidHeader()Z
    .registers 2

    .line 151
    iget-boolean v0, p0, Landroid/hardware/location/NanoAppBinary;->mHasValidHeader:Z

    return v0
.end method

.method public whitelist isEncrypted()Z
    .registers 2

    .line 218
    iget v0, p0, Landroid/hardware/location/NanoAppBinary;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isSigned()Z
    .registers 3

    .line 211
    iget v0, p0, Landroid/hardware/location/NanoAppBinary;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 236
    iget-object v0, p0, Landroid/hardware/location/NanoAppBinary;->mNanoAppBinary:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    iget-object v0, p0, Landroid/hardware/location/NanoAppBinary;->mNanoAppBinary:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 238
    return-void
.end method
