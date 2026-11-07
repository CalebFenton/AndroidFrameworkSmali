.class public final Landroid/bluetooth/le/TransportBlock;
.super Ljava/lang/Object;
.source "TransportBlock.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/le/TransportBlock;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mOrgId:I

.field private final blacklist mTdsFlags:I

.field private final blacklist mTransportData:[B

.field private final blacklist mTransportDataLength:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 37
    const-class v0, Landroid/bluetooth/le/TransportBlock;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/le/TransportBlock;->TAG:Ljava/lang/String;

    .line 107
    new-instance v0, Landroid/bluetooth/le/TransportBlock$1;

    invoke-direct {v0}, Landroid/bluetooth/le/TransportBlock$1;-><init>()V

    sput-object v0, Landroid/bluetooth/le/TransportBlock;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(III[B)V
    .registers 5
    .param p1, "orgId"    # I
    .param p2, "tdsFlags"    # I
    .param p3, "transportDataLength"    # I
    .param p4, "transportData"    # [B

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Landroid/bluetooth/le/TransportBlock;->mOrgId:I

    .line 55
    iput p2, p0, Landroid/bluetooth/le/TransportBlock;->mTdsFlags:I

    .line 56
    iput p3, p0, Landroid/bluetooth/le/TransportBlock;->mTransportDataLength:I

    .line 57
    iput-object p4, p0, Landroid/bluetooth/le/TransportBlock;->mTransportData:[B

    .line 58
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/TransportBlock;->mOrgId:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/TransportBlock;->mTdsFlags:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/TransportBlock;->mTransportDataLength:I

    .line 64
    iget v0, p0, Landroid/bluetooth/le/TransportBlock;->mTransportDataLength:I

    if-lez v0, :cond_25

    .line 65
    iget v0, p0, Landroid/bluetooth/le/TransportBlock;->mTransportDataLength:I

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/bluetooth/le/TransportBlock;->mTransportData:[B

    .line 66
    iget-object v0, p0, Landroid/bluetooth/le/TransportBlock;->mTransportData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    goto :goto_28

    .line 68
    :cond_25
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/le/TransportBlock;->mTransportData:[B

    .line 70
    :goto_28
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/bluetooth/le/TransportBlock-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/bluetooth/le/TransportBlock;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 91
    if-ne p0, p1, :cond_4

    .line 92
    const/4 v0, 0x1

    return v0

    .line 94
    :cond_4
    if-eqz p1, :cond_21

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_21

    .line 97
    :cond_11
    move-object v0, p1

    check-cast v0, Landroid/bluetooth/le/TransportBlock;

    .line 98
    .local v0, "other":Landroid/bluetooth/le/TransportBlock;
    invoke-virtual {p0}, Landroid/bluetooth/le/TransportBlock;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0}, Landroid/bluetooth/le/TransportBlock;->toByteArray()[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1

    .line 95
    .end local v0    # "other":Landroid/bluetooth/le/TransportBlock;
    :cond_21
    :goto_21
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getOrgId()I
    .registers 2

    .line 125
    iget v0, p0, Landroid/bluetooth/le/TransportBlock;->mOrgId:I

    return v0
.end method

.method public whitelist getTdsFlags()I
    .registers 2

    .line 133
    iget v0, p0, Landroid/bluetooth/le/TransportBlock;->mTdsFlags:I

    return v0
.end method

.method public whitelist getTransportData()[B
    .registers 2

    .line 144
    iget-object v0, p0, Landroid/bluetooth/le/TransportBlock;->mTransportData:[B

    return-object v0
.end method

.method public whitelist getTransportDataLength()I
    .registers 2

    .line 138
    iget v0, p0, Landroid/bluetooth/le/TransportBlock;->mTransportDataLength:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 104
    invoke-virtual {p0}, Landroid/bluetooth/le/TransportBlock;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public whitelist toByteArray()[B
    .registers 5

    .line 155
    :try_start_0
    invoke-virtual {p0}, Landroid/bluetooth/le/TransportBlock;->totalBytes()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 156
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    iget v1, p0, Landroid/bluetooth/le/TransportBlock;->mOrgId:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 157
    iget v1, p0, Landroid/bluetooth/le/TransportBlock;->mTdsFlags:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 158
    iget v1, p0, Landroid/bluetooth/le/TransportBlock;->mTransportDataLength:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 159
    iget-object v1, p0, Landroid/bluetooth/le/TransportBlock;->mTransportData:[B

    if-eqz v1, :cond_23

    .line 160
    iget-object v1, p0, Landroid/bluetooth/le/TransportBlock;->mTransportData:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 162
    :cond_23
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1
    :try_end_27
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_27} :catch_28

    return-object v1

    .line 163
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :catch_28
    move-exception v0

    .line 164
    .local v0, "e":Ljava/nio/BufferOverflowException;
    sget-object v1, Landroid/bluetooth/le/TransportBlock;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error converting to byte array: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist totalBytes()I
    .registers 2

    .line 174
    iget v0, p0, Landroid/bluetooth/le/TransportBlock;->mTransportDataLength:I

    add-int/lit8 v0, v0, 0x3

    .line 175
    .local v0, "size":I
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 74
    iget v0, p0, Landroid/bluetooth/le/TransportBlock;->mOrgId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget v0, p0, Landroid/bluetooth/le/TransportBlock;->mTdsFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget v0, p0, Landroid/bluetooth/le/TransportBlock;->mTransportDataLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget-object v0, p0, Landroid/bluetooth/le/TransportBlock;->mTransportData:[B

    if-eqz v0, :cond_18

    .line 78
    iget-object v0, p0, Landroid/bluetooth/le/TransportBlock;->mTransportData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 80
    :cond_18
    return-void
.end method
