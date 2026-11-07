.class public final synthetic Landroid/service/wearable/WearableSensingService$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/RemoteCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/RemoteCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/wearable/WearableSensingService$1$$ExternalSyntheticLambda2;->f$0:Landroid/os/RemoteCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/service/wearable/WearableSensingService$1$$ExternalSyntheticLambda2;->f$0:Landroid/os/RemoteCallback;

    check-cast p1, Landroid/service/voice/HotwordAudioStream;

    invoke-static {v0, p1}, Landroid/service/wearable/WearableSensingService$1;->lambda$startHotwordRecognition$0(Landroid/os/RemoteCallback;Landroid/service/voice/HotwordAudioStream;)V

    return-void
.end method
