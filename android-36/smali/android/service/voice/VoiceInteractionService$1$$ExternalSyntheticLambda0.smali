.class public final synthetic Landroid/service/voice/VoiceInteractionService$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 0
    check-cast p1, Landroid/service/voice/VoiceInteractionService;

    check-cast p2, Landroid/os/IBinder;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {p1, p2, p3}, Landroid/service/voice/VoiceInteractionService$1;->$r8$lambda$zOL9PS2nlmh7wqJiY6u6AY0SwhU(Landroid/service/voice/VoiceInteractionService;Landroid/os/IBinder;I)V

    return-void
.end method
