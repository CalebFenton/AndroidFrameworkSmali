.class public Landroid/adservices/ondevicepersonalization/LocalDataImpl;
.super Ljava/lang/Object;
.source "LocalDataImpl.java"

# interfaces
.implements Landroid/adservices/ondevicepersonalization/MutableKeyValueStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/ondevicepersonalization/LocalDataImpl$CallbackResult;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "LocalDataImpl"

.field private static final blacklist sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;


# instance fields
.field private final blacklist mDataAccessService:Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 39
    invoke-static {}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory;->getLogger()Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    move-result-object v0

    sput-object v0, Landroid/adservices/ondevicepersonalization/LocalDataImpl;->sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;)V
    .registers 3
    .param p1, "binder"    # Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/LocalDataImpl;->mDataAccessService:Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;

    .line 45
    return-void
.end method

.method private blacklist handleAsyncRequest(ILandroid/os/Bundle;)Landroid/adservices/ondevicepersonalization/LocalDataImpl$CallbackResult;
    .registers 6
    .param p1, "op"    # I
    .param p2, "params"    # Landroid/os/Bundle;

    .line 156
    :try_start_0
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 157
    .local v0, "asyncResult":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Landroid/adservices/ondevicepersonalization/LocalDataImpl$CallbackResult;>;"
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/LocalDataImpl;->mDataAccessService:Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;

    new-instance v2, Landroid/adservices/ondevicepersonalization/LocalDataImpl$1;

    invoke-direct {v2, p0, v0}, Landroid/adservices/ondevicepersonalization/LocalDataImpl$1;-><init>(Landroid/adservices/ondevicepersonalization/LocalDataImpl;Ljava/util/concurrent/BlockingQueue;)V

    invoke-interface {v1, p1, p2, v2}, Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;->onRequest(ILandroid/os/Bundle;Landroid/adservices/ondevicepersonalization/aidl/IDataAccessServiceCallback;)V

    .line 171
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/adservices/ondevicepersonalization/LocalDataImpl$CallbackResult;
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_16} :catch_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_17

    return-object v1

    .line 172
    .end local v0    # "asyncResult":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Landroid/adservices/ondevicepersonalization/LocalDataImpl$CallbackResult;>;"
    :catch_17
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/adservices/ondevicepersonalization/LocalDataImpl;->sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    const-string v2, "LocalDataImpl: Failed to retrieve result from localData"

    invoke-virtual {v1, v2, v0}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist handleLookupRequest(ILandroid/os/Bundle;IJ)[B
    .registers 16
    .param p1, "op"    # I
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "apiName"    # I
    .param p4, "startTimeMillis"    # J

    .line 83
    const-string v0, "android.ondevicepersonalization.extra.result"

    const-string v1, "LocalDataImpl: failed to log metrics"

    const/4 v2, 0x0

    .line 85
    .local v2, "responseCode":I
    const/4 v3, 0x0

    :try_start_6
    invoke-direct {p0, p1, p2}, Landroid/adservices/ondevicepersonalization/LocalDataImpl;->handleAsyncRequest(ILandroid/os/Bundle;)Landroid/adservices/ondevicepersonalization/LocalDataImpl$CallbackResult;

    move-result-object v4

    .line 86
    .local v4, "callbackResult":Landroid/adservices/ondevicepersonalization/LocalDataImpl$CallbackResult;
    invoke-static {v4}, Landroid/adservices/ondevicepersonalization/LocalDataImpl$CallbackResult;->-$$Nest$fgetmErrorCode(Landroid/adservices/ondevicepersonalization/LocalDataImpl$CallbackResult;)I

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2a

    .line 87
    invoke-static {v4}, Landroid/adservices/ondevicepersonalization/LocalDataImpl$CallbackResult;->-$$Nest$fgetmErrorCode(Landroid/adservices/ondevicepersonalization/LocalDataImpl$CallbackResult;)I

    move-result v0
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_15} :catch_72
    .catchall {:try_start_6 .. :try_end_15} :catchall_70

    .line 88
    .end local v2    # "responseCode":I
    .local v0, "responseCode":I
    nop

    .line 105
    :try_start_16
    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/LocalDataImpl;->mDataAccessService:Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, p4

    .line 105
    invoke-interface {v2, p3, v7, v8, v0}, Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;->logApiCallStats(IJI)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_20} :catch_21

    .line 111
    goto :goto_29

    .line 109
    :catch_21
    move-exception v2

    .line 110
    .local v2, "e":Ljava/lang/Exception;
    sget-object v5, Landroid/adservices/ondevicepersonalization/LocalDataImpl;->sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v5, v2, v1, v3}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 88
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_29
    return-object v6

    .line 90
    .end local v0    # "responseCode":I
    .local v2, "responseCode":I
    :cond_2a
    :try_start_2a
    invoke-static {v4}, Landroid/adservices/ondevicepersonalization/LocalDataImpl$CallbackResult;->-$$Nest$fgetmResult(Landroid/adservices/ondevicepersonalization/LocalDataImpl$CallbackResult;)Landroid/os/Bundle;

    move-result-object v5

    .line 91
    .local v5, "result":Landroid/os/Bundle;
    if-eqz v5, :cond_59

    const-class v7, Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice;

    .line 92
    invoke-virtual {v5, v0, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_39

    goto :goto_59

    .line 97
    :cond_39
    const-class v6, Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice;

    .line 98
    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice;

    .line 99
    .local v0, "data":Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice;
    invoke-virtual {v0}, Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice;->getByteArray()[B

    move-result-object v6
    :try_end_45
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_45} :catch_72
    .catchall {:try_start_2a .. :try_end_45} :catchall_70

    .line 105
    :try_start_45
    iget-object v7, p0, Landroid/adservices/ondevicepersonalization/LocalDataImpl;->mDataAccessService:Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, p4

    .line 105
    invoke-interface {v7, p3, v8, v9, v2}, Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;->logApiCallStats(IJI)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4f} :catch_50

    .line 111
    goto :goto_58

    .line 109
    :catch_50
    move-exception v7

    .line 110
    .local v7, "e":Ljava/lang/Exception;
    sget-object v8, Landroid/adservices/ondevicepersonalization/LocalDataImpl;->sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v8, v7, v1, v3}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 99
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_58
    return-object v6

    .line 94
    .end local v0    # "data":Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice;
    :cond_59
    :goto_59
    const/16 v0, 0x6f

    .line 95
    .end local v2    # "responseCode":I
    .local v0, "responseCode":I
    nop

    .line 105
    :try_start_5c
    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/LocalDataImpl;->mDataAccessService:Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, p4

    .line 105
    invoke-interface {v2, p3, v7, v8, v0}, Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;->logApiCallStats(IJI)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_66} :catch_67

    .line 111
    goto :goto_6f

    .line 109
    :catch_67
    move-exception v2

    .line 110
    .local v2, "e":Ljava/lang/Exception;
    sget-object v7, Landroid/adservices/ondevicepersonalization/LocalDataImpl;->sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v7, v2, v1, v3}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 95
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_6f
    return-object v6

    .line 104
    .end local v0    # "responseCode":I
    .end local v4    # "callbackResult":Landroid/adservices/ondevicepersonalization/LocalDataImpl$CallbackResult;
    .end local v5    # "result":Landroid/os/Bundle;
    .local v2, "responseCode":I
    :catchall_70
    move-exception v0

    goto :goto_77

    .line 100
    :catch_72
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/RuntimeException;
    const/16 v2, 0x64

    .line 102
    nop

    .end local v2    # "responseCode":I
    .end local p0    # "this":Landroid/adservices/ondevicepersonalization/LocalDataImpl;
    .end local p1    # "op":I
    .end local p2    # "params":Landroid/os/Bundle;
    .end local p3    # "apiName":I
    .end local p4    # "startTimeMillis":J
    :try_start_76
    throw v0
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_70

    .line 105
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local v2    # "responseCode":I
    .restart local p0    # "this":Landroid/adservices/ondevicepersonalization/LocalDataImpl;
    .restart local p1    # "op":I
    .restart local p2    # "params":Landroid/os/Bundle;
    .restart local p3    # "apiName":I
    .restart local p4    # "startTimeMillis":J
    :goto_77
    :try_start_77
    iget-object v4, p0, Landroid/adservices/ondevicepersonalization/LocalDataImpl;->mDataAccessService:Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, p4

    .line 105
    invoke-interface {v4, p3, v5, v6, v2}, Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;->logApiCallStats(IJI)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_81} :catch_82

    .line 111
    goto :goto_8a

    .line 109
    :catch_82
    move-exception v4

    .line 110
    .local v4, "e":Ljava/lang/Exception;
    sget-object v5, Landroid/adservices/ondevicepersonalization/LocalDataImpl;->sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v5, v4, v1, v3}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 112
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_8a
    throw v0
.end method


# virtual methods
.method public whitelist get(Ljava/lang/String;)[B
    .registers 8
    .param p1, "key"    # Ljava/lang/String;

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 50
    .local v4, "startTimeMillis":J
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 52
    .local v2, "params":Landroid/os/Bundle;
    const-string v0, "android.ondevicepersonalization.extra.lookup_keys"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const/4 v1, 0x4

    const/16 v3, 0xb

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/adservices/ondevicepersonalization/LocalDataImpl;->handleLookupRequest(ILandroid/os/Bundle;IJ)[B

    move-result-object v1

    return-object v1
.end method

.method public blacklist getTableId()I
    .registers 2

    .line 150
    const/4 v0, 0x2

    return v0
.end method

.method public whitelist keySet()Ljava/util/Set;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 117
    const-string v0, "android.ondevicepersonalization.extra.result"

    const-string v1, "LocalDataImpl: failed to log metrics"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 118
    .local v2, "startTimeMillis":J
    const/4 v4, 0x0

    .line 120
    .local v4, "responseCode":I
    const/4 v5, 0x0

    const/16 v6, 0xc

    :try_start_c
    sget-object v7, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 121
    const/4 v8, 0x5

    invoke-direct {p0, v8, v7}, Landroid/adservices/ondevicepersonalization/LocalDataImpl;->handleAsyncRequest(ILandroid/os/Bundle;)Landroid/adservices/ondevicepersonalization/LocalDataImpl$CallbackResult;

    move-result-object v7

    .line 122
    .local v7, "callbackResult":Landroid/adservices/ondevicepersonalization/LocalDataImpl$CallbackResult;
    invoke-static {v7}, Landroid/adservices/ondevicepersonalization/LocalDataImpl$CallbackResult;->-$$Nest$fgetmErrorCode(Landroid/adservices/ondevicepersonalization/LocalDataImpl$CallbackResult;)I

    move-result v8

    if-eqz v8, :cond_36

    .line 123
    invoke-static {v7}, Landroid/adservices/ondevicepersonalization/LocalDataImpl$CallbackResult;->-$$Nest$fgetmErrorCode(Landroid/adservices/ondevicepersonalization/LocalDataImpl$CallbackResult;)I

    move-result v0

    move v4, v0

    .line 124
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0
    :try_end_22
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_22} :catch_7d
    .catchall {:try_start_c .. :try_end_22} :catchall_7b

    .line 138
    :try_start_22
    iget-object v8, p0, Landroid/adservices/ondevicepersonalization/LocalDataImpl;->mDataAccessService:Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v2

    .line 138
    invoke-interface {v8, v6, v9, v10, v4}, Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;->logApiCallStats(IJI)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2c} :catch_2d

    .line 144
    goto :goto_35

    .line 142
    :catch_2d
    move-exception v6

    .line 143
    .local v6, "e":Ljava/lang/Exception;
    sget-object v8, Landroid/adservices/ondevicepersonalization/LocalDataImpl;->sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v8, v6, v1, v5}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 124
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_35
    return-object v0

    .line 126
    :cond_36
    :try_start_36
    invoke-static {v7}, Landroid/adservices/ondevicepersonalization/LocalDataImpl$CallbackResult;->-$$Nest$fgetmResult(Landroid/adservices/ondevicepersonalization/LocalDataImpl$CallbackResult;)Landroid/os/Bundle;

    move-result-object v8

    .line 127
    .local v8, "result":Landroid/os/Bundle;
    if-eqz v8, :cond_61

    const-class v9, Ljava/util/HashSet;

    .line 128
    invoke-virtual {v8, v0, v9}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v9

    if-nez v9, :cond_45

    goto :goto_61

    .line 132
    :cond_45
    const-class v9, Ljava/util/HashSet;

    invoke-virtual {v8, v0, v9}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Set;
    :try_end_4d
    .catch Ljava/lang/RuntimeException; {:try_start_36 .. :try_end_4d} :catch_7d
    .catchall {:try_start_36 .. :try_end_4d} :catchall_7b

    .line 138
    :try_start_4d
    iget-object v9, p0, Landroid/adservices/ondevicepersonalization/LocalDataImpl;->mDataAccessService:Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v2

    .line 138
    invoke-interface {v9, v6, v10, v11, v4}, Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;->logApiCallStats(IJI)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_57} :catch_58

    .line 144
    goto :goto_60

    .line 142
    :catch_58
    move-exception v6

    .line 143
    .restart local v6    # "e":Ljava/lang/Exception;
    sget-object v9, Landroid/adservices/ondevicepersonalization/LocalDataImpl;->sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v9, v6, v1, v5}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 132
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_60
    return-object v0

    .line 129
    :cond_61
    :goto_61
    const/16 v4, 0x6f

    .line 130
    :try_start_63
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0
    :try_end_67
    .catch Ljava/lang/RuntimeException; {:try_start_63 .. :try_end_67} :catch_7d
    .catchall {:try_start_63 .. :try_end_67} :catchall_7b

    .line 138
    :try_start_67
    iget-object v9, p0, Landroid/adservices/ondevicepersonalization/LocalDataImpl;->mDataAccessService:Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v2

    .line 138
    invoke-interface {v9, v6, v10, v11, v4}, Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;->logApiCallStats(IJI)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_71} :catch_72

    .line 144
    goto :goto_7a

    .line 142
    :catch_72
    move-exception v6

    .line 143
    .restart local v6    # "e":Ljava/lang/Exception;
    sget-object v9, Landroid/adservices/ondevicepersonalization/LocalDataImpl;->sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v9, v6, v1, v5}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 130
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_7a
    return-object v0

    .line 137
    .end local v7    # "callbackResult":Landroid/adservices/ondevicepersonalization/LocalDataImpl$CallbackResult;
    .end local v8    # "result":Landroid/os/Bundle;
    :catchall_7b
    move-exception v0

    goto :goto_82

    .line 133
    :catch_7d
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/RuntimeException;
    const/16 v4, 0x64

    .line 135
    nop

    .end local v2    # "startTimeMillis":J
    .end local v4    # "responseCode":I
    .end local p0    # "this":Landroid/adservices/ondevicepersonalization/LocalDataImpl;
    :try_start_81
    throw v0
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_7b

    .line 138
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local v2    # "startTimeMillis":J
    .restart local v4    # "responseCode":I
    .restart local p0    # "this":Landroid/adservices/ondevicepersonalization/LocalDataImpl;
    :goto_82
    :try_start_82
    iget-object v7, p0, Landroid/adservices/ondevicepersonalization/LocalDataImpl;->mDataAccessService:Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    .line 138
    invoke-interface {v7, v6, v8, v9, v4}, Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;->logApiCallStats(IJI)V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_8c} :catch_8d

    .line 144
    goto :goto_95

    .line 142
    :catch_8d
    move-exception v6

    .line 143
    .restart local v6    # "e":Ljava/lang/Exception;
    sget-object v7, Landroid/adservices/ondevicepersonalization/LocalDataImpl;->sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v7, v6, v1, v5}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 145
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_95
    throw v0
.end method

.method public whitelist put(Ljava/lang/String;[B)[B
    .registers 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 61
    .local v4, "startTimeMillis":J
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 63
    .local v2, "params":Landroid/os/Bundle;
    const-string v0, "android.ondevicepersonalization.extra.lookup_keys"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance v0, Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice;

    invoke-direct {v0, p2}, Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice;-><init>([B)V

    const-string v1, "android.ondevicepersonalization.extra.value"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 65
    const/4 v1, 0x6

    const/16 v3, 0xd

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/adservices/ondevicepersonalization/LocalDataImpl;->handleLookupRequest(ILandroid/os/Bundle;IJ)[B

    move-result-object v1

    return-object v1
.end method

.method public whitelist remove(Ljava/lang/String;)[B
    .registers 8
    .param p1, "key"    # Ljava/lang/String;

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 73
    .local v4, "startTimeMillis":J
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 75
    .local v2, "params":Landroid/os/Bundle;
    const-string v0, "android.ondevicepersonalization.extra.lookup_keys"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const/4 v1, 0x7

    const/16 v3, 0xe

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/adservices/ondevicepersonalization/LocalDataImpl;->handleLookupRequest(ILandroid/os/Bundle;IJ)[B

    move-result-object v1

    return-object v1
.end method
