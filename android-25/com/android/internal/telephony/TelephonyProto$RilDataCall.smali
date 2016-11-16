.class public final Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
.super Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TelephonyProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RilDataCall"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/android/internal/telephony/TelephonyProto$RilDataCall;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;


# instance fields
.field private bitField0_:I

.field private cid_:I

.field private iframe_:Ljava/lang/String;

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 2621
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;-><init>()V

    #@3
    .line 2622
    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->clear()Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@6
    .line 2621
    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    .locals 2

    #@0
    .prologue
    .line 2546
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 2547
    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    .line 2549
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 2550
    const/4 v0, 0x0

    #@c
    new-array v0, v0, [Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@e
    sput-object v0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit v1

    #@11
    .line 2554
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@13
    return-object v0

    #@14
    .line 2547
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2724
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    #@0
    .prologue
    .line 2718
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;-><init>()V

    #@5
    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@b
    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2626
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->bitField0_:I

    #@3
    .line 2627
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->cid_:I

    #@5
    .line 2628
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->type_:I

    #@7
    .line 2629
    const-string/jumbo v0, ""

    #@a
    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->iframe_:Ljava/lang/String;

    #@c
    .line 2630
    const/4 v0, 0x0

    #@d
    iput-object v0, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    #@f
    .line 2631
    const/4 v0, -0x1

    #@10
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->cachedSize:I

    #@12
    .line 2632
    return-object p0
.end method

.method public clearCid()Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    .locals 1

    #@0
    .prologue
    .line 2573
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->cid_:I

    #@3
    .line 2574
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->bitField0_:I

    #@5
    and-int/lit8 v0, v0, -0x2

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->bitField0_:I

    #@9
    .line 2575
    return-object p0
.end method

.method public clearIframe()Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    .locals 1

    #@0
    .prologue
    .line 2614
    const-string/jumbo v0, ""

    #@3
    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->iframe_:Ljava/lang/String;

    #@5
    .line 2615
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->bitField0_:I

    #@7
    and-int/lit8 v0, v0, -0x5

    #@9
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->bitField0_:I

    #@b
    .line 2616
    return-object p0
.end method

.method public clearType()Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    .locals 1

    #@0
    .prologue
    .line 2592
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->type_:I

    #@3
    .line 2593
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->bitField0_:I

    #@5
    and-int/lit8 v0, v0, -0x3

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->bitField0_:I

    #@9
    .line 2594
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    #@0
    .prologue
    .line 2652
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    #@3
    move-result v0

    #@4
    .line 2653
    .local v0, "size":I
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->bitField0_:I

    #@6
    and-int/lit8 v1, v1, 0x1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 2655
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->cid_:I

    #@c
    const/4 v2, 0x1

    #@d
    .line 2654
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@10
    move-result v1

    #@11
    add-int/2addr v0, v1

    #@12
    .line 2657
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->bitField0_:I

    #@14
    and-int/lit8 v1, v1, 0x2

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 2659
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->type_:I

    #@1a
    const/4 v2, 0x2

    #@1b
    .line 2658
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@1e
    move-result v1

    #@1f
    add-int/2addr v0, v1

    #@20
    .line 2661
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->bitField0_:I

    #@22
    and-int/lit8 v1, v1, 0x4

    #@24
    if-eqz v1, :cond_2

    #@26
    .line 2663
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->iframe_:Ljava/lang/String;

    #@28
    const/4 v2, 0x3

    #@29
    .line 2662
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    #@2c
    move-result v1

    #@2d
    add-int/2addr v0, v1

    #@2e
    .line 2665
    :cond_2
    return v0
.end method

.method public getCid()I
    .locals 1

    #@0
    .prologue
    .line 2562
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->cid_:I

    #@2
    return v0
.end method

.method public getIframe()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 2600
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->iframe_:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 2581
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->type_:I

    #@2
    return v0
.end method

.method public hasCid()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2570
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->bitField0_:I

    #@3
    and-int/lit8 v1, v1, 0x1

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public hasIframe()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2611
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->bitField0_:I

    #@3
    and-int/lit8 v1, v1, 0x4

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public hasType()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2589
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->bitField0_:I

    #@3
    and-int/lit8 v1, v1, 0x2

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2669
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    .locals 4
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2673
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@3
    move-result v1

    #@4
    .line 2674
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    #@7
    .line 2678
    invoke-super {p0, p1, v1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@a
    move-result v3

    #@b
    if-nez v3, :cond_0

    #@d
    .line 2679
    return-object p0

    #@e
    .line 2676
    :sswitch_0
    return-object p0

    #@f
    .line 2684
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@12
    move-result v3

    #@13
    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->cid_:I

    #@15
    .line 2685
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->bitField0_:I

    #@17
    or-int/lit8 v3, v3, 0x1

    #@19
    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->bitField0_:I

    #@1b
    goto :goto_0

    #@1c
    .line 2689
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    #@1f
    move-result v0

    #@20
    .line 2690
    .local v0, "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@23
    move-result v2

    #@24
    .line 2691
    .local v2, "value":I
    packed-switch v2, :pswitch_data_0

    #@27
    .line 2701
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    #@2a
    .line 2702
    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@2d
    goto :goto_0

    #@2e
    .line 2697
    :pswitch_0
    iput v2, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->type_:I

    #@30
    .line 2698
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->bitField0_:I

    #@32
    or-int/lit8 v3, v3, 0x2

    #@34
    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->bitField0_:I

    #@36
    goto :goto_0

    #@37
    .line 2708
    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    iput-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->iframe_:Ljava/lang/String;

    #@3d
    .line 2709
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->bitField0_:I

    #@3f
    or-int/lit8 v3, v3, 0x4

    #@41
    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->bitField0_:I

    #@43
    goto :goto_0

    #@44
    .line 2674
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch

    #@56
    .line 2691
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setCid(I)Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 2565
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->cid_:I

    #@2
    .line 2566
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x1

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->bitField0_:I

    #@8
    .line 2567
    return-object p0
.end method

.method public setIframe(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2603
    if-nez p1, :cond_0

    #@2
    .line 2604
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 2606
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->iframe_:Ljava/lang/String;

    #@a
    .line 2607
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->bitField0_:I

    #@c
    or-int/lit8 v0, v0, 0x4

    #@e
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->bitField0_:I

    #@10
    .line 2608
    return-object p0
.end method

.method public setType(I)Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 2584
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->type_:I

    #@2
    .line 2585
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x2

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->bitField0_:I

    #@8
    .line 2586
    return-object p0
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2638
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->bitField0_:I

    #@2
    and-int/lit8 v0, v0, 0x1

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 2639
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->cid_:I

    #@8
    const/4 v1, 0x1

    #@9
    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@c
    .line 2641
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->bitField0_:I

    #@e
    and-int/lit8 v0, v0, 0x2

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 2642
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->type_:I

    #@14
    const/4 v1, 0x2

    #@15
    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@18
    .line 2644
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->bitField0_:I

    #@1a
    and-int/lit8 v0, v0, 0x4

    #@1c
    if-eqz v0, :cond_2

    #@1e
    .line 2645
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->iframe_:Ljava/lang/String;

    #@20
    const/4 v1, 0x3

    #@21
    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    #@24
    .line 2647
    :cond_2
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    #@27
    .line 2637
    return-void
.end method
