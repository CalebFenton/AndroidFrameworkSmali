.class public final synthetic Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/media/CallbackUtil$CallbackMethod;


# instance fields
.field public final synthetic blacklist f$0:I

.field public final synthetic blacklist f$1:Landroid/media/AudioDeviceAttributes;

.field public final synthetic blacklist f$2:[I


# direct methods
.method public synthetic constructor blacklist <init>(ILandroid/media/AudioDeviceAttributes;[I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub$$ExternalSyntheticLambda0;->f$0:I

    iput-object p2, p0, Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub$$ExternalSyntheticLambda0;->f$1:Landroid/media/AudioDeviceAttributes;

    iput-object p3, p0, Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub$$ExternalSyntheticLambda0;->f$2:[I

    return-void
.end method


# virtual methods
.method public final blacklist callbackMethod(Ljava/lang/Object;)V
    .registers 5

    .line 0
    iget v0, p0, Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub$$ExternalSyntheticLambda0;->f$0:I

    iget-object v1, p0, Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub$$ExternalSyntheticLambda0;->f$1:Landroid/media/AudioDeviceAttributes;

    iget-object v2, p0, Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub$$ExternalSyntheticLambda0;->f$2:[I

    check-cast p1, Landroid/media/AudioManager$MuteAwaitConnectionCallback;

    invoke-static {v0, v1, v2, p1}, Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub;->lambda$dispatchOnUnmutedEvent$1(ILandroid/media/AudioDeviceAttributes;[ILandroid/media/AudioManager$MuteAwaitConnectionCallback;)V

    return-void
.end method
