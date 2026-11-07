.class public final synthetic Landroid/media/soundtrigger/SoundTriggerDetectionService$1$$ExternalSyntheticLambda3;
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
    check-cast p1, Landroid/media/soundtrigger/SoundTriggerDetectionService;

    check-cast p2, Ljava/util/UUID;

    check-cast p3, Landroid/os/Bundle;

    invoke-static {p1, p2, p3}, Landroid/media/soundtrigger/SoundTriggerDetectionService$1;->$r8$lambda$InkPOEA3D8t7XkKKh-icuCpMIVM(Landroid/media/soundtrigger/SoundTriggerDetectionService;Ljava/util/UUID;Landroid/os/Bundle;)V

    return-void
.end method
