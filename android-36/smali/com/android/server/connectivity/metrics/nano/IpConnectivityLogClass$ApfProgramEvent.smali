.class public final Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApfProgramEvent"
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;


# instance fields
.field public blacklist currentRas:I

.field public blacklist dropMulticast:Z

.field public blacklist effectiveLifetime:J

.field public blacklist filteredRas:I

.field public blacklist hasIpv4Addr:Z

.field public blacklist lifetime:J

.field public blacklist programLength:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 1969
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 1970
    invoke-virtual {p0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->clear()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;

    .line 1971
    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;
    .registers 2

    .line 1937
    sget-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;

    if-nez v0, :cond_15

    .line 1938
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 1940
    :try_start_7
    sget-object v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;

    if-nez v1, :cond_10

    .line 1941
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;

    sput-object v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;

    .line 1943
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 1945
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;
    .registers 2
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2101
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 2095
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;
    .registers 3

    .line 1974
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->lifetime:J

    .line 1975
    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->effectiveLifetime:J

    .line 1976
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->filteredRas:I

    .line 1977
    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->currentRas:I

    .line 1978
    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->programLength:I

    .line 1979
    iput-boolean v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->dropMulticast:Z

    .line 1980
    iput-boolean v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->hasIpv4Addr:Z

    .line 1981
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->cachedSize:I

    .line 1982
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 7

    .line 2014
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 2015
    .local v0, "size":I
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->lifetime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_14

    .line 2016
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->lifetime:J

    .line 2017
    const/4 v5, 0x1

    invoke-static {v5, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2019
    :cond_14
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->filteredRas:I

    if-eqz v1, :cond_20

    .line 2020
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->filteredRas:I

    .line 2021
    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2023
    :cond_20
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->currentRas:I

    if-eqz v1, :cond_2c

    .line 2024
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->currentRas:I

    .line 2025
    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2027
    :cond_2c
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->programLength:I

    if-eqz v1, :cond_38

    .line 2028
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->programLength:I

    .line 2029
    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2031
    :cond_38
    iget-boolean v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->dropMulticast:Z

    if-eqz v1, :cond_44

    .line 2032
    iget-boolean v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->dropMulticast:Z

    .line 2033
    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2035
    :cond_44
    iget-boolean v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->hasIpv4Addr:Z

    if-eqz v1, :cond_50

    .line 2036
    iget-boolean v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->hasIpv4Addr:Z

    .line 2037
    const/4 v2, 0x6

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2039
    :cond_50
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->effectiveLifetime:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_5e

    .line 2040
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->effectiveLifetime:J

    .line 2041
    const/4 v3, 0x7

    invoke-static {v3, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2043
    :cond_5e
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

    .line 1931
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;

    move-result-object p1

    return-object p1
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;
    .registers 5
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2051
    nop

    :goto_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2052
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_42

    .line 2056
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_41

    .line 2057
    return-object p0

    .line 2086
    :sswitch_f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->effectiveLifetime:J

    goto :goto_41

    .line 2082
    :sswitch_16
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->hasIpv4Addr:Z

    .line 2083
    goto :goto_41

    .line 2078
    :sswitch_1d
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->dropMulticast:Z

    .line 2079
    goto :goto_41

    .line 2074
    :sswitch_24
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->programLength:I

    .line 2075
    goto :goto_41

    .line 2070
    :sswitch_2b
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->currentRas:I

    .line 2071
    goto :goto_41

    .line 2066
    :sswitch_32
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->filteredRas:I

    .line 2067
    goto :goto_41

    .line 2062
    :sswitch_39
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->lifetime:J

    .line 2063
    goto :goto_41

    .line 2054
    :sswitch_40
    return-object p0

    .line 2090
    .end local v0    # "tag":I
    :cond_41
    :goto_41
    goto :goto_1

    :sswitch_data_42
    .sparse-switch
        0x0 -> :sswitch_40
        0x8 -> :sswitch_39
        0x10 -> :sswitch_32
        0x18 -> :sswitch_2b
        0x20 -> :sswitch_24
        0x28 -> :sswitch_1d
        0x30 -> :sswitch_16
        0x38 -> :sswitch_f
    .end sparse-switch
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 8
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1988
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->lifetime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    .line 1989
    const/4 v0, 0x1

    iget-wide v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->lifetime:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1991
    :cond_e
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->filteredRas:I

    if-eqz v0, :cond_18

    .line 1992
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->filteredRas:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1994
    :cond_18
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->currentRas:I

    if-eqz v0, :cond_22

    .line 1995
    const/4 v0, 0x3

    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->currentRas:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1997
    :cond_22
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->programLength:I

    if-eqz v0, :cond_2c

    .line 1998
    const/4 v0, 0x4

    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->programLength:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2000
    :cond_2c
    iget-boolean v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->dropMulticast:Z

    if-eqz v0, :cond_36

    .line 2001
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->dropMulticast:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2003
    :cond_36
    iget-boolean v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->hasIpv4Addr:Z

    if-eqz v0, :cond_40

    .line 2004
    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->hasIpv4Addr:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2006
    :cond_40
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->effectiveLifetime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4c

    .line 2007
    const/4 v0, 0x7

    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->effectiveLifetime:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 2009
    :cond_4c
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2010
    return-void
.end method
