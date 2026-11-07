.class public final synthetic Landroid/speech/SpeechRecognizerImpl$InternalSupportCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/speech/SpeechRecognizerImpl$InternalSupportCallback;

.field public final synthetic blacklist f$1:Landroid/speech/RecognitionSupport;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/speech/SpeechRecognizerImpl$InternalSupportCallback;Landroid/speech/RecognitionSupport;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/speech/SpeechRecognizerImpl$InternalSupportCallback$$ExternalSyntheticLambda0;->f$0:Landroid/speech/SpeechRecognizerImpl$InternalSupportCallback;

    iput-object p2, p0, Landroid/speech/SpeechRecognizerImpl$InternalSupportCallback$$ExternalSyntheticLambda0;->f$1:Landroid/speech/RecognitionSupport;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl$InternalSupportCallback$$ExternalSyntheticLambda0;->f$0:Landroid/speech/SpeechRecognizerImpl$InternalSupportCallback;

    iget-object v1, p0, Landroid/speech/SpeechRecognizerImpl$InternalSupportCallback$$ExternalSyntheticLambda0;->f$1:Landroid/speech/RecognitionSupport;

    invoke-static {v0, v1}, Landroid/speech/SpeechRecognizerImpl$InternalSupportCallback;->$r8$lambda$D0hfxOVCRlOisXi-vC0qx5UGeVk(Landroid/speech/SpeechRecognizerImpl$InternalSupportCallback;Landroid/speech/RecognitionSupport;)V

    return-void
.end method
