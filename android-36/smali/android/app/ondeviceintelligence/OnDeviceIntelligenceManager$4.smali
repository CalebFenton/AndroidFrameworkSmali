.class Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4;
.super Landroid/app/ondeviceintelligence/IDownloadCallback$Stub;
.source "OnDeviceIntelligenceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;->requestFeatureDownload(Landroid/app/ondeviceintelligence/Feature;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/app/ondeviceintelligence/DownloadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/app/ondeviceintelligence/DownloadCallback;

.field final synthetic blacklist val$callbackExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;Ljava/util/concurrent/Executor;Landroid/app/ondeviceintelligence/DownloadCallback;)V
    .registers 4
    .param p1, "this$0"    # Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 266
    iput-object p2, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4;->val$callbackExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4;->val$callback:Landroid/app/ondeviceintelligence/DownloadCallback;

    invoke-direct {p0}, Landroid/app/ondeviceintelligence/IDownloadCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onDownloadCompleted$6(Landroid/app/ondeviceintelligence/DownloadCallback;Landroid/os/PersistableBundle;)V
    .registers 2
    .param p0, "callback"    # Landroid/app/ondeviceintelligence/DownloadCallback;
    .param p1, "downloadParams"    # Landroid/os/PersistableBundle;

    .line 291
    invoke-interface {p0, p1}, Landroid/app/ondeviceintelligence/DownloadCallback;->onDownloadCompleted(Landroid/os/PersistableBundle;)V

    return-void
.end method

.method static synthetic blacklist lambda$onDownloadCompleted$7(Ljava/util/concurrent/Executor;Landroid/app/ondeviceintelligence/DownloadCallback;Landroid/os/PersistableBundle;)V
    .registers 4
    .param p0, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p1, "callback"    # Landroid/app/ondeviceintelligence/DownloadCallback;
    .param p2, "downloadParams"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 290
    new-instance v0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4$$ExternalSyntheticLambda3;-><init>(Landroid/app/ondeviceintelligence/DownloadCallback;Landroid/os/PersistableBundle;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onDownloadFailed$4(Landroid/app/ondeviceintelligence/DownloadCallback;ILjava/lang/String;Landroid/os/PersistableBundle;)V
    .registers 4
    .param p0, "callback"    # Landroid/app/ondeviceintelligence/DownloadCallback;
    .param p1, "failureStatus"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "errorParams"    # Landroid/os/PersistableBundle;

    .line 284
    invoke-interface {p0, p1, p2, p3}, Landroid/app/ondeviceintelligence/DownloadCallback;->onDownloadFailed(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method static synthetic blacklist lambda$onDownloadFailed$5(Ljava/util/concurrent/Executor;Landroid/app/ondeviceintelligence/DownloadCallback;ILjava/lang/String;Landroid/os/PersistableBundle;)V
    .registers 6
    .param p0, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p1, "callback"    # Landroid/app/ondeviceintelligence/DownloadCallback;
    .param p2, "failureStatus"    # I
    .param p3, "errorMessage"    # Ljava/lang/String;
    .param p4, "errorParams"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 283
    new-instance v0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4$$ExternalSyntheticLambda0;-><init>(Landroid/app/ondeviceintelligence/DownloadCallback;ILjava/lang/String;Landroid/os/PersistableBundle;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onDownloadProgress$2(Landroid/app/ondeviceintelligence/DownloadCallback;J)V
    .registers 3
    .param p0, "callback"    # Landroid/app/ondeviceintelligence/DownloadCallback;
    .param p1, "bytesDownloaded"    # J

    .line 277
    invoke-interface {p0, p1, p2}, Landroid/app/ondeviceintelligence/DownloadCallback;->onDownloadProgress(J)V

    return-void
.end method

.method static synthetic blacklist lambda$onDownloadProgress$3(Ljava/util/concurrent/Executor;Landroid/app/ondeviceintelligence/DownloadCallback;J)V
    .registers 5
    .param p0, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p1, "callback"    # Landroid/app/ondeviceintelligence/DownloadCallback;
    .param p2, "bytesDownloaded"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 276
    new-instance v0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1, p2, p3}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4$$ExternalSyntheticLambda4;-><init>(Landroid/app/ondeviceintelligence/DownloadCallback;J)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onDownloadStarted$0(Landroid/app/ondeviceintelligence/DownloadCallback;J)V
    .registers 3
    .param p0, "callback"    # Landroid/app/ondeviceintelligence/DownloadCallback;
    .param p1, "bytesToDownload"    # J

    .line 271
    invoke-interface {p0, p1, p2}, Landroid/app/ondeviceintelligence/DownloadCallback;->onDownloadStarted(J)V

    return-void
.end method

.method static synthetic blacklist lambda$onDownloadStarted$1(Ljava/util/concurrent/Executor;Landroid/app/ondeviceintelligence/DownloadCallback;J)V
    .registers 5
    .param p0, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p1, "callback"    # Landroid/app/ondeviceintelligence/DownloadCallback;
    .param p2, "bytesToDownload"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 270
    new-instance v0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1, p2, p3}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4$$ExternalSyntheticLambda5;-><init>(Landroid/app/ondeviceintelligence/DownloadCallback;J)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public blacklist onDownloadCompleted(Landroid/os/PersistableBundle;)V
    .registers 5
    .param p1, "downloadParams"    # Landroid/os/PersistableBundle;

    .line 290
    iget-object v0, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4;->val$callbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4;->val$callback:Landroid/app/ondeviceintelligence/DownloadCallback;

    new-instance v2, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, v1, p1}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/Executor;Landroid/app/ondeviceintelligence/DownloadCallback;Landroid/os/PersistableBundle;)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 292
    return-void
.end method

.method public blacklist onDownloadFailed(ILjava/lang/String;Landroid/os/PersistableBundle;)V
    .registers 10
    .param p1, "failureStatus"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "errorParams"    # Landroid/os/PersistableBundle;

    .line 283
    iget-object v1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4;->val$callbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4;->val$callback:Landroid/app/ondeviceintelligence/DownloadCallback;

    new-instance v0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4$$ExternalSyntheticLambda2;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    .end local p1    # "failureStatus":I
    .end local p2    # "errorMessage":Ljava/lang/String;
    .end local p3    # "errorParams":Landroid/os/PersistableBundle;
    .local v3, "failureStatus":I
    .local v4, "errorMessage":Ljava/lang/String;
    .local v5, "errorParams":Landroid/os/PersistableBundle;
    invoke-direct/range {v0 .. v5}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4$$ExternalSyntheticLambda2;-><init>(Ljava/util/concurrent/Executor;Landroid/app/ondeviceintelligence/DownloadCallback;ILjava/lang/String;Landroid/os/PersistableBundle;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 286
    return-void
.end method

.method public blacklist onDownloadProgress(J)V
    .registers 6
    .param p1, "bytesDownloaded"    # J

    .line 276
    iget-object v0, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4;->val$callbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4;->val$callback:Landroid/app/ondeviceintelligence/DownloadCallback;

    new-instance v2, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4$$ExternalSyntheticLambda7;

    invoke-direct {v2, v0, v1, p1, p2}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4$$ExternalSyntheticLambda7;-><init>(Ljava/util/concurrent/Executor;Landroid/app/ondeviceintelligence/DownloadCallback;J)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 278
    return-void
.end method

.method public blacklist onDownloadStarted(J)V
    .registers 6
    .param p1, "bytesToDownload"    # J

    .line 270
    iget-object v0, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4;->val$callbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4;->val$callback:Landroid/app/ondeviceintelligence/DownloadCallback;

    new-instance v2, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4$$ExternalSyntheticLambda6;

    invoke-direct {v2, v0, v1, p1, p2}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4$$ExternalSyntheticLambda6;-><init>(Ljava/util/concurrent/Executor;Landroid/app/ondeviceintelligence/DownloadCallback;J)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 272
    return-void
.end method
