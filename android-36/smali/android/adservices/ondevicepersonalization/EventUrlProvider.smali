.class public Landroid/adservices/ondevicepersonalization/EventUrlProvider;
.super Ljava/lang/Object;
.source "EventUrlProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/ondevicepersonalization/EventUrlProvider$CallbackResult;
    }
.end annotation


# static fields
.field private static final blacklist ASYNC_TIMEOUT_MS:J = 0x3e8L

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;


# instance fields
.field private final blacklist mDataAccessService:Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 44
    invoke-static {}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory;->getLogger()Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    move-result-object v0

    sput-object v0, Landroid/adservices/ondevicepersonalization/EventUrlProvider;->sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    .line 45
    const-class v0, Landroid/adservices/ondevicepersonalization/EventUrlProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/adservices/ondevicepersonalization/EventUrlProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;)V
    .registers 3
    .param p1, "binder"    # Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/EventUrlProvider;->mDataAccessService:Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;

    .line 53
    return-void
.end method

.method private blacklist getUrl(Landroid/os/Bundle;IJ)Landroid/net/Uri;
    .registers 16
    .param p1, "params"    # Landroid/os/Bundle;
    .param p2, "apiName"    # I
    .param p3, "startTimeMillis"    # J

    .line 103
    const-string v0, ": failed to log metrics"

    const/4 v1, 0x0

    .line 105
    .local v1, "responseCode":I
    const/4 v2, 0x0

    :try_start_4
    new-instance v3, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 107
    .local v3, "asyncResult":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Landroid/adservices/ondevicepersonalization/EventUrlProvider$CallbackResult;>;"
    iget-object v4, p0, Landroid/adservices/ondevicepersonalization/EventUrlProvider;->mDataAccessService:Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;

    new-instance v5, Landroid/adservices/ondevicepersonalization/EventUrlProvider$1;

    invoke-direct {v5, p0, v3}, Landroid/adservices/ondevicepersonalization/EventUrlProvider$1;-><init>(Landroid/adservices/ondevicepersonalization/EventUrlProvider;Ljava/util/concurrent/BlockingQueue;)V

    const/4 v6, 0x3

    invoke-interface {v4, v6, p1, v5}, Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;->onRequest(ILandroid/os/Bundle;Landroid/adservices/ondevicepersonalization/aidl/IDataAccessServiceCallback;)V

    .line 120
    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/adservices/ondevicepersonalization/EventUrlProvider$CallbackResult;

    .line 121
    .local v4, "callbackResult":Landroid/adservices/ondevicepersonalization/EventUrlProvider$CallbackResult;
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget v5, v4, Landroid/adservices/ondevicepersonalization/EventUrlProvider$CallbackResult;->mErrorCode:I

    if-nez v5, :cond_62

    .line 125
    iget-object v5, v4, Landroid/adservices/ondevicepersonalization/EventUrlProvider$CallbackResult;->mResult:Landroid/os/Bundle;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 126
    .local v5, "result":Landroid/os/Bundle;
    const-string v6, "android.ondevicepersonalization.extra.result"

    const-class v7, Landroid/net/Uri;

    .line 127
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 126
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;
    :try_end_3a
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_3a} :catch_7f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_3a} :catch_7f
    .catchall {:try_start_4 .. :try_end_3a} :catchall_7d

    .line 128
    .local v6, "url":Landroid/net/Uri;
    nop

    .line 134
    :try_start_3b
    iget-object v7, p0, Landroid/adservices/ondevicepersonalization/EventUrlProvider;->mDataAccessService:Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, p3

    .line 134
    invoke-interface {v7, p2, v8, v9, v1}, Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;->logApiCallStats(IJI)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_45} :catch_46

    .line 140
    goto :goto_61

    .line 138
    :catch_46
    move-exception v7

    .line 139
    .local v7, "e":Ljava/lang/Exception;
    sget-object v8, Landroid/adservices/ondevicepersonalization/EventUrlProvider;->sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Landroid/adservices/ondevicepersonalization/EventUrlProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v8, v7, v0, v2}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 128
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_61
    return-object v6

    .line 123
    .end local v5    # "result":Landroid/os/Bundle;
    .end local v6    # "url":Landroid/net/Uri;
    :cond_62
    :try_start_62
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/adservices/ondevicepersonalization/EventUrlProvider$CallbackResult;->mErrorCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v1    # "responseCode":I
    .end local p0    # "this":Landroid/adservices/ondevicepersonalization/EventUrlProvider;
    .end local p1    # "params":Landroid/os/Bundle;
    .end local p2    # "apiName":I
    .end local p3    # "startTimeMillis":J
    throw v5
    :try_end_7d
    .catch Ljava/lang/InterruptedException; {:try_start_62 .. :try_end_7d} :catch_7f
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_7d} :catch_7f
    .catchall {:try_start_62 .. :try_end_7d} :catchall_7d

    .line 133
    .end local v3    # "asyncResult":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Landroid/adservices/ondevicepersonalization/EventUrlProvider$CallbackResult;>;"
    .end local v4    # "callbackResult":Landroid/adservices/ondevicepersonalization/EventUrlProvider$CallbackResult;
    .restart local v1    # "responseCode":I
    .restart local p0    # "this":Landroid/adservices/ondevicepersonalization/EventUrlProvider;
    .restart local p1    # "params":Landroid/os/Bundle;
    .restart local p2    # "apiName":I
    .restart local p3    # "startTimeMillis":J
    :catchall_7d
    move-exception v3

    goto :goto_88

    .line 129
    :catch_7f
    move-exception v3

    .line 130
    .local v3, "e":Ljava/lang/Exception;
    const/16 v1, 0x64

    .line 131
    :try_start_82
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v1    # "responseCode":I
    .end local p0    # "this":Landroid/adservices/ondevicepersonalization/EventUrlProvider;
    .end local p1    # "params":Landroid/os/Bundle;
    .end local p2    # "apiName":I
    .end local p3    # "startTimeMillis":J
    throw v4
    :try_end_88
    .catchall {:try_start_82 .. :try_end_88} :catchall_7d

    .line 134
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "responseCode":I
    .restart local p0    # "this":Landroid/adservices/ondevicepersonalization/EventUrlProvider;
    .restart local p1    # "params":Landroid/os/Bundle;
    .restart local p2    # "apiName":I
    .restart local p3    # "startTimeMillis":J
    :goto_88
    :try_start_88
    iget-object v4, p0, Landroid/adservices/ondevicepersonalization/EventUrlProvider;->mDataAccessService:Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, p3

    .line 134
    invoke-interface {v4, p2, v5, v6, v1}, Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;->logApiCallStats(IJI)V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_92} :catch_93

    .line 140
    goto :goto_ae

    .line 138
    :catch_93
    move-exception v4

    .line 139
    .local v4, "e":Ljava/lang/Exception;
    sget-object v5, Landroid/adservices/ondevicepersonalization/EventUrlProvider;->sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Landroid/adservices/ondevicepersonalization/EventUrlProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v5, v4, v0, v2}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 141
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_ae
    throw v3
.end method


# virtual methods
.method public whitelist createEventTrackingUrlWithRedirect(Landroid/os/PersistableBundle;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 8
    .param p1, "eventParams"    # Landroid/os/PersistableBundle;
    .param p2, "destinationUrl"    # Landroid/net/Uri;

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 95
    .local v0, "startTimeMillis":J
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 96
    .local v2, "params":Landroid/os/Bundle;
    const-string v3, "android.ondevicepersonalization.extra.event_params"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 97
    const-string v3, "android.ondevicepersonalization.extra.destination_url"

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const/16 v3, 0x10

    invoke-direct {p0, v2, v3, v0, v1}, Landroid/adservices/ondevicepersonalization/EventUrlProvider;->getUrl(Landroid/os/Bundle;IJ)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method public whitelist createEventTrackingUrlWithResponse(Landroid/os/PersistableBundle;[BLjava/lang/String;)Landroid/net/Uri;
    .registers 8
    .param p1, "eventParams"    # Landroid/os/PersistableBundle;
    .param p2, "responseData"    # [B
    .param p3, "mimeType"    # Ljava/lang/String;

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 73
    .local v0, "startTimeMillis":J
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 74
    .local v2, "params":Landroid/os/Bundle;
    const-string v3, "android.ondevicepersonalization.extra.event_params"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 75
    const-string v3, "android.ondevicepersonalization.extra.response_data"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 76
    const-string v3, "android.ondevicepersonalization.extra.mime_type"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const/16 v3, 0xf

    invoke-direct {p0, v2, v3, v0, v1}, Landroid/adservices/ondevicepersonalization/EventUrlProvider;->getUrl(Landroid/os/Bundle;IJ)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method
