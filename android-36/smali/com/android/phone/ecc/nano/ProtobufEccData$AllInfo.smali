.class public final Lcom/android/phone/ecc/nano/ProtobufEccData$AllInfo;
.super Lcom/android/phone/ecc/nano/ExtendableMessageNano;
.source "ProtobufEccData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/phone/ecc/nano/ExtendableMessageNano<",
        "Lcom/android/phone/ecc/nano/ProtobufEccData$AllInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public blacklist countries:[Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;

.field public blacklist revision:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 470
    invoke-direct {p0}, Lcom/android/phone/ecc/nano/ExtendableMessageNano;-><init>()V

    .line 471
    invoke-virtual {p0}, Lcom/android/phone/ecc/nano/ProtobufEccData$AllInfo;->clear()Lcom/android/phone/ecc/nano/ProtobufEccData$AllInfo;

    return-void
.end method

.method public static blacklist parseFrom([B)Lcom/android/phone/ecc/nano/ProtobufEccData$AllInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/ecc/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 563
    new-instance v0, Lcom/android/phone/ecc/nano/ProtobufEccData$AllInfo;

    invoke-direct {v0}, Lcom/android/phone/ecc/nano/ProtobufEccData$AllInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/android/phone/ecc/nano/MessageNano;->mergeFrom(Lcom/android/phone/ecc/nano/MessageNano;[B)Lcom/android/phone/ecc/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/phone/ecc/nano/ProtobufEccData$AllInfo;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/phone/ecc/nano/ProtobufEccData$AllInfo;
    .registers 2

    const/4 v0, 0x0

    .line 475
    iput v0, p0, Lcom/android/phone/ecc/nano/ProtobufEccData$AllInfo;->revision:I

    .line 476
    invoke-static {}, Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;->emptyArray()[Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/ecc/nano/ProtobufEccData$AllInfo;->countries:[Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;

    const/4 v0, 0x0

    .line 477
    iput-object v0, p0, Lcom/android/phone/ecc/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/phone/ecc/nano/FieldArray;

    const/4 v0, -0x1

    .line 478
    iput v0, p0, Lcom/android/phone/ecc/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;)Lcom/android/phone/ecc/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 447
    invoke-virtual {p0, p1}, Lcom/android/phone/ecc/nano/ProtobufEccData$AllInfo;->mergeFrom(Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;)Lcom/android/phone/ecc/nano/ProtobufEccData$AllInfo;

    move-result-object p0

    return-object p0
.end method

.method public blacklist mergeFrom(Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;)Lcom/android/phone/ecc/nano/ProtobufEccData$AllInfo;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 523
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_51

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4a

    const/16 v1, 0x12

    if-eq v0, v1, :cond_15

    .line 528
    invoke-virtual {p0, p1, v0}, Lcom/android/phone/ecc/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_51

    .line 539
    :cond_15
    invoke-static {p1, v1}, Lcom/android/phone/ecc/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 540
    iget-object v1, p0, Lcom/android/phone/ecc/nano/ProtobufEccData$AllInfo;->countries:[Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_20

    move v3, v2

    goto :goto_21

    :cond_20
    array-length v3, v1

    :goto_21
    add-int/2addr v0, v3

    .line 541
    new-array v4, v0, [Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;

    if-eqz v3, :cond_29

    .line 544
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_29
    :goto_29
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_3d

    .line 547
    new-instance v1, Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;

    invoke-direct {v1}, Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;-><init>()V

    aput-object v1, v4, v3

    .line 548
    invoke-virtual {p1, v1}, Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/phone/ecc/nano/MessageNano;)V

    .line 549
    invoke-virtual {p1}, Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 552
    :cond_3d
    new-instance v0, Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;

    invoke-direct {v0}, Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;-><init>()V

    aput-object v0, v4, v3

    .line 553
    invoke-virtual {p1, v0}, Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/phone/ecc/nano/MessageNano;)V

    .line 554
    iput-object v4, p0, Lcom/android/phone/ecc/nano/ProtobufEccData$AllInfo;->countries:[Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;

    goto :goto_0

    .line 534
    :cond_4a
    invoke-virtual {p1}, Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/phone/ecc/nano/ProtobufEccData$AllInfo;->revision:I

    goto :goto_0

    :cond_51
    :goto_51
    return-object p0
.end method
