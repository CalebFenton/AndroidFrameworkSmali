.class public final Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;
.super Lcom/google/protobuf/nano/MessageNano;
.source "WifiMetricsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WifiScoreCount"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;


# instance fields
.field public count:I

.field public score:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1965
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    #@3
    .line 1966
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;->clear()Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    #@6
    .line 1965
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;
    .locals 2

    #@0
    .prologue
    .line 1946
    sget-object v0, Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;->_emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 1947
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    .line 1949
    :try_start_0
    sget-object v0, Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;->_emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 1950
    const/4 v0, 0x0

    #@c
    new-array v0, v0, [Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    #@e
    sput-object v0, Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;->_emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit v1

    #@11
    .line 1954
    :cond_1
    sget-object v0, Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;->_emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    #@13
    return-object v0

    #@14
    .line 1947
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2037
    new-instance v0, Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    #@2
    invoke-direct {v0}, Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    #@0
    .prologue
    .line 2031
    new-instance v0, Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    #@2
    invoke-direct {v0}, Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;-><init>()V

    #@5
    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    #@b
    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1970
    iput v0, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;->score:I

    #@3
    .line 1971
    iput v0, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;->count:I

    #@5
    .line 1972
    const/4 v0, -0x1

    #@6
    iput v0, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;->cachedSize:I

    #@8
    .line 1973
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    #@0
    .prologue
    .line 1990
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    #@3
    move-result v0

    #@4
    .line 1991
    .local v0, "size":I
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;->score:I

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 1993
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;->score:I

    #@a
    const/4 v2, 0x1

    #@b
    .line 1992
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@e
    move-result v1

    #@f
    add-int/2addr v0, v1

    #@10
    .line 1995
    :cond_0
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;->count:I

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 1997
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;->count:I

    #@16
    const/4 v2, 0x2

    #@17
    .line 1996
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@1a
    move-result v1

    #@1b
    add-int/2addr v0, v1

    #@1c
    .line 1999
    :cond_1
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2007
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@3
    move-result v0

    #@4
    .line 2008
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    #@7
    .line 2012
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_0

    #@d
    .line 2013
    return-object p0

    #@e
    .line 2010
    :sswitch_0
    return-object p0

    #@f
    .line 2018
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@12
    move-result v1

    #@13
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;->score:I

    #@15
    goto :goto_0

    #@16
    .line 2022
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@19
    move-result v1

    #@1a
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;->count:I

    #@1c
    goto :goto_0

    #@1d
    .line 2008
    nop

    #@1e
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2003
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1979
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;->score:I

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1980
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;->score:I

    #@6
    const/4 v1, 0x1

    #@7
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@a
    .line 1982
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;->count:I

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 1983
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;->count:I

    #@10
    const/4 v1, 0x2

    #@11
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@14
    .line 1985
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    #@17
    .line 1978
    return-void
.end method
