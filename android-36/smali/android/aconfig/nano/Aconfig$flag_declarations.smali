.class public final Landroid/aconfig/nano/Aconfig$flag_declarations;
.super Landroid/internal/framework/protobuf/nano/MessageNano;
.source "Aconfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/aconfig/nano/Aconfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "flag_declarations"
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Landroid/aconfig/nano/Aconfig$flag_declarations;


# instance fields
.field public blacklist container:Ljava/lang/String;

.field public blacklist flag:[Landroid/aconfig/nano/Aconfig$flag_declaration;

.field public blacklist package_:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 343
    invoke-direct {p0}, Landroid/internal/framework/protobuf/nano/MessageNano;-><init>()V

    .line 344
    invoke-virtual {p0}, Landroid/aconfig/nano/Aconfig$flag_declarations;->clear()Landroid/aconfig/nano/Aconfig$flag_declarations;

    .line 345
    return-void
.end method

.method public static blacklist emptyArray()[Landroid/aconfig/nano/Aconfig$flag_declarations;
    .registers 2

    .line 323
    sget-object v0, Landroid/aconfig/nano/Aconfig$flag_declarations;->_emptyArray:[Landroid/aconfig/nano/Aconfig$flag_declarations;

    if-nez v0, :cond_15

    .line 324
    sget-object v0, Landroid/internal/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 326
    :try_start_7
    sget-object v1, Landroid/aconfig/nano/Aconfig$flag_declarations;->_emptyArray:[Landroid/aconfig/nano/Aconfig$flag_declarations;

    if-nez v1, :cond_10

    .line 327
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/aconfig/nano/Aconfig$flag_declarations;

    sput-object v1, Landroid/aconfig/nano/Aconfig$flag_declarations;->_emptyArray:[Landroid/aconfig/nano/Aconfig$flag_declarations;

    .line 329
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 331
    :cond_15
    :goto_15
    sget-object v0, Landroid/aconfig/nano/Aconfig$flag_declarations;->_emptyArray:[Landroid/aconfig/nano/Aconfig$flag_declarations;

    return-object v0
.end method

.method public static blacklist parseFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$flag_declarations;
    .registers 2
    .param p0, "input"    # Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 453
    new-instance v0, Landroid/aconfig/nano/Aconfig$flag_declarations;

    invoke-direct {v0}, Landroid/aconfig/nano/Aconfig$flag_declarations;-><init>()V

    invoke-virtual {v0, p0}, Landroid/aconfig/nano/Aconfig$flag_declarations;->mergeFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$flag_declarations;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Landroid/aconfig/nano/Aconfig$flag_declarations;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/internal/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 447
    new-instance v0, Landroid/aconfig/nano/Aconfig$flag_declarations;

    invoke-direct {v0}, Landroid/aconfig/nano/Aconfig$flag_declarations;-><init>()V

    invoke-static {v0, p0}, Landroid/internal/framework/protobuf/nano/MessageNano;->mergeFrom(Landroid/internal/framework/protobuf/nano/MessageNano;[B)Landroid/internal/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Landroid/aconfig/nano/Aconfig$flag_declarations;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Landroid/aconfig/nano/Aconfig$flag_declarations;
    .registers 3

    .line 348
    const-string v0, ""

    iput-object v0, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->package_:Ljava/lang/String;

    .line 349
    invoke-static {}, Landroid/aconfig/nano/Aconfig$flag_declaration;->emptyArray()[Landroid/aconfig/nano/Aconfig$flag_declaration;

    move-result-object v1

    iput-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->flag:[Landroid/aconfig/nano/Aconfig$flag_declaration;

    .line 350
    iput-object v0, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->container:Ljava/lang/String;

    .line 351
    const/4 v0, -0x1

    iput v0, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->cachedSize:I

    .line 352
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 6

    .line 377
    invoke-super {p0}, Landroid/internal/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 378
    .local v0, "size":I
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->package_:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 379
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->package_:Ljava/lang/String;

    .line 380
    const/4 v3, 0x1

    invoke-static {v3, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 382
    :cond_16
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->flag:[Landroid/aconfig/nano/Aconfig$flag_declaration;

    if-eqz v1, :cond_35

    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->flag:[Landroid/aconfig/nano/Aconfig$flag_declaration;

    array-length v1, v1

    if-lez v1, :cond_35

    .line 383
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_20
    iget-object v3, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->flag:[Landroid/aconfig/nano/Aconfig$flag_declaration;

    array-length v3, v3

    if-ge v1, v3, :cond_35

    .line 384
    iget-object v3, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->flag:[Landroid/aconfig/nano/Aconfig$flag_declaration;

    aget-object v3, v3, v1

    .line 385
    .local v3, "element":Landroid/aconfig/nano/Aconfig$flag_declaration;
    if-eqz v3, :cond_32

    .line 386
    nop

    .line 387
    const/4 v4, 0x2

    invoke-static {v4, v3}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILandroid/internal/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v0, v4

    .line 383
    .end local v3    # "element":Landroid/aconfig/nano/Aconfig$flag_declaration;
    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 391
    .end local v1    # "i":I
    :cond_35
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->container:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 392
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->container:Ljava/lang/String;

    .line 393
    const/4 v2, 0x3

    invoke-static {v2, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 395
    :cond_45
    return v0
.end method

.method public blacklist mergeFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$flag_declarations;
    .registers 8
    .param p1, "input"    # Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 403
    nop

    :goto_1
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 404
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_62

    .line 408
    invoke-static {p1, v0}, Landroid/internal/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_60

    .line 409
    return-object p0

    .line 438
    :sswitch_f
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->container:Ljava/lang/String;

    goto :goto_60

    .line 418
    :sswitch_16
    nop

    .line 419
    const/16 v1, 0x12

    invoke-static {p1, v1}, Landroid/internal/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 420
    .local v1, "arrayLength":I
    iget-object v2, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->flag:[Landroid/aconfig/nano/Aconfig$flag_declaration;

    const/4 v3, 0x0

    if-nez v2, :cond_24

    move v2, v3

    goto :goto_27

    :cond_24
    iget-object v2, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->flag:[Landroid/aconfig/nano/Aconfig$flag_declaration;

    array-length v2, v2

    .line 421
    .local v2, "i":I
    :goto_27
    add-int v4, v2, v1

    new-array v4, v4, [Landroid/aconfig/nano/Aconfig$flag_declaration;

    .line 423
    .local v4, "newArray":[Landroid/aconfig/nano/Aconfig$flag_declaration;
    if-eqz v2, :cond_32

    .line 424
    iget-object v5, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->flag:[Landroid/aconfig/nano/Aconfig$flag_declaration;

    invoke-static {v5, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 426
    :cond_32
    :goto_32
    array-length v3, v4

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_49

    .line 427
    new-instance v3, Landroid/aconfig/nano/Aconfig$flag_declaration;

    invoke-direct {v3}, Landroid/aconfig/nano/Aconfig$flag_declaration;-><init>()V

    aput-object v3, v4, v2

    .line 428
    aget-object v3, v4, v2

    invoke-virtual {p1, v3}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Landroid/internal/framework/protobuf/nano/MessageNano;)V

    .line 429
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 426
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 432
    :cond_49
    new-instance v3, Landroid/aconfig/nano/Aconfig$flag_declaration;

    invoke-direct {v3}, Landroid/aconfig/nano/Aconfig$flag_declaration;-><init>()V

    aput-object v3, v4, v2

    .line 433
    aget-object v3, v4, v2

    invoke-virtual {p1, v3}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Landroid/internal/framework/protobuf/nano/MessageNano;)V

    .line 434
    iput-object v4, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->flag:[Landroid/aconfig/nano/Aconfig$flag_declaration;

    .line 435
    goto :goto_60

    .line 414
    .end local v1    # "arrayLength":I
    .end local v2    # "i":I
    .end local v4    # "newArray":[Landroid/aconfig/nano/Aconfig$flag_declaration;
    :sswitch_58
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->package_:Ljava/lang/String;

    .line 415
    goto :goto_60

    .line 406
    :sswitch_5f
    return-object p0

    .line 442
    .end local v0    # "tag":I
    :cond_60
    :goto_60
    goto :goto_1

    nop

    :sswitch_data_62
    .sparse-switch
        0x0 -> :sswitch_5f
        0xa -> :sswitch_58
        0x12 -> :sswitch_16
        0x1a -> :sswitch_f
    .end sparse-switch
.end method

.method public bridge synthetic blacklist mergeFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/internal/framework/protobuf/nano/MessageNano;
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

    .line 317
    invoke-virtual {p0, p1}, Landroid/aconfig/nano/Aconfig$flag_declarations;->mergeFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$flag_declarations;

    move-result-object p1

    return-object p1
.end method

.method public blacklist writeTo(Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 6
    .param p1, "output"    # Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->package_:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 359
    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->package_:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 361
    :cond_10
    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->flag:[Landroid/aconfig/nano/Aconfig$flag_declaration;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->flag:[Landroid/aconfig/nano/Aconfig$flag_declaration;

    array-length v0, v0

    if-lez v0, :cond_2c

    .line 362
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1a
    iget-object v2, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->flag:[Landroid/aconfig/nano/Aconfig$flag_declaration;

    array-length v2, v2

    if-ge v0, v2, :cond_2c

    .line 363
    iget-object v2, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->flag:[Landroid/aconfig/nano/Aconfig$flag_declaration;

    aget-object v2, v2, v0

    .line 364
    .local v2, "element":Landroid/aconfig/nano/Aconfig$flag_declaration;
    if-eqz v2, :cond_29

    .line 365
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILandroid/internal/framework/protobuf/nano/MessageNano;)V

    .line 362
    .end local v2    # "element":Landroid/aconfig/nano/Aconfig$flag_declaration;
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 369
    .end local v0    # "i":I
    :cond_2c
    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->container:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 370
    const/4 v0, 0x3

    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->container:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 372
    :cond_3a
    invoke-super {p0, p1}, Landroid/internal/framework/protobuf/nano/MessageNano;->writeTo(Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 373
    return-void
.end method
