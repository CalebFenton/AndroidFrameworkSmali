.class public final Landroid/bluetooth/le/TransportDiscoveryData;
.super Ljava/lang/Object;
.source "TransportDiscoveryData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/le/TransportDiscoveryData;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mTransportBlocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/le/TransportBlock;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTransportDataType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 40
    const-class v0, Landroid/bluetooth/le/TransportDiscoveryData;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/le/TransportDiscoveryData;->TAG:Ljava/lang/String;

    .line 123
    new-instance v0, Landroid/bluetooth/le/TransportDiscoveryData$1;

    invoke-direct {v0}, Landroid/bluetooth/le/TransportDiscoveryData$1;-><init>()V

    sput-object v0, Landroid/bluetooth/le/TransportDiscoveryData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(ILjava/util/List;)V
    .registers 3
    .param p1, "transportDataType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/TransportBlock;",
            ">;)V"
        }
    .end annotation

    .line 52
    .local p2, "transportBlocks":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/TransportBlock;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Landroid/bluetooth/le/TransportDiscoveryData;->mTransportDataType:I

    .line 54
    iput-object p2, p0, Landroid/bluetooth/le/TransportDiscoveryData;->mTransportBlocks:Ljava/util/List;

    .line 55
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/TransportDiscoveryData;->mTransportDataType:I

    .line 89
    sget-object v0, Landroid/bluetooth/le/TransportBlock;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/le/TransportDiscoveryData;->mTransportBlocks:Ljava/util/List;

    .line 90
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/bluetooth/le/TransportDiscoveryData-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/bluetooth/le/TransportDiscoveryData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>([B)V
    .registers 9
    .param p1, "transportDiscoveryData"    # [B

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 66
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/bluetooth/le/TransportDiscoveryData;->mTransportBlocks:Ljava/util/List;

    .line 67
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lez v1, :cond_1b

    .line 68
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput v1, p0, Landroid/bluetooth/le/TransportDiscoveryData;->mTransportDataType:I

    goto :goto_1e

    .line 70
    :cond_1b
    const/4 v1, -0x1

    iput v1, p0, Landroid/bluetooth/le/TransportDiscoveryData;->mTransportDataType:I

    .line 73
    :goto_1e
    :try_start_1e
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lez v1, :cond_42

    .line 74
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 75
    .local v1, "orgId":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 76
    .local v2, "tdsFlags":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 77
    .local v3, "transportDataLength":I
    new-array v4, v3, [B

    .line 78
    .local v4, "transportData":[B
    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 79
    iget-object v5, p0, Landroid/bluetooth/le/TransportDiscoveryData;->mTransportBlocks:Ljava/util/List;

    new-instance v6, Landroid/bluetooth/le/TransportBlock;

    invoke-direct {v6, v1, v2, v3, v4}, Landroid/bluetooth/le/TransportBlock;-><init>(III[B)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_40
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1e .. :try_end_40} :catch_43

    .line 81
    nop

    .end local v1    # "orgId":I
    .end local v2    # "tdsFlags":I
    .end local v3    # "transportDataLength":I
    .end local v4    # "transportData":[B
    goto :goto_1e

    .line 84
    :cond_42
    goto :goto_60

    .line 82
    :catch_43
    move-exception v1

    .line 83
    .local v1, "e":Ljava/nio/BufferUnderflowException;
    sget-object v2, Landroid/bluetooth/le/TransportDiscoveryData;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while parsing data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .end local v1    # "e":Ljava/nio/BufferUnderflowException;
    :goto_60
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 101
    if-ne p0, p1, :cond_4

    .line 102
    const/4 v0, 0x1

    return v0

    .line 104
    :cond_4
    if-eqz p1, :cond_21

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_21

    .line 107
    :cond_11
    move-object v0, p1

    check-cast v0, Landroid/bluetooth/le/TransportDiscoveryData;

    .line 108
    .local v0, "other":Landroid/bluetooth/le/TransportDiscoveryData;
    invoke-virtual {p0}, Landroid/bluetooth/le/TransportDiscoveryData;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0}, Landroid/bluetooth/le/TransportDiscoveryData;->toByteArray()[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1

    .line 105
    .end local v0    # "other":Landroid/bluetooth/le/TransportDiscoveryData;
    :cond_21
    :goto_21
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getTransportBlocks()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/TransportBlock;",
            ">;"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Landroid/bluetooth/le/TransportDiscoveryData;->mTransportBlocks:Ljava/util/List;

    if-nez v0, :cond_9

    .line 148
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 150
    :cond_9
    iget-object v0, p0, Landroid/bluetooth/le/TransportDiscoveryData;->mTransportBlocks:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getTransportDataType()I
    .registers 2

    .line 138
    iget v0, p0, Landroid/bluetooth/le/TransportDiscoveryData;->mTransportDataType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 114
    invoke-virtual {p0}, Landroid/bluetooth/le/TransportDiscoveryData;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public whitelist toByteArray()[B
    .registers 5

    .line 162
    :try_start_0
    invoke-virtual {p0}, Landroid/bluetooth/le/TransportDiscoveryData;->totalBytes()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 163
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    iget v1, p0, Landroid/bluetooth/le/TransportDiscoveryData;->mTransportDataType:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 164
    invoke-virtual {p0}, Landroid/bluetooth/le/TransportDiscoveryData;->getTransportBlocks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/le/TransportBlock;

    .line 165
    .local v2, "transportBlock":Landroid/bluetooth/le/TransportBlock;
    invoke-virtual {v2}, Landroid/bluetooth/le/TransportBlock;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 166
    nop

    .end local v2    # "transportBlock":Landroid/bluetooth/le/TransportBlock;
    goto :goto_16

    .line 167
    :cond_2b
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1
    :try_end_2f
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_2f} :catch_30

    return-object v1

    .line 168
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :catch_30
    move-exception v0

    .line 169
    .local v0, "e":Ljava/nio/BufferOverflowException;
    sget-object v1, Landroid/bluetooth/le/TransportDiscoveryData;->TAG:Ljava/lang/String;

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

    .line 170
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 176
    invoke-virtual {p0}, Landroid/bluetooth/le/TransportDiscoveryData;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/le/BluetoothLeUtils;->toString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist totalBytes()I
    .registers 5

    .line 183
    const/4 v0, 0x1

    .line 184
    .local v0, "size":I
    invoke-virtual {p0}, Landroid/bluetooth/le/TransportDiscoveryData;->getTransportBlocks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/le/TransportBlock;

    .line 185
    .local v2, "transportBlock":Landroid/bluetooth/le/TransportBlock;
    invoke-virtual {v2}, Landroid/bluetooth/le/TransportBlock;->totalBytes()I

    move-result v3

    add-int/2addr v0, v3

    .line 186
    .end local v2    # "transportBlock":Landroid/bluetooth/le/TransportBlock;
    goto :goto_9

    .line 187
    :cond_1b
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 119
    iget v0, p0, Landroid/bluetooth/le/TransportDiscoveryData;->mTransportDataType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget-object v0, p0, Landroid/bluetooth/le/TransportDiscoveryData;->mTransportBlocks:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 121
    return-void
.end method
