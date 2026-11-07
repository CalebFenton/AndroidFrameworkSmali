.class public final synthetic Landroid/speech/SpeechRecognizerImpl$InternalSupportCallback$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/speech/SpeechRecognizerImpl$InternalSupportCallback;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/speech/SpeechRecognizerImpl$InternalSupportCallback;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/speech/SpeechRecognizerImpl$InternalSupportCallback$$ExternalSyntheticLambda1;->f$0:Landroid/speech/SpeechRecognizerImpl$InternalSupportCallback;

    iput p2, p0, Landroid/speech/SpeechRecognizerImpl$InternalSupportCallback$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl$InternalSupportCallback$$ExternalSyntheticLambda1;->f$0:Landroid/speech/SpeechRecognizerImpl$InternalSupportCallback;

    iget v1, p0, Landroid/speech/SpeechRecognizerImpl$InternalSupportCallback$$ExternalSyntheticLambda1;->f$1:I

    invoke-static {v0, v1}, Landroid/speech/SpeechRecognizerImpl$InternalSupportCallback;->$r8$lambda$6iR4hX2gthm4fl-DUn59SXN5l-s(Landroid/speech/SpeechRecognizerImpl$InternalSupportCallback;I)V

    return-void
.end method
