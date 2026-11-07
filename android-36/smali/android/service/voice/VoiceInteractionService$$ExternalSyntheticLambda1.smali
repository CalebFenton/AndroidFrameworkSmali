.class public final synthetic Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/io/PrintWriter;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda1;->f$0:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda1;->f$0:Ljava/io/PrintWriter;

    check-cast p1, Landroid/service/voice/HotwordDetector;

    invoke-static {v0, p1}, Landroid/service/voice/VoiceInteractionService;->lambda$dump$5(Ljava/io/PrintWriter;Landroid/service/voice/HotwordDetector;)V

    return-void
.end method
