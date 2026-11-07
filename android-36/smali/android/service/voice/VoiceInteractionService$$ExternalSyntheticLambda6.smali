.class public final synthetic Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/service/voice/VoiceInteractionService;

.field public final synthetic blacklist f$1:Z


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/service/voice/VoiceInteractionService;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda6;->f$0:Landroid/service/voice/VoiceInteractionService;

    iput-boolean p2, p0, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda6;->f$1:Z

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda6;->f$0:Landroid/service/voice/VoiceInteractionService;

    iget-boolean v1, p0, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda6;->f$1:Z

    check-cast p1, Landroid/service/voice/HotwordDetector;

    invoke-static {v0, v1, p1}, Landroid/service/voice/VoiceInteractionService;->$r8$lambda$YR2k9aseeGgZ6fiR6G00PM050Lo(Landroid/service/voice/VoiceInteractionService;ZLandroid/service/voice/HotwordDetector;)V

    return-void
.end method
