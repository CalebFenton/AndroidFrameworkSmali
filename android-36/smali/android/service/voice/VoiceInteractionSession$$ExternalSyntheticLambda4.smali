.class public final synthetic Landroid/service/voice/VoiceInteractionSession$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/concurrent/Executor;

.field public final synthetic blacklist f$1:Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;

.field public final synthetic blacklist f$2:Landroid/service/voice/VisibleActivityInfo;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;Landroid/service/voice/VisibleActivityInfo;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/voice/VoiceInteractionSession$$ExternalSyntheticLambda4;->f$0:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/service/voice/VoiceInteractionSession$$ExternalSyntheticLambda4;->f$1:Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;

    iput-object p3, p0, Landroid/service/voice/VoiceInteractionSession$$ExternalSyntheticLambda4;->f$2:Landroid/service/voice/VisibleActivityInfo;

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$$ExternalSyntheticLambda4;->f$0:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$$ExternalSyntheticLambda4;->f$1:Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession$$ExternalSyntheticLambda4;->f$2:Landroid/service/voice/VisibleActivityInfo;

    invoke-static {v0, v1, v2}, Landroid/service/voice/VoiceInteractionSession;->lambda$notifyVisibleActivityChanged$4(Ljava/util/concurrent/Executor;Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;Landroid/service/voice/VisibleActivityInfo;)V

    return-void
.end method
