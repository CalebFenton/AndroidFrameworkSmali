.class public final synthetic Landroid/service/voice/VoiceInteractionSession$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/CancellationSignal;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/CancellationSignal;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/voice/VoiceInteractionSession$$ExternalSyntheticLambda8;->f$0:Landroid/os/CancellationSignal;

    return-void
.end method


# virtual methods
.method public final whitelist onResult(Landroid/os/Bundle;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$$ExternalSyntheticLambda8;->f$0:Landroid/os/CancellationSignal;

    invoke-static {v0, p1}, Landroid/service/voice/VoiceInteractionSession;->lambda$requestDirectActions$5(Landroid/os/CancellationSignal;Landroid/os/Bundle;)V

    return-void
.end method
