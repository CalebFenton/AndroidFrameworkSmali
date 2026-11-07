.class public Landroid/speech/RecognitionService$SupportCallback;
.super Ljava/lang/Object;
.source "RecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/RecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SupportCallback"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/speech/IRecognitionSupportCallback;


# direct methods
.method private constructor blacklist <init>(Landroid/speech/IRecognitionSupportCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/speech/IRecognitionSupportCallback;

    .line 748
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 749
    iput-object p1, p0, Landroid/speech/RecognitionService$SupportCallback;->mCallback:Landroid/speech/IRecognitionSupportCallback;

    .line 750
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/speech/IRecognitionSupportCallback;Landroid/speech/RecognitionService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/speech/RecognitionService$SupportCallback;-><init>(Landroid/speech/IRecognitionSupportCallback;)V

    return-void
.end method


# virtual methods
.method public whitelist onError(I)V
    .registers 4
    .param p1, "errorCode"    # I

    .line 769
    :try_start_0
    iget-object v0, p0, Landroid/speech/RecognitionService$SupportCallback;->mCallback:Landroid/speech/IRecognitionSupportCallback;

    invoke-interface {v0, p1}, Landroid/speech/IRecognitionSupportCallback;->onError(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 772
    nop

    .line 773
    return-void

    .line 770
    :catch_7
    move-exception v0

    .line 771
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist onSupportResult(Landroid/speech/RecognitionSupport;)V
    .registers 4
    .param p1, "recognitionSupport"    # Landroid/speech/RecognitionSupport;

    .line 755
    :try_start_0
    iget-object v0, p0, Landroid/speech/RecognitionService$SupportCallback;->mCallback:Landroid/speech/IRecognitionSupportCallback;

    invoke-interface {v0, p1}, Landroid/speech/IRecognitionSupportCallback;->onSupportResult(Landroid/speech/RecognitionSupport;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 758
    nop

    .line 759
    return-void

    .line 756
    :catch_7
    move-exception v0

    .line 757
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
