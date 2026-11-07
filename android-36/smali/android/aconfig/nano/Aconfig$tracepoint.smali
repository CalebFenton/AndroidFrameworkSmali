.class public final Landroid/aconfig/nano/Aconfig$tracepoint;
.super Landroid/internal/framework/protobuf/nano/MessageNano;
.source "Aconfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/aconfig/nano/Aconfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "tracepoint"
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Landroid/aconfig/nano/Aconfig$tracepoint;


# instance fields
.field public blacklist permission:I

.field public blacklist source:Ljava/lang/String;

.field public blacklist state:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 734
    invoke-direct {p0}, Landroid/internal/framework/protobuf/nano/MessageNano;-><init>()V

    .line 735
    invoke-virtual {p0}, Landroid/aconfig/nano/Aconfig$tracepoint;->clear()Landroid/aconfig/nano/Aconfig$tracepoint;

    .line 736
    return-void
.end method

.method public static blacklist emptyArray()[Landroid/aconfig/nano/Aconfig$tracepoint;
    .registers 2

    .line 714
    sget-object v0, Landroid/aconfig/nano/Aconfig$tracepoint;->_emptyArray:[Landroid/aconfig/nano/Aconfig$tracepoint;

    if-nez v0, :cond_15

    .line 715
    sget-object v0, Landroid/internal/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 717
    :try_start_7
    sget-object v1, Landroid/aconfig/nano/Aconfig$tracepoint;->_emptyArray:[Landroid/aconfig/nano/Aconfig$tracepoint;

    if-nez v1, :cond_10

    .line 718
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/aconfig/nano/Aconfig$tracepoint;

    sput-object v1, Landroid/aconfig/nano/Aconfig$tracepoint;->_emptyArray:[Landroid/aconfig/nano/Aconfig$tracepoint;

    .line 720
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 722
    :cond_15
    :goto_15
    sget-object v0, Landroid/aconfig/nano/Aconfig$tracepoint;->_emptyArray:[Landroid/aconfig/nano/Aconfig$tracepoint;

    return-object v0
.end method

.method public static blacklist parseFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$tracepoint;
    .registers 2
    .param p0, "input"    # Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 830
    new-instance v0, Landroid/aconfig/nano/Aconfig$tracepoint;

    invoke-direct {v0}, Landroid/aconfig/nano/Aconfig$tracepoint;-><init>()V

    invoke-virtual {v0, p0}, Landroid/aconfig/nano/Aconfig$tracepoint;->mergeFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$tracepoint;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Landroid/aconfig/nano/Aconfig$tracepoint;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/internal/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 824
    new-instance v0, Landroid/aconfig/nano/Aconfig$tracepoint;

    invoke-direct {v0}, Landroid/aconfig/nano/Aconfig$tracepoint;-><init>()V

    invoke-static {v0, p0}, Landroid/internal/framework/protobuf/nano/MessageNano;->mergeFrom(Landroid/internal/framework/protobuf/nano/MessageNano;[B)Landroid/internal/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Landroid/aconfig/nano/Aconfig$tracepoint;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Landroid/aconfig/nano/Aconfig$tracepoint;
    .registers 2

    .line 739
    const-string v0, ""

    iput-object v0, p0, Landroid/aconfig/nano/Aconfig$tracepoint;->source:Ljava/lang/String;

    .line 740
    const/4 v0, 0x1

    iput v0, p0, Landroid/aconfig/nano/Aconfig$tracepoint;->state:I

    .line 741
    iput v0, p0, Landroid/aconfig/nano/Aconfig$tracepoint;->permission:I

    .line 742
    const/4 v0, -0x1

    iput v0, p0, Landroid/aconfig/nano/Aconfig$tracepoint;->cachedSize:I

    .line 743
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 5

    .line 763
    invoke-super {p0}, Landroid/internal/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 764
    .local v0, "size":I
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$tracepoint;->source:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_16

    .line 765
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$tracepoint;->source:Ljava/lang/String;

    .line 766
    invoke-static {v2, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 768
    :cond_16
    iget v1, p0, Landroid/aconfig/nano/Aconfig$tracepoint;->state:I

    if-eq v1, v2, :cond_22

    .line 769
    iget v1, p0, Landroid/aconfig/nano/Aconfig$tracepoint;->state:I

    .line 770
    const/4 v3, 0x2

    invoke-static {v3, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 772
    :cond_22
    iget v1, p0, Landroid/aconfig/nano/Aconfig$tracepoint;->permission:I

    if-eq v1, v2, :cond_2e

    .line 773
    iget v1, p0, Landroid/aconfig/nano/Aconfig$tracepoint;->permission:I

    .line 774
    const/4 v2, 0x3

    invoke-static {v2, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 776
    :cond_2e
    return v0
.end method

.method public blacklist mergeFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$tracepoint;
    .registers 4
    .param p1, "input"    # Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 784
    nop

    :goto_1
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 785
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_2e

    .line 789
    invoke-static {p1, v0}, Landroid/internal/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 790
    return-object p0

    .line 809
    :sswitch_f
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 810
    .local v1, "value":I
    packed-switch v1, :pswitch_data_40

    goto :goto_19

    .line 813
    :pswitch_17
    iput v1, p0, Landroid/aconfig/nano/Aconfig$tracepoint;->permission:I

    .line 816
    :goto_19
    goto :goto_2d

    .line 799
    .end local v1    # "value":I
    :sswitch_1a
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 800
    .restart local v1    # "value":I
    packed-switch v1, :pswitch_data_48

    goto :goto_24

    .line 803
    :pswitch_22
    iput v1, p0, Landroid/aconfig/nano/Aconfig$tracepoint;->state:I

    .line 806
    :goto_24
    goto :goto_2d

    .line 795
    .end local v1    # "value":I
    :sswitch_25
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/aconfig/nano/Aconfig$tracepoint;->source:Ljava/lang/String;

    .line 796
    goto :goto_2d

    .line 787
    :sswitch_2c
    return-object p0

    .line 819
    .end local v0    # "tag":I
    :cond_2d
    :goto_2d
    goto :goto_1

    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_2c
        0xa -> :sswitch_25
        0x10 -> :sswitch_1a
        0x18 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_17
        :pswitch_17
    .end packed-switch

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_22
        :pswitch_22
    .end packed-switch
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

    .line 708
    invoke-virtual {p0, p1}, Landroid/aconfig/nano/Aconfig$tracepoint;->mergeFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$tracepoint;

    move-result-object p1

    return-object p1
.end method

.method public blacklist writeTo(Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 5
    .param p1, "output"    # Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 749
    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$tracepoint;->source:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_10

    .line 750
    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$tracepoint;->source:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 752
    :cond_10
    iget v0, p0, Landroid/aconfig/nano/Aconfig$tracepoint;->state:I

    if-eq v0, v1, :cond_1a

    .line 753
    const/4 v0, 0x2

    iget v2, p0, Landroid/aconfig/nano/Aconfig$tracepoint;->state:I

    invoke-virtual {p1, v0, v2}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 755
    :cond_1a
    iget v0, p0, Landroid/aconfig/nano/Aconfig$tracepoint;->permission:I

    if-eq v0, v1, :cond_24

    .line 756
    const/4 v0, 0x3

    iget v1, p0, Landroid/aconfig/nano/Aconfig$tracepoint;->permission:I

    invoke-virtual {p1, v0, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 758
    :cond_24
    invoke-super {p0, p1}, Landroid/internal/framework/protobuf/nano/MessageNano;->writeTo(Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 759
    return-void
.end method
