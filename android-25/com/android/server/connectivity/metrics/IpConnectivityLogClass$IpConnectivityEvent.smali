.class public final Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
.super Lcom/google/protobuf/nano/MessageNano;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IpConnectivityEvent"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;


# instance fields
.field public apfProgramEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;

.field public apfStatistics:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;

.field public defaultNetworkEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;

.field public dhcpEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

.field public dnsLookupBatch:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;

.field public ipProvisioningEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;

.field public ipReachabilityEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;

.field public networkEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;

.field public raEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

.field public timeMs:J

.field public validationProbeEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1723
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    #@3
    .line 1724
    invoke-virtual {p0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->clear()Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    #@6
    .line 1723
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 2

    #@0
    .prologue
    .line 1677
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 1678
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    .line 1680
    :try_start_0
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 1681
    const/4 v0, 0x0

    #@c
    new-array v0, v0, [Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    #@e
    sput-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit v1

    #@11
    .line 1685
    :cond_1
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    #@13
    return-object v0

    #@14
    .line 1678
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1933
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    #@2
    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    #@0
    .prologue
    .line 1927
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    #@2
    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;-><init>()V

    #@5
    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    #@b
    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1728
    const-wide/16 v0, 0x0

    #@3
    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->timeMs:J

    #@5
    .line 1729
    iput-object v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->defaultNetworkEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;

    #@7
    .line 1730
    iput-object v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->ipReachabilityEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;

    #@9
    .line 1731
    iput-object v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->networkEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;

    #@b
    .line 1732
    iput-object v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dnsLookupBatch:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;

    #@d
    .line 1733
    iput-object v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dhcpEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    #@f
    .line 1734
    iput-object v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->ipProvisioningEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;

    #@11
    .line 1735
    iput-object v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->validationProbeEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;

    #@13
    .line 1736
    iput-object v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfProgramEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;

    #@15
    .line 1737
    iput-object v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfStatistics:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;

    #@17
    .line 1738
    iput-object v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->raEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    #@19
    .line 1739
    const/4 v0, -0x1

    #@1a
    iput v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->cachedSize:I

    #@1c
    .line 1740
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    #@0
    .prologue
    .line 1784
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    #@3
    move-result v0

    #@4
    .line 1785
    .local v0, "size":I
    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->timeMs:J

    #@6
    const-wide/16 v4, 0x0

    #@8
    cmp-long v1, v2, v4

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 1787
    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->timeMs:J

    #@e
    const/4 v1, 0x1

    #@f
    .line 1786
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    #@12
    move-result v1

    #@13
    add-int/2addr v0, v1

    #@14
    .line 1789
    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->defaultNetworkEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 1791
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->defaultNetworkEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;

    #@1a
    const/4 v2, 0x2

    #@1b
    .line 1790
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    #@1e
    move-result v1

    #@1f
    add-int/2addr v0, v1

    #@20
    .line 1793
    :cond_1
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->ipReachabilityEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;

    #@22
    if-eqz v1, :cond_2

    #@24
    .line 1795
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->ipReachabilityEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;

    #@26
    const/4 v2, 0x3

    #@27
    .line 1794
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    #@2a
    move-result v1

    #@2b
    add-int/2addr v0, v1

    #@2c
    .line 1797
    :cond_2
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->networkEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;

    #@2e
    if-eqz v1, :cond_3

    #@30
    .line 1799
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->networkEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;

    #@32
    const/4 v2, 0x4

    #@33
    .line 1798
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    #@36
    move-result v1

    #@37
    add-int/2addr v0, v1

    #@38
    .line 1801
    :cond_3
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dnsLookupBatch:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;

    #@3a
    if-eqz v1, :cond_4

    #@3c
    .line 1803
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dnsLookupBatch:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;

    #@3e
    const/4 v2, 0x5

    #@3f
    .line 1802
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    #@42
    move-result v1

    #@43
    add-int/2addr v0, v1

    #@44
    .line 1805
    :cond_4
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dhcpEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    #@46
    if-eqz v1, :cond_5

    #@48
    .line 1807
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dhcpEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    #@4a
    const/4 v2, 0x6

    #@4b
    .line 1806
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    #@4e
    move-result v1

    #@4f
    add-int/2addr v0, v1

    #@50
    .line 1809
    :cond_5
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->ipProvisioningEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;

    #@52
    if-eqz v1, :cond_6

    #@54
    .line 1811
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->ipProvisioningEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;

    #@56
    const/4 v2, 0x7

    #@57
    .line 1810
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    #@5a
    move-result v1

    #@5b
    add-int/2addr v0, v1

    #@5c
    .line 1813
    :cond_6
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->validationProbeEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;

    #@5e
    if-eqz v1, :cond_7

    #@60
    .line 1815
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->validationProbeEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;

    #@62
    const/16 v2, 0x8

    #@64
    .line 1814
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    #@67
    move-result v1

    #@68
    add-int/2addr v0, v1

    #@69
    .line 1817
    :cond_7
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfProgramEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;

    #@6b
    if-eqz v1, :cond_8

    #@6d
    .line 1819
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfProgramEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;

    #@6f
    const/16 v2, 0x9

    #@71
    .line 1818
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    #@74
    move-result v1

    #@75
    add-int/2addr v0, v1

    #@76
    .line 1821
    :cond_8
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfStatistics:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;

    #@78
    if-eqz v1, :cond_9

    #@7a
    .line 1823
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfStatistics:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;

    #@7c
    const/16 v2, 0xa

    #@7e
    .line 1822
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    #@81
    move-result v1

    #@82
    add-int/2addr v0, v1

    #@83
    .line 1825
    :cond_9
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->raEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    #@85
    if-eqz v1, :cond_a

    #@87
    .line 1827
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->raEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    #@89
    const/16 v2, 0xb

    #@8b
    .line 1826
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    #@8e
    move-result v1

    #@8f
    add-int/2addr v0, v1

    #@90
    .line 1829
    :cond_a
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1837
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@3
    move-result v0

    #@4
    .line 1838
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    #@7
    .line 1842
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_0

    #@d
    .line 1843
    return-object p0

    #@e
    .line 1840
    :sswitch_0
    return-object p0

    #@f
    .line 1848
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    #@12
    move-result-wide v2

    #@13
    iput-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->timeMs:J

    #@15
    goto :goto_0

    #@16
    .line 1852
    :sswitch_2
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->defaultNetworkEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;

    #@18
    if-nez v1, :cond_1

    #@1a
    .line 1853
    new-instance v1, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;

    #@1c
    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;-><init>()V

    #@1f
    iput-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->defaultNetworkEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;

    #@21
    .line 1855
    :cond_1
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->defaultNetworkEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;

    #@23
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    #@26
    goto :goto_0

    #@27
    .line 1859
    :sswitch_3
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->ipReachabilityEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;

    #@29
    if-nez v1, :cond_2

    #@2b
    .line 1860
    new-instance v1, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;

    #@2d
    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;-><init>()V

    #@30
    iput-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->ipReachabilityEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;

    #@32
    .line 1862
    :cond_2
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->ipReachabilityEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;

    #@34
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    #@37
    goto :goto_0

    #@38
    .line 1866
    :sswitch_4
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->networkEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;

    #@3a
    if-nez v1, :cond_3

    #@3c
    .line 1867
    new-instance v1, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;

    #@3e
    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;-><init>()V

    #@41
    iput-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->networkEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;

    #@43
    .line 1869
    :cond_3
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->networkEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;

    #@45
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    #@48
    goto :goto_0

    #@49
    .line 1873
    :sswitch_5
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dnsLookupBatch:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;

    #@4b
    if-nez v1, :cond_4

    #@4d
    .line 1874
    new-instance v1, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;

    #@4f
    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;-><init>()V

    #@52
    iput-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dnsLookupBatch:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;

    #@54
    .line 1876
    :cond_4
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dnsLookupBatch:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;

    #@56
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    #@59
    goto :goto_0

    #@5a
    .line 1880
    :sswitch_6
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dhcpEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    #@5c
    if-nez v1, :cond_5

    #@5e
    .line 1881
    new-instance v1, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    #@60
    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;-><init>()V

    #@63
    iput-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dhcpEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    #@65
    .line 1883
    :cond_5
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dhcpEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    #@67
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    #@6a
    goto :goto_0

    #@6b
    .line 1887
    :sswitch_7
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->ipProvisioningEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;

    #@6d
    if-nez v1, :cond_6

    #@6f
    .line 1888
    new-instance v1, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;

    #@71
    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;-><init>()V

    #@74
    iput-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->ipProvisioningEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;

    #@76
    .line 1890
    :cond_6
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->ipProvisioningEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;

    #@78
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    #@7b
    goto :goto_0

    #@7c
    .line 1894
    :sswitch_8
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->validationProbeEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;

    #@7e
    if-nez v1, :cond_7

    #@80
    .line 1895
    new-instance v1, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;

    #@82
    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;-><init>()V

    #@85
    iput-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->validationProbeEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;

    #@87
    .line 1897
    :cond_7
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->validationProbeEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;

    #@89
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    #@8c
    goto/16 :goto_0

    #@8e
    .line 1901
    :sswitch_9
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfProgramEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;

    #@90
    if-nez v1, :cond_8

    #@92
    .line 1902
    new-instance v1, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;

    #@94
    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;-><init>()V

    #@97
    iput-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfProgramEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;

    #@99
    .line 1904
    :cond_8
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfProgramEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;

    #@9b
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    #@9e
    goto/16 :goto_0

    #@a0
    .line 1908
    :sswitch_a
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfStatistics:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;

    #@a2
    if-nez v1, :cond_9

    #@a4
    .line 1909
    new-instance v1, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;

    #@a6
    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;-><init>()V

    #@a9
    iput-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfStatistics:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;

    #@ab
    .line 1911
    :cond_9
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfStatistics:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;

    #@ad
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    #@b0
    goto/16 :goto_0

    #@b2
    .line 1915
    :sswitch_b
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->raEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    #@b4
    if-nez v1, :cond_a

    #@b6
    .line 1916
    new-instance v1, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    #@b8
    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;-><init>()V

    #@bb
    iput-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->raEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    #@bd
    .line 1918
    :cond_a
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->raEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    #@bf
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    #@c2
    goto/16 :goto_0

    #@c4
    .line 1838
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
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
    .line 1833
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1746
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->timeMs:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1747
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->timeMs:J

    #@a
    const/4 v2, 0x1

    #@b
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    #@e
    .line 1749
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->defaultNetworkEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 1750
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->defaultNetworkEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;

    #@14
    const/4 v1, 0x2

    #@15
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    #@18
    .line 1752
    :cond_1
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->ipReachabilityEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;

    #@1a
    if-eqz v0, :cond_2

    #@1c
    .line 1753
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->ipReachabilityEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;

    #@1e
    const/4 v1, 0x3

    #@1f
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    #@22
    .line 1755
    :cond_2
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->networkEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;

    #@24
    if-eqz v0, :cond_3

    #@26
    .line 1756
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->networkEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;

    #@28
    const/4 v1, 0x4

    #@29
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    #@2c
    .line 1758
    :cond_3
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dnsLookupBatch:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;

    #@2e
    if-eqz v0, :cond_4

    #@30
    .line 1759
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dnsLookupBatch:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;

    #@32
    const/4 v1, 0x5

    #@33
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    #@36
    .line 1761
    :cond_4
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dhcpEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    #@38
    if-eqz v0, :cond_5

    #@3a
    .line 1762
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dhcpEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    #@3c
    const/4 v1, 0x6

    #@3d
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    #@40
    .line 1764
    :cond_5
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->ipProvisioningEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;

    #@42
    if-eqz v0, :cond_6

    #@44
    .line 1765
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->ipProvisioningEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;

    #@46
    const/4 v1, 0x7

    #@47
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    #@4a
    .line 1767
    :cond_6
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->validationProbeEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;

    #@4c
    if-eqz v0, :cond_7

    #@4e
    .line 1768
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->validationProbeEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;

    #@50
    const/16 v1, 0x8

    #@52
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    #@55
    .line 1770
    :cond_7
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfProgramEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;

    #@57
    if-eqz v0, :cond_8

    #@59
    .line 1771
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfProgramEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;

    #@5b
    const/16 v1, 0x9

    #@5d
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    #@60
    .line 1773
    :cond_8
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfStatistics:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;

    #@62
    if-eqz v0, :cond_9

    #@64
    .line 1774
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfStatistics:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;

    #@66
    const/16 v1, 0xa

    #@68
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    #@6b
    .line 1776
    :cond_9
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->raEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    #@6d
    if-eqz v0, :cond_a

    #@6f
    .line 1777
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->raEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    #@71
    const/16 v1, 0xb

    #@73
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    #@76
    .line 1779
    :cond_a
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    #@79
    .line 1745
    return-void
.end method
