.class public final synthetic Landroid/media/AudioManager$PreferredMixerAttributesDispatcherStub$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/media/CallbackUtil$CallbackMethod;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/AudioAttributes;

.field public final synthetic blacklist f$1:Landroid/media/AudioDeviceInfo;

.field public final synthetic blacklist f$2:Landroid/media/AudioMixerAttributes;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/AudioAttributes;Landroid/media/AudioDeviceInfo;Landroid/media/AudioMixerAttributes;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/AudioManager$PreferredMixerAttributesDispatcherStub$$ExternalSyntheticLambda0;->f$0:Landroid/media/AudioAttributes;

    iput-object p2, p0, Landroid/media/AudioManager$PreferredMixerAttributesDispatcherStub$$ExternalSyntheticLambda0;->f$1:Landroid/media/AudioDeviceInfo;

    iput-object p3, p0, Landroid/media/AudioManager$PreferredMixerAttributesDispatcherStub$$ExternalSyntheticLambda0;->f$2:Landroid/media/AudioMixerAttributes;

    return-void
.end method


# virtual methods
.method public final blacklist callbackMethod(Ljava/lang/Object;)V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/media/AudioManager$PreferredMixerAttributesDispatcherStub$$ExternalSyntheticLambda0;->f$0:Landroid/media/AudioAttributes;

    iget-object v1, p0, Landroid/media/AudioManager$PreferredMixerAttributesDispatcherStub$$ExternalSyntheticLambda0;->f$1:Landroid/media/AudioDeviceInfo;

    iget-object v2, p0, Landroid/media/AudioManager$PreferredMixerAttributesDispatcherStub$$ExternalSyntheticLambda0;->f$2:Landroid/media/AudioMixerAttributes;

    check-cast p1, Landroid/media/AudioManager$OnPreferredMixerAttributesChangedListener;

    invoke-static {v0, v1, v2, p1}, Landroid/media/AudioManager$PreferredMixerAttributesDispatcherStub;->lambda$dispatchPrefMixerAttributesChanged$0(Landroid/media/AudioAttributes;Landroid/media/AudioDeviceInfo;Landroid/media/AudioMixerAttributes;Landroid/media/AudioManager$OnPreferredMixerAttributesChangedListener;)V

    return-void
.end method
