.class Landroid/speech/SpeechRecognizerImpl$CheckRecognitionSupportArgs;
.super Ljava/lang/Object;
.source "SpeechRecognizerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/SpeechRecognizerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckRecognitionSupportArgs"
.end annotation


# instance fields
.field final blacklist mCallback:Landroid/speech/RecognitionSupportCallback;

.field final blacklist mCallbackExecutor:Ljava/util/concurrent/Executor;

.field final blacklist mIntent:Landroid/content/Intent;


# direct methods
.method private constructor blacklist <init>(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/RecognitionSupportCallback;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/speech/RecognitionSupportCallback;

    .line 554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 555
    iput-object p1, p0, Landroid/speech/SpeechRecognizerImpl$CheckRecognitionSupportArgs;->mIntent:Landroid/content/Intent;

    .line 556
    iput-object p2, p0, Landroid/speech/SpeechRecognizerImpl$CheckRecognitionSupportArgs;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 557
    iput-object p3, p0, Landroid/speech/SpeechRecognizerImpl$CheckRecognitionSupportArgs;->mCallback:Landroid/speech/RecognitionSupportCallback;

    .line 558
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/RecognitionSupportCallback;Landroid/speech/SpeechRecognizerImpl-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/speech/SpeechRecognizerImpl$CheckRecognitionSupportArgs;-><init>(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/RecognitionSupportCallback;)V

    return-void
.end method
