.class public final synthetic Landroid/service/voice/VoiceInteractionSession$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;

.field public final synthetic blacklist f$1:Landroid/service/voice/VisibleActivityInfo;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;Landroid/service/voice/VisibleActivityInfo;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/voice/VoiceInteractionSession$$ExternalSyntheticLambda2;->f$0:Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;

    iput-object p2, p0, Landroid/service/voice/VoiceInteractionSession$$ExternalSyntheticLambda2;->f$1:Landroid/service/voice/VisibleActivityInfo;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$$ExternalSyntheticLambda2;->f$0:Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$$ExternalSyntheticLambda2;->f$1:Landroid/service/voice/VisibleActivityInfo;

    invoke-static {v0, v1}, Landroid/service/voice/VoiceInteractionSession;->lambda$notifyVisibleActivityChanged$3(Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;Landroid/service/voice/VisibleActivityInfo;)V

    return-void
.end method
