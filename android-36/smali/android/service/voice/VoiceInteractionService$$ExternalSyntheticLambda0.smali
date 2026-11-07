.class public final synthetic Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/service/voice/VoiceInteractionService;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/service/voice/VoiceInteractionService;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda0;->f$0:Landroid/service/voice/VoiceInteractionService;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda0;->f$0:Landroid/service/voice/VoiceInteractionService;

    check-cast p1, Landroid/service/voice/AbstractDetector;

    invoke-static {v0, p1}, Landroid/service/voice/VoiceInteractionService;->$r8$lambda$P6N6t5pC6a5IBmC3sK_4dtkgwLI(Landroid/service/voice/VoiceInteractionService;Landroid/service/voice/HotwordDetector;)V

    return-void
.end method
