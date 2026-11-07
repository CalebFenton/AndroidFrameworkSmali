.class public Landroid/adservices/ondevicepersonalization/RemoteDataImpl;
.super Ljava/lang/Object;
.source "RemoteDataImpl.java"

# interfaces
.implements Landroid/adservices/ondevicepersonalization/KeyValueStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/ondevicepersonalization/RemoteDataImpl$CallbackResult;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "RemoteDataImpl"

.field private static final blacklist sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;


# instance fields
.field blacklist mDataAccessService:Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 38
    invoke-static {}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory;->getLogger()Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    move-result-object v0

    sput-object v0, Landroid/adservices/ondevicepersonalization/RemoteDataImpl;->sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;)V
    .registers 3
    .param p1, "binder"    # Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/RemoteDataImpl;->mDataAccessService:Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;

    .line 46
    return-void
.end method


# virtual methods
.method public whitelist get(Ljava/lang/String;)[B
    .registers 21
    .param p1, "key"    # Ljava/lang/String;

    .line 50
    move-object/from16 v1, p0

    const-string v0, "android.ondevicepersonalization.extra.result"

    const-string v2, "RemoteDataImpl: failed to log metrics"

    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 52
    .local v3, "startTimeMillis":J
    const/4 v5, 0x0

    .line 54
    .local v5, "responseCode":I
    const/4 v6, 0x0

    const/16 v7, 0x9

    :try_start_11
    new-instance v8, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 55
    .local v8, "asyncResult":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Landroid/adservices/ondevicepersonalization/RemoteDataImpl$CallbackResult;>;"
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 56
    .local v10, "params":Landroid/os/Bundle;
    const-string v11, "android.ondevicepersonalization.extra.lookup_keys"
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_1e} :catch_b7
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1e} :catch_b7
    .catchall {:try_start_11 .. :try_end_1e} :catchall_b0

    move-object/from16 v12, p1

    :try_start_20
    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v11, v1, Landroid/adservices/ondevicepersonalization/RemoteDataImpl;->mDataAccessService:Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;

    new-instance v13, Landroid/adservices/ondevicepersonalization/RemoteDataImpl$1;

    invoke-direct {v13, v1, v8}, Landroid/adservices/ondevicepersonalization/RemoteDataImpl$1;-><init>(Landroid/adservices/ondevicepersonalization/RemoteDataImpl;Ljava/util/concurrent/BlockingQueue;)V

    invoke-interface {v11, v9, v10, v13}, Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;->onRequest(ILandroid/os/Bundle;Landroid/adservices/ondevicepersonalization/aidl/IDataAccessServiceCallback;)V

    .line 72
    invoke-interface {v8}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/adservices/ondevicepersonalization/RemoteDataImpl$CallbackResult;

    .line 73
    .local v9, "callbackResult":Landroid/adservices/ondevicepersonalization/RemoteDataImpl$CallbackResult;
    iget v11, v9, Landroid/adservices/ondevicepersonalization/RemoteDataImpl$CallbackResult;->mErrorCode:I
    :try_end_35
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_35} :catch_ae
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_35} :catch_ae
    .catchall {:try_start_20 .. :try_end_35} :catchall_ac

    const/4 v13, 0x0

    if-eqz v11, :cond_5b

    .line 74
    :try_start_38
    iget v0, v9, Landroid/adservices/ondevicepersonalization/RemoteDataImpl$CallbackResult;->mErrorCode:I
    :try_end_3a
    .catch Ljava/lang/InterruptedException; {:try_start_38 .. :try_end_3a} :catch_56
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_3a} :catch_56
    .catchall {:try_start_38 .. :try_end_3a} :catchall_50

    move v5, v0

    .line 75
    nop

    .line 93
    :try_start_3c
    iget-object v0, v1, Landroid/adservices/ondevicepersonalization/RemoteDataImpl;->mDataAccessService:Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v3

    .line 93
    invoke-interface {v0, v7, v14, v15, v5}, Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;->logApiCallStats(IJI)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_46} :catch_47

    .line 99
    goto :goto_4f

    .line 97
    :catch_47
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    sget-object v7, Landroid/adservices/ondevicepersonalization/RemoteDataImpl;->sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v7, v0, v2, v6}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 75
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4f
    return-object v13

    .line 92
    .end local v8    # "asyncResult":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Landroid/adservices/ondevicepersonalization/RemoteDataImpl$CallbackResult;>;"
    .end local v9    # "callbackResult":Landroid/adservices/ondevicepersonalization/RemoteDataImpl$CallbackResult;
    .end local v10    # "params":Landroid/os/Bundle;
    :catchall_50
    move-exception v0

    move-wide/from16 v17, v3

    move-object v3, v0

    goto/16 :goto_cd

    .line 87
    :catch_56
    move-exception v0

    move-wide/from16 v17, v3

    goto/16 :goto_bc

    .line 77
    .restart local v8    # "asyncResult":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Landroid/adservices/ondevicepersonalization/RemoteDataImpl$CallbackResult;>;"
    .restart local v9    # "callbackResult":Landroid/adservices/ondevicepersonalization/RemoteDataImpl$CallbackResult;
    .restart local v10    # "params":Landroid/os/Bundle;
    :cond_5b
    :try_start_5b
    iget-object v11, v9, Landroid/adservices/ondevicepersonalization/RemoteDataImpl$CallbackResult;->mResult:Landroid/os/Bundle;

    .line 78
    .local v11, "result":Landroid/os/Bundle;
    if-eqz v11, :cond_92

    const-class v14, Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice;

    .line 79
    invoke-virtual {v11, v0, v14}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_6a

    move-wide/from16 v17, v3

    goto :goto_94

    .line 84
    :cond_6a
    const-class v13, Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice;

    .line 85
    invoke-virtual {v11, v0, v13}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice;

    move-object v13, v0

    .line 86
    .local v13, "data":Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice;
    invoke-virtual {v13}, Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice;->getByteArray()[B

    move-result-object v14
    :try_end_77
    .catch Ljava/lang/InterruptedException; {:try_start_5b .. :try_end_77} :catch_ae
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_77} :catch_ae
    .catchall {:try_start_5b .. :try_end_77} :catchall_ac

    .line 93
    :try_start_77
    iget-object v0, v1, Landroid/adservices/ondevicepersonalization/RemoteDataImpl;->mDataAccessService:Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_7d} :catch_87

    move-wide/from16 v17, v3

    .end local v3    # "startTimeMillis":J
    .local v17, "startTimeMillis":J
    sub-long v3, v15, v17

    .line 93
    :try_start_81
    invoke-interface {v0, v7, v3, v4, v5}, Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;->logApiCallStats(IJI)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_84} :catch_85

    .line 99
    goto :goto_91

    .line 97
    :catch_85
    move-exception v0

    goto :goto_8a

    .end local v17    # "startTimeMillis":J
    .restart local v3    # "startTimeMillis":J
    :catch_87
    move-exception v0

    move-wide/from16 v17, v3

    .line 98
    .end local v3    # "startTimeMillis":J
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v17    # "startTimeMillis":J
    :goto_8a
    sget-object v3, Landroid/adservices/ondevicepersonalization/RemoteDataImpl;->sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v2, v4}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 86
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_91
    return-object v14

    .line 78
    .end local v13    # "data":Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice;
    .end local v17    # "startTimeMillis":J
    .restart local v3    # "startTimeMillis":J
    :cond_92
    move-wide/from16 v17, v3

    .line 81
    .end local v3    # "startTimeMillis":J
    .restart local v17    # "startTimeMillis":J
    :goto_94
    const/16 v3, 0x6f

    .line 82
    .end local v5    # "responseCode":I
    .local v3, "responseCode":I
    nop

    .line 93
    :try_start_97
    iget-object v0, v1, Landroid/adservices/ondevicepersonalization/RemoteDataImpl;->mDataAccessService:Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v17

    .line 93
    invoke-interface {v0, v7, v4, v5, v3}, Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;->logApiCallStats(IJI)V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_a2} :catch_a3

    .line 99
    goto :goto_ab

    .line 97
    :catch_a3
    move-exception v0

    .line 98
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v4, Landroid/adservices/ondevicepersonalization/RemoteDataImpl;->sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v0, v2, v5}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 82
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_ab
    return-object v13

    .line 92
    .end local v8    # "asyncResult":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Landroid/adservices/ondevicepersonalization/RemoteDataImpl$CallbackResult;>;"
    .end local v9    # "callbackResult":Landroid/adservices/ondevicepersonalization/RemoteDataImpl$CallbackResult;
    .end local v10    # "params":Landroid/os/Bundle;
    .end local v11    # "result":Landroid/os/Bundle;
    .end local v17    # "startTimeMillis":J
    .local v3, "startTimeMillis":J
    .restart local v5    # "responseCode":I
    :catchall_ac
    move-exception v0

    goto :goto_b3

    .line 87
    :catch_ae
    move-exception v0

    goto :goto_ba

    .line 92
    :catchall_b0
    move-exception v0

    move-object/from16 v12, p1

    :goto_b3
    move-wide/from16 v17, v3

    move-object v3, v0

    .end local v3    # "startTimeMillis":J
    .restart local v17    # "startTimeMillis":J
    goto :goto_cd

    .line 87
    .end local v17    # "startTimeMillis":J
    .restart local v3    # "startTimeMillis":J
    :catch_b7
    move-exception v0

    move-object/from16 v12, p1

    :goto_ba
    move-wide/from16 v17, v3

    .line 88
    .end local v3    # "startTimeMillis":J
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v17    # "startTimeMillis":J
    :goto_bc
    :try_start_bc
    sget-object v3, Landroid/adservices/ondevicepersonalization/RemoteDataImpl;->sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    const-string v4, "RemoteDataImpl: Failed to retrieve key from remoteData"

    invoke-virtual {v3, v4, v0}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    const/16 v5, 0x64

    .line 90
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local v5    # "responseCode":I
    .end local v17    # "startTimeMillis":J
    .end local p0    # "this":Landroid/adservices/ondevicepersonalization/RemoteDataImpl;
    .end local p1    # "key":Ljava/lang/String;
    throw v3
    :try_end_cb
    .catchall {:try_start_bc .. :try_end_cb} :catchall_cb

    .line 92
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v5    # "responseCode":I
    .restart local v17    # "startTimeMillis":J
    .restart local p0    # "this":Landroid/adservices/ondevicepersonalization/RemoteDataImpl;
    .restart local p1    # "key":Ljava/lang/String;
    :catchall_cb
    move-exception v0

    move-object v3, v0

    .line 93
    :goto_cd
    :try_start_cd
    iget-object v0, v1, Landroid/adservices/ondevicepersonalization/RemoteDataImpl;->mDataAccessService:Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v8, v8, v17

    .line 93
    invoke-interface {v0, v7, v8, v9, v5}, Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;->logApiCallStats(IJI)V
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_d8} :catch_d9

    .line 99
    goto :goto_e1

    .line 97
    :catch_d9
    move-exception v0

    .line 98
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v4, Landroid/adservices/ondevicepersonalization/RemoteDataImpl;->sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v0, v2, v6}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 100
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_e1
    throw v3
.end method

.method public blacklist getTableId()I
    .registers 2

    .line 153
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist keySet()Ljava/util/Set;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 105
    const-string v0, "android.ondevicepersonalization.extra.result"

    const-string v1, "RemoteDataImpl: failed to log metrics"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 106
    .local v2, "startTimeMillis":J
    const/4 v4, 0x0

    .line 108
    .local v4, "responseCode":I
    const/4 v5, 0x0

    const/16 v6, 0xa

    :try_start_c
    new-instance v7, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 109
    .local v7, "asyncResult":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Landroid/adservices/ondevicepersonalization/RemoteDataImpl$CallbackResult;>;"
    iget-object v8, p0, Landroid/adservices/ondevicepersonalization/RemoteDataImpl;->mDataAccessService:Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;

    sget-object v9, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    new-instance v10, Landroid/adservices/ondevicepersonalization/RemoteDataImpl$2;

    invoke-direct {v10, p0, v7}, Landroid/adservices/ondevicepersonalization/RemoteDataImpl$2;-><init>(Landroid/adservices/ondevicepersonalization/RemoteDataImpl;Ljava/util/concurrent/BlockingQueue;)V

    const/4 v11, 0x2

    invoke-interface {v8, v11, v9, v10}, Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;->onRequest(ILandroid/os/Bundle;Landroid/adservices/ondevicepersonalization/aidl/IDataAccessServiceCallback;)V

    .line 123
    invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/adservices/ondevicepersonalization/RemoteDataImpl$CallbackResult;

    .line 124
    .local v8, "callbackResult":Landroid/adservices/ondevicepersonalization/RemoteDataImpl$CallbackResult;
    iget v9, v8, Landroid/adservices/ondevicepersonalization/RemoteDataImpl$CallbackResult;->mErrorCode:I

    if-eqz v9, :cond_44

    .line 125
    iget v0, v8, Landroid/adservices/ondevicepersonalization/RemoteDataImpl$CallbackResult;->mErrorCode:I

    move v4, v0

    .line 126
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_30} :catch_89
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_30} :catch_89
    .catchall {:try_start_c .. :try_end_30} :catchall_87

    .line 141
    :try_start_30
    iget-object v9, p0, Landroid/adservices/ondevicepersonalization/RemoteDataImpl;->mDataAccessService:Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v2

    .line 141
    invoke-interface {v9, v6, v10, v11, v4}, Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;->logApiCallStats(IJI)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3a} :catch_3b

    .line 147
    goto :goto_43

    .line 145
    :catch_3b
    move-exception v6

    .line 146
    .local v6, "e":Ljava/lang/Exception;
    sget-object v9, Landroid/adservices/ondevicepersonalization/RemoteDataImpl;->sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v9, v6, v1, v5}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 126
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_43
    return-object v0

    .line 128
    :cond_44
    :try_start_44
    iget-object v9, v8, Landroid/adservices/ondevicepersonalization/RemoteDataImpl$CallbackResult;->mResult:Landroid/os/Bundle;

    .line 129
    .local v9, "result":Landroid/os/Bundle;
    if-eqz v9, :cond_6d

    const-class v10, Ljava/util/HashSet;

    .line 130
    invoke-virtual {v9, v0, v10}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v10

    if-nez v10, :cond_51

    goto :goto_6d

    .line 134
    :cond_51
    const-class v10, Ljava/util/HashSet;

    invoke-virtual {v9, v0, v10}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Set;
    :try_end_59
    .catch Ljava/lang/InterruptedException; {:try_start_44 .. :try_end_59} :catch_89
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_59} :catch_89
    .catchall {:try_start_44 .. :try_end_59} :catchall_87

    .line 141
    :try_start_59
    iget-object v10, p0, Landroid/adservices/ondevicepersonalization/RemoteDataImpl;->mDataAccessService:Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v2

    .line 141
    invoke-interface {v10, v6, v11, v12, v4}, Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;->logApiCallStats(IJI)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_63} :catch_64

    .line 147
    goto :goto_6c

    .line 145
    :catch_64
    move-exception v6

    .line 146
    .restart local v6    # "e":Ljava/lang/Exception;
    sget-object v10, Landroid/adservices/ondevicepersonalization/RemoteDataImpl;->sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v10, v6, v1, v5}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 134
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_6c
    return-object v0

    .line 131
    :cond_6d
    :goto_6d
    const/16 v4, 0x6f

    .line 132
    :try_start_6f
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0
    :try_end_73
    .catch Ljava/lang/InterruptedException; {:try_start_6f .. :try_end_73} :catch_89
    .catch Landroid/os/RemoteException; {:try_start_6f .. :try_end_73} :catch_89
    .catchall {:try_start_6f .. :try_end_73} :catchall_87

    .line 141
    :try_start_73
    iget-object v10, p0, Landroid/adservices/ondevicepersonalization/RemoteDataImpl;->mDataAccessService:Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v2

    .line 141
    invoke-interface {v10, v6, v11, v12, v4}, Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;->logApiCallStats(IJI)V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_7d} :catch_7e

    .line 147
    goto :goto_86

    .line 145
    :catch_7e
    move-exception v6

    .line 146
    .restart local v6    # "e":Ljava/lang/Exception;
    sget-object v10, Landroid/adservices/ondevicepersonalization/RemoteDataImpl;->sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v10, v6, v1, v5}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 132
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_86
    return-object v0

    .line 140
    .end local v7    # "asyncResult":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Landroid/adservices/ondevicepersonalization/RemoteDataImpl$CallbackResult;>;"
    .end local v8    # "callbackResult":Landroid/adservices/ondevicepersonalization/RemoteDataImpl$CallbackResult;
    .end local v9    # "result":Landroid/os/Bundle;
    :catchall_87
    move-exception v0

    goto :goto_99

    .line 135
    :catch_89
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    :try_start_8a
    sget-object v7, Landroid/adservices/ondevicepersonalization/RemoteDataImpl;->sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    const-string v8, "RemoteDataImpl: Failed to retrieve keySet from remoteData"

    invoke-virtual {v7, v8, v0}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    const/16 v4, 0x64

    .line 138
    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local v2    # "startTimeMillis":J
    .end local v4    # "responseCode":I
    .end local p0    # "this":Landroid/adservices/ondevicepersonalization/RemoteDataImpl;
    throw v7
    :try_end_99
    .catchall {:try_start_8a .. :try_end_99} :catchall_87

    .line 141
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "startTimeMillis":J
    .restart local v4    # "responseCode":I
    .restart local p0    # "this":Landroid/adservices/ondevicepersonalization/RemoteDataImpl;
    :goto_99
    :try_start_99
    iget-object v7, p0, Landroid/adservices/ondevicepersonalization/RemoteDataImpl;->mDataAccessService:Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    .line 141
    invoke-interface {v7, v6, v8, v9, v4}, Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;->logApiCallStats(IJI)V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_a3} :catch_a4

    .line 147
    goto :goto_ac

    .line 145
    :catch_a4
    move-exception v6

    .line 146
    .restart local v6    # "e":Ljava/lang/Exception;
    sget-object v7, Landroid/adservices/ondevicepersonalization/RemoteDataImpl;->sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v7, v6, v1, v5}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 148
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_ac
    throw v0
.end method
