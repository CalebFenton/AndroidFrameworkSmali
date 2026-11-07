.class Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener;
.super Landroid/speech/IModelDownloadListener$Stub;
.source "SpeechRecognizerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/SpeechRecognizerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalModelDownloadListener"
.end annotation


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mModelDownloadListener:Landroid/speech/ModelDownloadListener;


# direct methods
.method public static synthetic blacklist $r8$lambda$00xONsy-hqT6TVQhcGjJpQxKikg(Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener;->lambda$onProgress$0(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$4VVjFlhV5qSwzrkQMr7B5cKxOEM(Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener;->lambda$onError$3(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ifEPuCIbrI57aKY8B4mq9UmV6EU(Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener;)V
    .registers 1

    invoke-direct {p0}, Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener;->lambda$onScheduled$2()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$l-7HE7ZhGPcHMlw5j5O9HwjqVis(Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener;)V
    .registers 1

    invoke-direct {p0}, Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener;->lambda$onSuccess$1()V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/speech/ModelDownloadListener;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "modelDownloadListener"    # Landroid/speech/ModelDownloadListener;

    .line 717
    invoke-direct {p0}, Landroid/speech/IModelDownloadListener$Stub;-><init>()V

    .line 718
    iput-object p1, p0, Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener;->mExecutor:Ljava/util/concurrent/Executor;

    .line 719
    iput-object p2, p0, Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener;->mModelDownloadListener:Landroid/speech/ModelDownloadListener;

    .line 720
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/speech/ModelDownloadListener;Landroid/speech/SpeechRecognizerImpl-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener;-><init>(Ljava/util/concurrent/Executor;Landroid/speech/ModelDownloadListener;)V

    return-void
.end method

.method private synthetic blacklist lambda$onError$3(I)V
    .registers 3
    .param p1, "error"    # I

    .line 739
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener;->mModelDownloadListener:Landroid/speech/ModelDownloadListener;

    invoke-interface {v0, p1}, Landroid/speech/ModelDownloadListener;->onError(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onProgress$0(I)V
    .registers 3
    .param p1, "completedPercent"    # I

    .line 724
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener;->mModelDownloadListener:Landroid/speech/ModelDownloadListener;

    invoke-interface {v0, p1}, Landroid/speech/ModelDownloadListener;->onProgress(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onScheduled$2()V
    .registers 2

    .line 734
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener;->mModelDownloadListener:Landroid/speech/ModelDownloadListener;

    invoke-interface {v0}, Landroid/speech/ModelDownloadListener;->onScheduled()V

    return-void
.end method

.method private synthetic blacklist lambda$onSuccess$1()V
    .registers 2

    .line 729
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener;->mModelDownloadListener:Landroid/speech/ModelDownloadListener;

    invoke-interface {v0}, Landroid/speech/ModelDownloadListener;->onSuccess()V

    return-void
.end method


# virtual methods
.method public blacklist onError(I)V
    .registers 4
    .param p1, "error"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 739
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener$$ExternalSyntheticLambda0;-><init>(Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 740
    return-void
.end method

.method public blacklist onProgress(I)V
    .registers 4
    .param p1, "completedPercent"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 724
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener$$ExternalSyntheticLambda2;-><init>(Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 725
    return-void
.end method

.method public blacklist onScheduled()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 734
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener$$ExternalSyntheticLambda1;-><init>(Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 735
    return-void
.end method

.method public blacklist onSuccess()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 729
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener$$ExternalSyntheticLambda3;-><init>(Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 730
    return-void
.end method
