.class Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$6;
.super Ljava/lang/Object;
.source "OnDeviceIntelligenceService.java"

# interfaces
.implements Landroid/app/ondeviceintelligence/DownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->wrapDownloadCallback(Landroid/app/ondeviceintelligence/IDownloadCallback;)Landroid/app/ondeviceintelligence/DownloadCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$downloadCallback:Landroid/app/ondeviceintelligence/IDownloadCallback;


# direct methods
.method constructor blacklist <init>(Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;Landroid/app/ondeviceintelligence/IDownloadCallback;)V
    .registers 3
    .param p1, "this$0"    # Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 405
    iput-object p2, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$6;->val$downloadCallback:Landroid/app/ondeviceintelligence/IDownloadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onDownloadCompleted(Landroid/os/PersistableBundle;)V
    .registers 6
    .param p1, "persistableBundle"    # Landroid/os/PersistableBundle;

    .line 437
    :try_start_0
    iget-object v0, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$6;->val$downloadCallback:Landroid/app/ondeviceintelligence/IDownloadCallback;

    invoke-interface {v0, p1}, Landroid/app/ondeviceintelligence/IDownloadCallback;->onDownloadCompleted(Landroid/os/PersistableBundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 440
    goto :goto_21

    .line 438
    :catch_6
    move-exception v0

    .line 439
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error sending download status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_21
    return-void
.end method

.method public whitelist onDownloadFailed(ILjava/lang/String;Landroid/os/PersistableBundle;)V
    .registers 8
    .param p1, "failureStatus"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "errorParams"    # Landroid/os/PersistableBundle;

    .line 419
    :try_start_0
    iget-object v0, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$6;->val$downloadCallback:Landroid/app/ondeviceintelligence/IDownloadCallback;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/ondeviceintelligence/IDownloadCallback;->onDownloadFailed(ILjava/lang/String;Landroid/os/PersistableBundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 422
    goto :goto_21

    .line 420
    :catch_6
    move-exception v0

    .line 421
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error sending download status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_21
    return-void
.end method

.method public whitelist onDownloadProgress(J)V
    .registers 7
    .param p1, "totalBytesDownloaded"    # J

    .line 428
    :try_start_0
    iget-object v0, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$6;->val$downloadCallback:Landroid/app/ondeviceintelligence/IDownloadCallback;

    invoke-interface {v0, p1, p2}, Landroid/app/ondeviceintelligence/IDownloadCallback;->onDownloadProgress(J)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 431
    goto :goto_21

    .line 429
    :catch_6
    move-exception v0

    .line 430
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error sending download status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_21
    return-void
.end method

.method public whitelist onDownloadStarted(J)V
    .registers 7
    .param p1, "bytesToDownload"    # J

    .line 409
    :try_start_0
    iget-object v0, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$6;->val$downloadCallback:Landroid/app/ondeviceintelligence/IDownloadCallback;

    invoke-interface {v0, p1, p2}, Landroid/app/ondeviceintelligence/IDownloadCallback;->onDownloadStarted(J)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 412
    goto :goto_21

    .line 410
    :catch_6
    move-exception v0

    .line 411
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error sending download status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_21
    return-void
.end method
