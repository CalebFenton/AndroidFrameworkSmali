.class public Landroid/adservices/ondevicepersonalization/LogReader;
.super Ljava/lang/Object;
.source "LogReader.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "LogReader"

.field private static final blacklist sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;


# instance fields
.field private final blacklist mDataAccessService:Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 46
    invoke-static {}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory;->getLogger()Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    move-result-object v0

    sput-object v0, Landroid/adservices/ondevicepersonalization/LogReader;->sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;)V
    .registers 3
    .param p1, "binder"    # Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/LogReader;->mDataAccessService:Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;

    .line 54
    return-void
.end method

.method private blacklist handleAsyncRequest(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 6
    .param p1, "op"    # I
    .param p2, "params"    # Landroid/os/Bundle;

    .line 133
    :try_start_0
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 134
    .local v0, "asyncResult":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Landroid/os/Bundle;>;"
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/LogReader;->mDataAccessService:Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;

    new-instance v2, Landroid/adservices/ondevicepersonalization/LogReader$1;

    invoke-direct {v2, p0, v0}, Landroid/adservices/ondevicepersonalization/LogReader$1;-><init>(Landroid/adservices/ondevicepersonalization/LogReader;Ljava/util/concurrent/BlockingQueue;)V

    invoke-interface {v1, p1, p2, v2}, Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;->onRequest(ILandroid/os/Bundle;Landroid/adservices/ondevicepersonalization/aidl/IDataAccessServiceCallback;)V

    .line 152
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_16} :catch_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_17

    return-object v1

    .line 153
    .end local v0    # "asyncResult":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Landroid/os/Bundle;>;"
    :catch_17
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/adservices/ondevicepersonalization/LogReader;->sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    const-string v2, "LogReader: Failed to retrieve result"

    invoke-virtual {v1, v2, v0}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist handleListLookupRequest(ILandroid/os/Bundle;)Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice;
    .registers 7
    .param p1, "op"    # I
    .param p2, "params"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(I",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice<",
            "TT;>;"
        }
    .end annotation

    .line 161
    invoke-direct {p0, p1, p2}, Landroid/adservices/ondevicepersonalization/LogReader;->handleAsyncRequest(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 163
    .local v0, "result":Landroid/os/Bundle;
    :try_start_4
    const-string v1, "android.ondevicepersonalization.extra.result"

    const-class v2, Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice;

    .line 165
    .local v1, "data":Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice;, "Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice<TT;>;"
    if-eqz v1, :cond_11

    .line 169
    return-object v1

    .line 166
    :cond_11
    sget-object v2, Landroid/adservices/ondevicepersonalization/LogReader;->sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    const-string v3, "LogReader: No EXTRA_RESULT was present in bundle"

    invoke-virtual {v2, v3}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->e(Ljava/lang/String;)I

    .line 167
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Bundle missing EXTRA_RESULT."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "result":Landroid/os/Bundle;
    .end local p0    # "this":Landroid/adservices/ondevicepersonalization/LogReader;
    .end local p1    # "op":I
    .end local p2    # "params":Landroid/os/Bundle;
    throw v2
    :try_end_20
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_20} :catch_20

    .line 170
    .end local v1    # "data":Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice;, "Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice<TT;>;"
    .restart local v0    # "result":Landroid/os/Bundle;
    .restart local p0    # "this":Landroid/adservices/ondevicepersonalization/LogReader;
    .restart local p1    # "op":I
    .restart local p2    # "params":Landroid/os/Bundle;
    :catch_20
    move-exception v1

    .line 171
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Failed to retrieve parceled list"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private blacklist logApiCallStats(IJI)V
    .registers 9
    .param p1, "apiName"    # I
    .param p2, "duration"    # J
    .param p4, "responseCode"    # I

    .line 177
    :try_start_0
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/LogReader;->mDataAccessService:Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;->logApiCallStats(IJI)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 180
    goto :goto_11

    .line 178
    :catch_6
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/adservices/ondevicepersonalization/LogReader;->sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "LogReader: failed to log metrics"

    invoke-virtual {v1, v0, v3, v2}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 181
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_11
    return-void
.end method


# virtual methods
.method public whitelist getJoinedEvents(Ljava/time/Instant;Ljava/time/Instant;)Ljava/util/List;
    .registers 16
    .param p1, "startTime"    # Ljava/time/Instant;
    .param p2, "endTime"    # Ljava/time/Instant;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/Instant;",
            "Ljava/time/Instant;",
            ")",
            "Ljava/util/List<",
            "Landroid/adservices/ondevicepersonalization/EventLogRecord;",
            ">;"
        }
    .end annotation

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 103
    .local v0, "apiStartTimeMillis":J
    const/4 v2, 0x0

    .line 104
    .local v2, "responseCode":I
    invoke-virtual {p1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v3

    .line 105
    .local v3, "startTimeMillis":J
    invoke-virtual {p2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v5

    .line 106
    .local v5, "endTimeMillis":J
    cmp-long v7, v5, v3

    if-lez v7, :cond_59

    .line 110
    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-ltz v7, :cond_51

    .line 114
    const/16 v7, 0x12

    :try_start_19
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 115
    .local v8, "params":Landroid/os/Bundle;
    const-string v9, "android.ondevicepersonalization.extra.lookup_keys"

    const/4 v10, 0x2

    new-array v10, v10, [J

    const/4 v11, 0x0

    aput-wide v3, v10, v11

    const/4 v11, 0x1

    aput-wide v5, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 117
    nop

    .line 118
    const/16 v9, 0x9

    invoke-direct {p0, v9, v8}, Landroid/adservices/ondevicepersonalization/LogReader;->handleListLookupRequest(ILandroid/os/Bundle;)Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice;

    move-result-object v9

    .line 119
    .local v9, "result":Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice;, "Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice<Landroid/adservices/ondevicepersonalization/EventLogRecord;>;"
    invoke-virtual {v9}, Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice;->getList()Ljava/util/List;

    move-result-object v10
    :try_end_37
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_37} :catch_43
    .catchall {:try_start_19 .. :try_end_37} :catchall_41

    .line 124
    nop

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v0

    .line 124
    invoke-direct {p0, v7, v11, v12, v2}, Landroid/adservices/ondevicepersonalization/LogReader;->logApiCallStats(IJI)V

    .line 119
    return-object v10

    .line 124
    .end local v8    # "params":Landroid/os/Bundle;
    .end local v9    # "result":Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice;, "Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice<Landroid/adservices/ondevicepersonalization/EventLogRecord;>;"
    :catchall_41
    move-exception v8

    goto :goto_48

    .line 120
    :catch_43
    move-exception v8

    .line 121
    .local v8, "e":Ljava/lang/RuntimeException;
    const/16 v2, 0x64

    .line 122
    nop

    .end local v0    # "apiStartTimeMillis":J
    .end local v2    # "responseCode":I
    .end local v3    # "startTimeMillis":J
    .end local v5    # "endTimeMillis":J
    .end local p0    # "this":Landroid/adservices/ondevicepersonalization/LogReader;
    .end local p1    # "startTime":Ljava/time/Instant;
    .end local p2    # "endTime":Ljava/time/Instant;
    :try_start_47
    throw v8
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_41

    .line 126
    .end local v8    # "e":Ljava/lang/RuntimeException;
    .restart local v0    # "apiStartTimeMillis":J
    .restart local v2    # "responseCode":I
    .restart local v3    # "startTimeMillis":J
    .restart local v5    # "endTimeMillis":J
    .restart local p0    # "this":Landroid/adservices/ondevicepersonalization/LogReader;
    .restart local p1    # "startTime":Ljava/time/Instant;
    .restart local p2    # "endTime":Ljava/time/Instant;
    :goto_48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v0

    .line 124
    invoke-direct {p0, v7, v9, v10, v2}, Landroid/adservices/ondevicepersonalization/LogReader;->logApiCallStats(IJI)V

    .line 128
    throw v8

    .line 111
    :cond_51
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "startTimeMillis must be greater than 0"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 107
    :cond_59
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "endTimeMillis must be greater than startTimeMillis"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public whitelist getRequests(Ljava/time/Instant;Ljava/time/Instant;)Ljava/util/List;
    .registers 16
    .param p1, "startTime"    # Ljava/time/Instant;
    .param p2, "endTime"    # Ljava/time/Instant;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/Instant;",
            "Ljava/time/Instant;",
            ")",
            "Ljava/util/List<",
            "Landroid/adservices/ondevicepersonalization/RequestLogRecord;",
            ">;"
        }
    .end annotation

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 66
    .local v0, "apiStartTimeMillis":J
    const/4 v2, 0x0

    .line 67
    .local v2, "responseCode":I
    invoke-virtual {p1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v3

    .line 68
    .local v3, "startTimeMillis":J
    invoke-virtual {p2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v5

    .line 69
    .local v5, "endTimeMillis":J
    cmp-long v7, v5, v3

    if-lez v7, :cond_59

    .line 73
    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-ltz v7, :cond_51

    .line 77
    const/16 v7, 0x11

    :try_start_19
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 78
    .local v8, "params":Landroid/os/Bundle;
    const-string v9, "android.ondevicepersonalization.extra.lookup_keys"

    const/4 v10, 0x2

    new-array v10, v10, [J

    const/4 v11, 0x0

    aput-wide v3, v10, v11

    const/4 v11, 0x1

    aput-wide v5, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 80
    nop

    .line 81
    const/16 v9, 0x8

    invoke-direct {p0, v9, v8}, Landroid/adservices/ondevicepersonalization/LogReader;->handleListLookupRequest(ILandroid/os/Bundle;)Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice;

    move-result-object v9

    .line 82
    .local v9, "result":Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice;, "Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice<Landroid/adservices/ondevicepersonalization/RequestLogRecord;>;"
    invoke-virtual {v9}, Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice;->getList()Ljava/util/List;

    move-result-object v10
    :try_end_37
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_37} :catch_43
    .catchall {:try_start_19 .. :try_end_37} :catchall_41

    .line 87
    nop

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v0

    .line 87
    invoke-direct {p0, v7, v11, v12, v2}, Landroid/adservices/ondevicepersonalization/LogReader;->logApiCallStats(IJI)V

    .line 82
    return-object v10

    .line 87
    .end local v8    # "params":Landroid/os/Bundle;
    .end local v9    # "result":Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice;, "Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice<Landroid/adservices/ondevicepersonalization/RequestLogRecord;>;"
    :catchall_41
    move-exception v8

    goto :goto_48

    .line 83
    :catch_43
    move-exception v8

    .line 84
    .local v8, "e":Ljava/lang/RuntimeException;
    const/16 v2, 0x64

    .line 85
    nop

    .end local v0    # "apiStartTimeMillis":J
    .end local v2    # "responseCode":I
    .end local v3    # "startTimeMillis":J
    .end local v5    # "endTimeMillis":J
    .end local p0    # "this":Landroid/adservices/ondevicepersonalization/LogReader;
    .end local p1    # "startTime":Ljava/time/Instant;
    .end local p2    # "endTime":Ljava/time/Instant;
    :try_start_47
    throw v8
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_41

    .line 89
    .end local v8    # "e":Ljava/lang/RuntimeException;
    .restart local v0    # "apiStartTimeMillis":J
    .restart local v2    # "responseCode":I
    .restart local v3    # "startTimeMillis":J
    .restart local v5    # "endTimeMillis":J
    .restart local p0    # "this":Landroid/adservices/ondevicepersonalization/LogReader;
    .restart local p1    # "startTime":Ljava/time/Instant;
    .restart local p2    # "endTime":Ljava/time/Instant;
    :goto_48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v0

    .line 87
    invoke-direct {p0, v7, v9, v10, v2}, Landroid/adservices/ondevicepersonalization/LogReader;->logApiCallStats(IJI)V

    .line 91
    throw v8

    .line 74
    :cond_51
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "startTimeMillis must be greater than 0"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 70
    :cond_59
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "endTimeMillis must be greater than startTimeMillis"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
.end method
