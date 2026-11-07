.class public final Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;
.super Lcom/android/phone/ecc/nano/ExtendableMessageNano;
.source "ProtobufEccData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/phone/ecc/nano/ExtendableMessageNano<",
        "Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;


# instance fields
.field public blacklist eccFallback:Ljava/lang/String;

.field public blacklist eccs:[Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;

.field public blacklist ignoreModemConfig:Z

.field public blacklist isoCode:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 320
    invoke-direct {p0}, Lcom/android/phone/ecc/nano/ExtendableMessageNano;-><init>()V

    .line 321
    invoke-virtual {p0}, Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;->clear()Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;
    .registers 2

    .line 297
    sget-object v0, Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;->_emptyArray:[Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;

    if-nez v0, :cond_17

    .line 298
    sget-object v0, Lcom/android/phone/ecc/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 300
    :try_start_7
    sget-object v1, Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;->_emptyArray:[Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 301
    new-array v1, v1, [Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;

    sput-object v1, Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;->_emptyArray:[Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_15

    .line 303
    :cond_13
    :goto_13
    monitor-exit v0

    goto :goto_17

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw v1

    .line 305
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;->_emptyArray:[Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;
    .registers 3

    .line 325
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;->isoCode:Ljava/lang/String;

    .line 326
    invoke-static {}, Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;->emptyArray()[Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;->eccs:[Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;

    .line 327
    iput-object v0, p0, Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;->eccFallback:Ljava/lang/String;

    const/4 v0, 0x0

    .line 328
    iput-boolean v0, p0, Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;->ignoreModemConfig:Z

    const/4 v0, 0x0

    .line 329
    iput-object v0, p0, Lcom/android/phone/ecc/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/phone/ecc/nano/FieldArray;

    const/4 v0, -0x1

    .line 330
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

    .line 291
    invoke-virtual {p0, p1}, Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;->mergeFrom(Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;)Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;

    move-result-object p0

    return-object p0
.end method

.method public blacklist mergeFrom(Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;)Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 389
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_67

    const/16 v1, 0xa

    if-eq v0, v1, :cond_60

    const/16 v1, 0x12

    if-eq v0, v1, :cond_2b

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_24

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1d

    .line 394
    invoke-virtual {p0, p1, v0}, Lcom/android/phone/ecc/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_67

    .line 428
    :cond_1d
    invoke-virtual {p1}, Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;->ignoreModemConfig:Z

    goto :goto_0

    .line 424
    :cond_24
    invoke-virtual {p1}, Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;->eccFallback:Ljava/lang/String;

    goto :goto_0

    .line 405
    :cond_2b
    invoke-static {p1, v1}, Lcom/android/phone/ecc/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 406
    iget-object v1, p0, Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;->eccs:[Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_36

    move v3, v2

    goto :goto_37

    :cond_36
    array-length v3, v1

    :goto_37
    add-int/2addr v0, v3

    .line 407
    new-array v4, v0, [Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;

    if-eqz v3, :cond_3f

    .line 410
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3f
    :goto_3f
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_53

    .line 413
    new-instance v1, Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;

    invoke-direct {v1}, Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;-><init>()V

    aput-object v1, v4, v3

    .line 414
    invoke-virtual {p1, v1}, Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/phone/ecc/nano/MessageNano;)V

    .line 415
    invoke-virtual {p1}, Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    .line 418
    :cond_53
    new-instance v0, Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;

    invoke-direct {v0}, Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;-><init>()V

    aput-object v0, v4, v3

    .line 419
    invoke-virtual {p1, v0}, Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/phone/ecc/nano/MessageNano;)V

    .line 420
    iput-object v4, p0, Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;->eccs:[Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;

    goto :goto_0

    .line 400
    :cond_60
    invoke-virtual {p1}, Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;->isoCode:Ljava/lang/String;

    goto :goto_0

    :cond_67
    :goto_67
    return-object p0
.end method
