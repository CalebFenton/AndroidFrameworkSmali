.class public final Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "OtaPackageMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/ota/nano/OtaPackageMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApexMetadata"
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;


# instance fields
.field public blacklist apexInfo:[Landroid/ota/nano/OtaPackageMetadata$ApexInfo;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 613
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 614
    invoke-virtual {p0}, Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;->clear()Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;

    .line 615
    return-void
.end method

.method public static blacklist emptyArray()[Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;
    .registers 2

    .line 599
    sget-object v0, Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;->_emptyArray:[Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;

    if-nez v0, :cond_15

    .line 600
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 602
    :try_start_7
    sget-object v1, Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;->_emptyArray:[Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;

    if-nez v1, :cond_10

    .line 603
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;

    sput-object v1, Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;->_emptyArray:[Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;

    .line 605
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 607
    :cond_15
    :goto_15
    sget-object v0, Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;->_emptyArray:[Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;
    .registers 2
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 699
    new-instance v0, Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;

    invoke-direct {v0}, Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;-><init>()V

    invoke-virtual {v0, p0}, Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 693
    new-instance v0, Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;

    invoke-direct {v0}, Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;
    .registers 2

    .line 618
    invoke-static {}, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->emptyArray()[Landroid/ota/nano/OtaPackageMetadata$ApexInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;->apexInfo:[Landroid/ota/nano/OtaPackageMetadata$ApexInfo;

    .line 619
    const/4 v0, -0x1

    iput v0, p0, Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;->cachedSize:I

    .line 620
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 5

    .line 639
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 640
    .local v0, "size":I
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;->apexInfo:[Landroid/ota/nano/OtaPackageMetadata$ApexInfo;

    if-eqz v1, :cond_23

    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;->apexInfo:[Landroid/ota/nano/OtaPackageMetadata$ApexInfo;

    array-length v1, v1

    if-lez v1, :cond_23

    .line 641
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    iget-object v2, p0, Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;->apexInfo:[Landroid/ota/nano/OtaPackageMetadata$ApexInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_23

    .line 642
    iget-object v2, p0, Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;->apexInfo:[Landroid/ota/nano/OtaPackageMetadata$ApexInfo;

    aget-object v2, v2, v1

    .line 643
    .local v2, "element":Landroid/ota/nano/OtaPackageMetadata$ApexInfo;
    if-eqz v2, :cond_20

    .line 644
    nop

    .line 645
    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    .line 641
    .end local v2    # "element":Landroid/ota/nano/OtaPackageMetadata$ApexInfo;
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 649
    .end local v1    # "i":I
    :cond_23
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;
    .registers 8
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 657
    nop

    :goto_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 658
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_54

    .line 662
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_52

    .line 663
    return-object p0

    .line 668
    :sswitch_f
    nop

    .line 669
    const/16 v1, 0xa

    invoke-static {p1, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 670
    .local v1, "arrayLength":I
    iget-object v2, p0, Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;->apexInfo:[Landroid/ota/nano/OtaPackageMetadata$ApexInfo;

    const/4 v3, 0x0

    if-nez v2, :cond_1d

    move v2, v3

    goto :goto_20

    :cond_1d
    iget-object v2, p0, Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;->apexInfo:[Landroid/ota/nano/OtaPackageMetadata$ApexInfo;

    array-length v2, v2

    .line 671
    .local v2, "i":I
    :goto_20
    add-int v4, v2, v1

    new-array v4, v4, [Landroid/ota/nano/OtaPackageMetadata$ApexInfo;

    .line 673
    .local v4, "newArray":[Landroid/ota/nano/OtaPackageMetadata$ApexInfo;
    if-eqz v2, :cond_2b

    .line 674
    iget-object v5, p0, Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;->apexInfo:[Landroid/ota/nano/OtaPackageMetadata$ApexInfo;

    invoke-static {v5, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 676
    :cond_2b
    :goto_2b
    array-length v3, v4

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_42

    .line 677
    new-instance v3, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;

    invoke-direct {v3}, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;-><init>()V

    aput-object v3, v4, v2

    .line 678
    aget-object v3, v4, v2

    invoke-virtual {p1, v3}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 679
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 676
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 682
    :cond_42
    new-instance v3, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;

    invoke-direct {v3}, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;-><init>()V

    aput-object v3, v4, v2

    .line 683
    aget-object v3, v4, v2

    invoke-virtual {p1, v3}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 684
    iput-object v4, p0, Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;->apexInfo:[Landroid/ota/nano/OtaPackageMetadata$ApexInfo;

    .line 685
    goto :goto_52

    .line 660
    .end local v1    # "arrayLength":I
    .end local v2    # "i":I
    .end local v4    # "newArray":[Landroid/ota/nano/OtaPackageMetadata$ApexInfo;
    :sswitch_51
    return-object p0

    .line 688
    .end local v0    # "tag":I
    :cond_52
    :goto_52
    goto :goto_1

    nop

    :sswitch_data_54
    .sparse-switch
        0x0 -> :sswitch_51
        0xa -> :sswitch_f
    .end sparse-switch
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
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

    .line 593
    invoke-virtual {p0, p1}, Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;

    move-result-object p1

    return-object p1
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 5
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 626
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;->apexInfo:[Landroid/ota/nano/OtaPackageMetadata$ApexInfo;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;->apexInfo:[Landroid/ota/nano/OtaPackageMetadata$ApexInfo;

    array-length v0, v0

    if-lez v0, :cond_1c

    .line 627
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;->apexInfo:[Landroid/ota/nano/OtaPackageMetadata$ApexInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_1c

    .line 628
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;->apexInfo:[Landroid/ota/nano/OtaPackageMetadata$ApexInfo;

    aget-object v1, v1, v0

    .line 629
    .local v1, "element":Landroid/ota/nano/OtaPackageMetadata$ApexInfo;
    if-eqz v1, :cond_19

    .line 630
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 627
    .end local v1    # "element":Landroid/ota/nano/OtaPackageMetadata$ApexInfo;
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 634
    .end local v0    # "i":I
    :cond_1c
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 635
    return-void
.end method
