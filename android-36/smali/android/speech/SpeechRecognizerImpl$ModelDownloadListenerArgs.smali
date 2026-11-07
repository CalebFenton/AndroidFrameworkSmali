.class Landroid/speech/SpeechRecognizerImpl$ModelDownloadListenerArgs;
.super Ljava/lang/Object;
.source "SpeechRecognizerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/SpeechRecognizerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ModelDownloadListenerArgs"
.end annotation


# instance fields
.field final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field final blacklist mIntent:Landroid/content/Intent;

.field final blacklist mModelDownloadListener:Landroid/speech/ModelDownloadListener;


# direct methods
.method private constructor blacklist <init>(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/ModelDownloadListener;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "modelDownloadListener"    # Landroid/speech/ModelDownloadListener;

    .line 567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 568
    iput-object p1, p0, Landroid/speech/SpeechRecognizerImpl$ModelDownloadListenerArgs;->mIntent:Landroid/content/Intent;

    .line 569
    iput-object p2, p0, Landroid/speech/SpeechRecognizerImpl$ModelDownloadListenerArgs;->mExecutor:Ljava/util/concurrent/Executor;

    .line 570
    iput-object p3, p0, Landroid/speech/SpeechRecognizerImpl$ModelDownloadListenerArgs;->mModelDownloadListener:Landroid/speech/ModelDownloadListener;

    .line 571
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/ModelDownloadListener;Landroid/speech/SpeechRecognizerImpl-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/speech/SpeechRecognizerImpl$ModelDownloadListenerArgs;-><init>(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/ModelDownloadListener;)V

    return-void
.end method
