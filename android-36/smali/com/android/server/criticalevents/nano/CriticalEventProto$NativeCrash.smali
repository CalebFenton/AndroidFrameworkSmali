.class public final Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "CriticalEventProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/criticalevents/nano/CriticalEventProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NativeCrash"
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;


# instance fields
.field public blacklist pid:I

.field public blacklist process:Ljava/lang/String;

.field public blacklist processClass:I

.field public blacklist uid:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 729
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 730
    invoke-virtual {p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->clear()Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    .line 731
    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;
    .registers 2

    .line 706
    sget-object v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    if-nez v0, :cond_15

    .line 707
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 709
    :try_start_7
    sget-object v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    if-nez v1, :cond_10

    .line 710
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    sput-object v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    .line 712
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 714
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;
    .registers 2
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 833
    new-instance v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    invoke-direct {v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 827
    new-instance v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    invoke-direct {v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;
    .registers 2

    .line 734
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->process:Ljava/lang/String;

    .line 735
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->pid:I

    .line 736
    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->uid:I

    .line 737
    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->processClass:I

    .line 738
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->cachedSize:I

    .line 739
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 4

    .line 762
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 763
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->process:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 764
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->process:Ljava/lang/String;

    .line 765
    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 767
    :cond_16
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->pid:I

    if-eqz v1, :cond_22

    .line 768
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->pid:I

    .line 769
    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 771
    :cond_22
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->uid:I

    if-eqz v1, :cond_2e

    .line 772
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->uid:I

    .line 773
    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 775
    :cond_2e
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->processClass:I

    if-eqz v1, :cond_3a

    .line 776
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->processClass:I

    .line 777
    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 779
    :cond_3a
    return v0
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

    .line 700
    invoke-virtual {p0, p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    move-result-object p1

    return-object p1
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;
    .registers 4
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 787
    nop

    :goto_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 788
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_32

    .line 792
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_30

    .line 793
    return-object p0

    .line 810
    :sswitch_f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 811
    .local v1, "value":I
    packed-switch v1, :pswitch_data_48

    goto :goto_19

    .line 816
    :pswitch_17
    iput v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->processClass:I

    .line 819
    :goto_19
    goto :goto_30

    .line 806
    .end local v1    # "value":I
    :sswitch_1a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->uid:I

    .line 807
    goto :goto_30

    .line 802
    :sswitch_21
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->pid:I

    .line 803
    goto :goto_30

    .line 798
    :sswitch_28
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->process:Ljava/lang/String;

    .line 799
    goto :goto_30

    .line 790
    :sswitch_2f
    return-object p0

    .line 822
    .end local v0    # "tag":I
    :cond_30
    :goto_30
    goto :goto_1

    nop

    :sswitch_data_32
    .sparse-switch
        0x0 -> :sswitch_2f
        0xa -> :sswitch_28
        0x10 -> :sswitch_21
        0x18 -> :sswitch_1a
        0x20 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
    .end packed-switch
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 4
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 745
    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->process:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 746
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->process:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 748
    :cond_10
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->pid:I

    if-eqz v0, :cond_1a

    .line 749
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->pid:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 751
    :cond_1a
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->uid:I

    if-eqz v0, :cond_24

    .line 752
    const/4 v0, 0x3

    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->uid:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 754
    :cond_24
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->processClass:I

    if-eqz v0, :cond_2e

    .line 755
    const/4 v0, 0x4

    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->processClass:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 757
    :cond_2e
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 758
    return-void
.end method
