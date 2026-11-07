.class public final Lcom/android/server/criticalevents/nano/CriticalEventProto;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "CriticalEventProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;,
        Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;,
        Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;,
        Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;,
        Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;,
        Lcom/android/server/criticalevents/nano/CriticalEventProto$SystemServerStarted;,
        Lcom/android/server/criticalevents/nano/CriticalEventProto$InstallPackages;,
        Lcom/android/server/criticalevents/nano/CriticalEventProto$ExcessiveBinderCalls;
    }
.end annotation


# static fields
.field public static final blacklist ANR_FIELD_NUMBER:I = 0x4

.field public static final blacklist DATA_APP:I = 0x1

.field public static final blacklist EXCESSIVE_BINDER_CALLS_FIELD_NUMBER:I = 0x9

.field public static final blacklist HALF_WATCHDOG_FIELD_NUMBER:I = 0x3

.field public static final blacklist INSTALL_PACKAGES_FIELD_NUMBER:I = 0x8

.field public static final blacklist JAVA_CRASH_FIELD_NUMBER:I = 0x5

.field public static final blacklist NATIVE_CRASH_FIELD_NUMBER:I = 0x6

.field public static final blacklist PROCESS_CLASS_UNKNOWN:I = 0x0

.field public static final blacklist SYSTEM_APP:I = 0x2

.field public static final blacklist SYSTEM_SERVER:I = 0x3

.field public static final blacklist SYSTEM_SERVER_STARTED_FIELD_NUMBER:I = 0x7

.field public static final blacklist WATCHDOG_FIELD_NUMBER:I = 0x2

.field private static volatile blacklist _emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto;


# instance fields
.field private blacklist eventCase_:I

.field private blacklist event_:Ljava/lang/Object;

.field public blacklist timestampMs:J


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 1008
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 844
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    .line 1009
    invoke-virtual {p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->clear()Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 1010
    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .registers 2

    .line 858
    sget-object v0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto;

    if-nez v0, :cond_15

    .line 859
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 861
    :try_start_7
    sget-object v1, Lcom/android/server/criticalevents/nano/CriticalEventProto;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto;

    if-nez v1, :cond_10

    .line 862
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/criticalevents/nano/CriticalEventProto;

    sput-object v1, Lcom/android/server/criticalevents/nano/CriticalEventProto;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 864
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 866
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .registers 2
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1213
    new-instance v0, Lcom/android/server/criticalevents/nano/CriticalEventProto;

    invoke-direct {v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 1207
    new-instance v0, Lcom/android/server/criticalevents/nano/CriticalEventProto;

    invoke-direct {v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/criticalevents/nano/CriticalEventProto;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .registers 3

    .line 1013
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->timestampMs:J

    .line 1014
    invoke-virtual {p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->clearEvent()Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 1015
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->cachedSize:I

    .line 1016
    return-object p0
.end method

.method public blacklist clearEvent()Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .registers 2

    .line 850
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    .line 851
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    .line 852
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 6

    .line 1062
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 1063
    .local v0, "size":I
    iget-wide v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->timestampMs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_14

    .line 1064
    iget-wide v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->timestampMs:J

    .line 1065
    const/4 v3, 0x1

    invoke-static {v3, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1067
    :cond_14
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_22

    .line 1068
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    .line 1069
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1072
    :cond_22
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_30

    .line 1073
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    .line 1074
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1077
    :cond_30
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3e

    .line 1078
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    .line 1079
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1082
    :cond_3e
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4c

    .line 1083
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    .line 1084
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1087
    :cond_4c
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_5a

    .line 1088
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    .line 1089
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1092
    :cond_5a
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_68

    .line 1093
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    .line 1094
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1097
    :cond_68
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_77

    .line 1098
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    .line 1099
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1102
    :cond_77
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_86

    .line 1103
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    .line 1104
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1107
    :cond_86
    return v0
.end method

.method public blacklist getAnr()Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;
    .registers 3

    .line 911
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    .line 912
    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;

    return-object v0

    .line 914
    :cond_a
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getEventCase()I
    .registers 2

    .line 847
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    return v0
.end method

.method public blacklist getExcessiveBinderCalls()Lcom/android/server/criticalevents/nano/CriticalEventProto$ExcessiveBinderCalls;
    .registers 3

    .line 996
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_b

    .line 997
    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$ExcessiveBinderCalls;

    return-object v0

    .line 999
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getHalfWatchdog()Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;
    .registers 3

    .line 894
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    .line 895
    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;

    return-object v0

    .line 897
    :cond_a
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getInstallPackages()Lcom/android/server/criticalevents/nano/CriticalEventProto$InstallPackages;
    .registers 3

    .line 979
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_b

    .line 980
    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$InstallPackages;

    return-object v0

    .line 982
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getJavaCrash()Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;
    .registers 3

    .line 928
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_a

    .line 929
    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;

    return-object v0

    .line 931
    :cond_a
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getNativeCrash()Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;
    .registers 3

    .line 945
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_a

    .line 946
    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    return-object v0

    .line 948
    :cond_a
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSystemServerStarted()Lcom/android/server/criticalevents/nano/CriticalEventProto$SystemServerStarted;
    .registers 3

    .line 962
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_a

    .line 963
    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$SystemServerStarted;

    return-object v0

    .line 965
    :cond_a
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getWatchdog()Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;
    .registers 3

    .line 877
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 878
    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;

    return-object v0

    .line 880
    :cond_a
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist hasAnr()Z
    .registers 3

    .line 908
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public blacklist hasExcessiveBinderCalls()Z
    .registers 3

    .line 993
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist hasHalfWatchdog()Z
    .registers 3

    .line 891
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public blacklist hasInstallPackages()Z
    .registers 3

    .line 976
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist hasJavaCrash()Z
    .registers 3

    .line 925
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public blacklist hasNativeCrash()Z
    .registers 3

    .line 942
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public blacklist hasSystemServerStarted()Z
    .registers 3

    .line 959
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public blacklist hasWatchdog()Z
    .registers 3

    .line 874
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
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

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    move-result-object p1

    return-object p1
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .registers 5
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1115
    nop

    :goto_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1116
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_ce

    .line 1120
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_cc

    .line 1121
    return-object p0

    .line 1193
    :sswitch_f
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/16 v2, 0x9

    if-eq v1, v2, :cond_1c

    .line 1194
    new-instance v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$ExcessiveBinderCalls;

    invoke-direct {v1}, Lcom/android/server/criticalevents/nano/CriticalEventProto$ExcessiveBinderCalls;-><init>()V

    iput-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    .line 1196
    :cond_1c
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1198
    iput v2, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    goto/16 :goto_cc

    .line 1184
    :sswitch_27
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_34

    .line 1185
    new-instance v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$InstallPackages;

    invoke-direct {v1}, Lcom/android/server/criticalevents/nano/CriticalEventProto$InstallPackages;-><init>()V

    iput-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    .line 1187
    :cond_34
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1189
    iput v2, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    .line 1190
    goto/16 :goto_cc

    .line 1175
    :sswitch_3f
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_4b

    .line 1176
    new-instance v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$SystemServerStarted;

    invoke-direct {v1}, Lcom/android/server/criticalevents/nano/CriticalEventProto$SystemServerStarted;-><init>()V

    iput-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    .line 1178
    :cond_4b
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1180
    iput v2, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    .line 1181
    goto/16 :goto_cc

    .line 1166
    :sswitch_56
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_62

    .line 1167
    new-instance v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    invoke-direct {v1}, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;-><init>()V

    iput-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    .line 1169
    :cond_62
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1171
    iput v2, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    .line 1172
    goto :goto_cc

    .line 1157
    :sswitch_6c
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_78

    .line 1158
    new-instance v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;

    invoke-direct {v1}, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;-><init>()V

    iput-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    .line 1160
    :cond_78
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1162
    iput v2, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    .line 1163
    goto :goto_cc

    .line 1148
    :sswitch_82
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_8e

    .line 1149
    new-instance v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;

    invoke-direct {v1}, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;-><init>()V

    iput-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    .line 1151
    :cond_8e
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1153
    iput v2, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    .line 1154
    goto :goto_cc

    .line 1139
    :sswitch_98
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_a4

    .line 1140
    new-instance v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;

    invoke-direct {v1}, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;-><init>()V

    iput-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    .line 1142
    :cond_a4
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1144
    iput v2, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    .line 1145
    goto :goto_cc

    .line 1130
    :sswitch_ae
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_ba

    .line 1131
    new-instance v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;

    invoke-direct {v1}, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;-><init>()V

    iput-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    .line 1133
    :cond_ba
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1135
    iput v2, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    .line 1136
    goto :goto_cc

    .line 1126
    :sswitch_c4
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->timestampMs:J

    .line 1127
    goto :goto_cc

    .line 1118
    :sswitch_cb
    return-object p0

    .line 1202
    .end local v0    # "tag":I
    :cond_cc
    :goto_cc
    goto/16 :goto_1

    :sswitch_data_ce
    .sparse-switch
        0x0 -> :sswitch_cb
        0x8 -> :sswitch_c4
        0x12 -> :sswitch_ae
        0x1a -> :sswitch_98
        0x22 -> :sswitch_82
        0x2a -> :sswitch_6c
        0x32 -> :sswitch_56
        0x3a -> :sswitch_3f
        0x42 -> :sswitch_27
        0x4a -> :sswitch_f
    .end sparse-switch
.end method

.method public blacklist setAnr(Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;)Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .registers 3
    .param p1, "value"    # Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;

    .line 917
    if-eqz p1, :cond_8

    .line 918
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    .line 919
    iput-object p1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    .line 920
    return-object p0

    .line 917
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist setExcessiveBinderCalls(Lcom/android/server/criticalevents/nano/CriticalEventProto$ExcessiveBinderCalls;)Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .registers 3
    .param p1, "value"    # Lcom/android/server/criticalevents/nano/CriticalEventProto$ExcessiveBinderCalls;

    .line 1002
    if-eqz p1, :cond_9

    .line 1003
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    .line 1004
    iput-object p1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    .line 1005
    return-object p0

    .line 1002
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist setHalfWatchdog(Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;)Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .registers 3
    .param p1, "value"    # Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;

    .line 900
    if-eqz p1, :cond_8

    .line 901
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    .line 902
    iput-object p1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    .line 903
    return-object p0

    .line 900
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist setInstallPackages(Lcom/android/server/criticalevents/nano/CriticalEventProto$InstallPackages;)Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .registers 3
    .param p1, "value"    # Lcom/android/server/criticalevents/nano/CriticalEventProto$InstallPackages;

    .line 985
    if-eqz p1, :cond_9

    .line 986
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    .line 987
    iput-object p1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    .line 988
    return-object p0

    .line 985
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist setJavaCrash(Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;)Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .registers 3
    .param p1, "value"    # Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;

    .line 934
    if-eqz p1, :cond_8

    .line 935
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    .line 936
    iput-object p1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    .line 937
    return-object p0

    .line 934
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist setNativeCrash(Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;)Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .registers 3
    .param p1, "value"    # Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    .line 951
    if-eqz p1, :cond_8

    .line 952
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    .line 953
    iput-object p1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    .line 954
    return-object p0

    .line 951
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist setSystemServerStarted(Lcom/android/server/criticalevents/nano/CriticalEventProto$SystemServerStarted;)Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .registers 3
    .param p1, "value"    # Lcom/android/server/criticalevents/nano/CriticalEventProto$SystemServerStarted;

    .line 968
    if-eqz p1, :cond_8

    .line 969
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    .line 970
    iput-object p1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    .line 971
    return-object p0

    .line 968
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist setWatchdog(Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;)Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .registers 3
    .param p1, "value"    # Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;

    .line 883
    if-eqz p1, :cond_8

    .line 884
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    .line 885
    iput-object p1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    .line 886
    return-object p0

    .line 883
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 6
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1022
    iget-wide v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->timestampMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    .line 1023
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->timestampMs:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1025
    :cond_e
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1a

    .line 1026
    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1029
    :cond_1a
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_26

    .line 1030
    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1033
    :cond_26
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_32

    .line 1034
    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1037
    :cond_32
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3e

    .line 1038
    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1041
    :cond_3e
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4a

    .line 1042
    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1045
    :cond_4a
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_56

    .line 1046
    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1049
    :cond_56
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_63

    .line 1050
    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1053
    :cond_63
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_70

    .line 1054
    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1057
    :cond_70
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1058
    return-void
.end method
