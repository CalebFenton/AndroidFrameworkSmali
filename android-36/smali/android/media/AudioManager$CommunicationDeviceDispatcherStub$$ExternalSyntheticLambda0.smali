.class public final synthetic Landroid/media/AudioManager$CommunicationDeviceDispatcherStub$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/media/CallbackUtil$CallbackMethod;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/AudioDeviceInfo;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/AudioDeviceInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/AudioManager$CommunicationDeviceDispatcherStub$$ExternalSyntheticLambda0;->f$0:Landroid/media/AudioDeviceInfo;

    return-void
.end method


# virtual methods
.method public final blacklist callbackMethod(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/media/AudioManager$CommunicationDeviceDispatcherStub$$ExternalSyntheticLambda0;->f$0:Landroid/media/AudioDeviceInfo;

    check-cast p1, Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;

    invoke-static {v0, p1}, Landroid/media/AudioManager$CommunicationDeviceDispatcherStub;->lambda$dispatchCommunicationDeviceChanged$0(Landroid/media/AudioDeviceInfo;Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;)V

    return-void
.end method
