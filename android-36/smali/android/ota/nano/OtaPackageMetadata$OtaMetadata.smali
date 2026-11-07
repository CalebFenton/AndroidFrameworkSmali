.class public final Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "OtaPackageMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/ota/nano/OtaPackageMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OtaMetadata"
.end annotation


# static fields
.field public static final blacklist AB:I = 0x1

.field public static final blacklist BLOCK:I = 0x2

.field public static final blacklist BRICK:I = 0x3

.field public static final blacklist UNKNOWN:I

.field private static volatile blacklist _emptyArray:[Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;


# instance fields
.field public blacklist downgrade:Z

.field public blacklist postcondition:Landroid/ota/nano/OtaPackageMetadata$DeviceState;

.field public blacklist precondition:Landroid/ota/nano/OtaPackageMetadata$DeviceState;

.field public blacklist propertyFiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist requiredCache:J

.field public blacklist retrofitDynamicPartitions:Z

.field public blacklist splDowngrade:Z

.field public blacklist type:I

.field public blacklist wipe:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 753
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 754
    invoke-virtual {p0}, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->clear()Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;

    .line 755
    return-void
.end method

.method public static blacklist emptyArray()[Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;
    .registers 2

    .line 715
    sget-object v0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->_emptyArray:[Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;

    if-nez v0, :cond_15

    .line 716
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 718
    :try_start_7
    sget-object v1, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->_emptyArray:[Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;

    if-nez v1, :cond_10

    .line 719
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;

    sput-object v1, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->_emptyArray:[Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;

    .line 721
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 723
    :cond_15
    :goto_15
    sget-object v0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->_emptyArray:[Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;
    .registers 2
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 936
    new-instance v0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;

    invoke-direct {v0}, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;-><init>()V

    invoke-virtual {v0, p0}, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 930
    new-instance v0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;

    invoke-direct {v0}, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;
    .registers 4

    .line 758
    const/4 v0, 0x0

    iput v0, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->type:I

    .line 759
    iput-boolean v0, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->wipe:Z

    .line 760
    iput-boolean v0, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->downgrade:Z

    .line 761
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->propertyFiles:Ljava/util/Map;

    .line 762
    iput-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->precondition:Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    .line 763
    iput-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->postcondition:Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    .line 764
    iput-boolean v0, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->retrofitDynamicPartitions:Z

    .line 765
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->requiredCache:J

    .line 766
    iput-boolean v0, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->splDowngrade:Z

    .line 767
    const/4 v0, -0x1

    iput v0, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->cachedSize:I

    .line 768
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 8

    .line 809
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 810
    .local v0, "size":I
    iget v1, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->type:I

    if-eqz v1, :cond_10

    .line 811
    iget v1, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->type:I

    .line 812
    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 814
    :cond_10
    iget-boolean v1, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->wipe:Z

    if-eqz v1, :cond_1c

    .line 815
    iget-boolean v1, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->wipe:Z

    .line 816
    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 818
    :cond_1c
    iget-boolean v1, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->downgrade:Z

    if-eqz v1, :cond_28

    .line 819
    iget-boolean v1, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->downgrade:Z

    .line 820
    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 822
    :cond_28
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->propertyFiles:Ljava/util/Map;

    const/16 v2, 0x9

    if-eqz v1, :cond_36

    .line 823
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->propertyFiles:Ljava/util/Map;

    const/4 v3, 0x4

    invoke-static {v1, v3, v2, v2}, Lcom/android/framework/protobuf/nano/InternalNano;->computeMapFieldSize(Ljava/util/Map;III)I

    move-result v1

    add-int/2addr v0, v1

    .line 828
    :cond_36
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->precondition:Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    if-eqz v1, :cond_42

    .line 829
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->precondition:Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    .line 830
    const/4 v3, 0x5

    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 832
    :cond_42
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->postcondition:Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    if-eqz v1, :cond_4e

    .line 833
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->postcondition:Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    .line 834
    const/4 v3, 0x6

    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 836
    :cond_4e
    iget-boolean v1, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->retrofitDynamicPartitions:Z

    if-eqz v1, :cond_5a

    .line 837
    iget-boolean v1, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->retrofitDynamicPartitions:Z

    .line 838
    const/4 v3, 0x7

    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 840
    :cond_5a
    iget-wide v3, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->requiredCache:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6b

    .line 841
    iget-wide v3, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->requiredCache:J

    .line 842
    const/16 v1, 0x8

    invoke-static {v1, v3, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 844
    :cond_6b
    iget-boolean v1, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->splDowngrade:Z

    if-eqz v1, :cond_76

    .line 845
    iget-boolean v1, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->splDowngrade:Z

    .line 846
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 848
    :cond_76
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;
    .registers 11
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 856
    invoke-static {}, Lcom/android/framework/protobuf/nano/MapFactories;->getMapFactory()Lcom/android/framework/protobuf/nano/MapFactories$MapFactory;

    move-result-object v2

    .line 858
    .local v2, "mapFactory":Lcom/android/framework/protobuf/nano/MapFactories$MapFactory;
    :goto_4
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v8

    .line 859
    .local v8, "tag":I
    sparse-switch v8, :sswitch_data_82

    .line 863
    move-object v0, p1

    .end local p1    # "input":Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .local v0, "input":Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    invoke-static {v0, v8}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result p1

    if-nez p1, :cond_80

    .line 864
    return-object p0

    .line 921
    .end local v0    # "input":Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .restart local p1    # "input":Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    :sswitch_13
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->splDowngrade:Z

    move-object v0, p1

    goto/16 :goto_80

    .line 917
    :sswitch_1c
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->requiredCache:J

    .line 918
    move-object v0, p1

    goto :goto_80

    .line 913
    :sswitch_24
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->retrofitDynamicPartitions:Z

    .line 914
    move-object v0, p1

    goto :goto_80

    .line 906
    :sswitch_2c
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->postcondition:Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    if-nez v0, :cond_37

    .line 907
    new-instance v0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    invoke-direct {v0}, Landroid/ota/nano/OtaPackageMetadata$DeviceState;-><init>()V

    iput-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->postcondition:Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    .line 909
    :cond_37
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->postcondition:Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 910
    move-object v0, p1

    goto :goto_80

    .line 899
    :sswitch_3e
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->precondition:Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    if-nez v0, :cond_49

    .line 900
    new-instance v0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    invoke-direct {v0}, Landroid/ota/nano/OtaPackageMetadata$DeviceState;-><init>()V

    iput-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->precondition:Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    .line 902
    :cond_49
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->precondition:Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 903
    move-object v0, p1

    goto :goto_80

    .line 889
    :sswitch_50
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->propertyFiles:Ljava/util/Map;

    const/16 v6, 0xa

    const/16 v7, 0x12

    const/16 v3, 0x9

    const/16 v4, 0x9

    const/4 v5, 0x0

    move-object v0, p1

    .end local p1    # "input":Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .restart local v0    # "input":Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    invoke-static/range {v0 .. v7}, Lcom/android/framework/protobuf/nano/InternalNano;->mergeMapEntry(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;Ljava/util/Map;Lcom/android/framework/protobuf/nano/MapFactories$MapFactory;IILjava/lang/Object;II)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->propertyFiles:Ljava/util/Map;

    .line 896
    goto :goto_80

    .line 885
    .end local v0    # "input":Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .restart local p1    # "input":Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    :sswitch_63
    move-object v0, p1

    .end local p1    # "input":Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .restart local v0    # "input":Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    invoke-virtual {v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->downgrade:Z

    .line 886
    goto :goto_80

    .line 881
    .end local v0    # "input":Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .restart local p1    # "input":Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    :sswitch_6b
    move-object v0, p1

    .end local p1    # "input":Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .restart local v0    # "input":Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    invoke-virtual {v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->wipe:Z

    .line 882
    goto :goto_80

    .line 869
    .end local v0    # "input":Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .restart local p1    # "input":Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    :sswitch_73
    move-object v0, p1

    .end local p1    # "input":Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .restart local v0    # "input":Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    invoke-virtual {v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result p1

    .line 870
    .local p1, "value":I
    packed-switch p1, :pswitch_data_ac

    goto :goto_7e

    .line 875
    :pswitch_7c
    iput p1, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->type:I

    .line 878
    :goto_7e
    goto :goto_80

    .line 861
    .end local v0    # "input":Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .local p1, "input":Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    :sswitch_7f
    return-object p0

    .line 925
    .end local v8    # "tag":I
    .end local p1    # "input":Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .restart local v0    # "input":Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    :cond_80
    :goto_80
    move-object p1, v0

    goto :goto_4

    :sswitch_data_82
    .sparse-switch
        0x0 -> :sswitch_7f
        0x8 -> :sswitch_73
        0x10 -> :sswitch_6b
        0x18 -> :sswitch_63
        0x22 -> :sswitch_50
        0x2a -> :sswitch_3e
        0x32 -> :sswitch_2c
        0x38 -> :sswitch_24
        0x40 -> :sswitch_1c
        0x48 -> :sswitch_13
    .end sparse-switch

    :pswitch_data_ac
    .packed-switch 0x0
        :pswitch_7c
        :pswitch_7c
        :pswitch_7c
        :pswitch_7c
    .end packed-switch
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

    .line 703
    invoke-virtual {p0, p1}, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;

    move-result-object p1

    return-object p1
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 8
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 774
    iget v0, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->type:I

    if-eqz v0, :cond_a

    .line 775
    const/4 v0, 0x1

    iget v1, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->type:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 777
    :cond_a
    iget-boolean v0, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->wipe:Z

    if-eqz v0, :cond_14

    .line 778
    const/4 v0, 0x2

    iget-boolean v1, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->wipe:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 780
    :cond_14
    iget-boolean v0, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->downgrade:Z

    if-eqz v0, :cond_1e

    .line 781
    const/4 v0, 0x3

    iget-boolean v1, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->downgrade:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 783
    :cond_1e
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->propertyFiles:Ljava/util/Map;

    const/16 v1, 0x9

    if-eqz v0, :cond_2a

    .line 784
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->propertyFiles:Ljava/util/Map;

    const/4 v2, 0x4

    invoke-static {p1, v0, v2, v1, v1}, Lcom/android/framework/protobuf/nano/InternalNano;->serializeMapField(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;Ljava/util/Map;III)V

    .line 789
    :cond_2a
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->precondition:Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    if-eqz v0, :cond_34

    .line 790
    const/4 v0, 0x5

    iget-object v2, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->precondition:Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 792
    :cond_34
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->postcondition:Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    if-eqz v0, :cond_3e

    .line 793
    const/4 v0, 0x6

    iget-object v2, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->postcondition:Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 795
    :cond_3e
    iget-boolean v0, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->retrofitDynamicPartitions:Z

    if-eqz v0, :cond_48

    .line 796
    const/4 v0, 0x7

    iget-boolean v2, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->retrofitDynamicPartitions:Z

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 798
    :cond_48
    iget-wide v2, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->requiredCache:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_57

    .line 799
    const/16 v0, 0x8

    iget-wide v2, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->requiredCache:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 801
    :cond_57
    iget-boolean v0, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->splDowngrade:Z

    if-eqz v0, :cond_60

    .line 802
    iget-boolean v0, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->splDowngrade:Z

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 804
    :cond_60
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 805
    return-void
.end method
