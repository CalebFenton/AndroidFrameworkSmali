.class Landroid/media/NativeRoutingEventHandlerDelegate;
.super Ljava/lang/Object;
.source "NativeRoutingEventHandlerDelegate.java"


# instance fields
.field private greylist-max-o mAudioRouting:Landroid/media/AudioRouting;

.field private greylist-max-o mHandler:Landroid/os/Handler;

.field private greylist-max-o mOnRoutingChangedListener:Landroid/media/AudioRouting$OnRoutingChangedListener;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAudioRouting(Landroid/media/NativeRoutingEventHandlerDelegate;)Landroid/media/AudioRouting;
    .registers 1

    iget-object p0, p0, Landroid/media/NativeRoutingEventHandlerDelegate;->mAudioRouting:Landroid/media/AudioRouting;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnRoutingChangedListener(Landroid/media/NativeRoutingEventHandlerDelegate;)Landroid/media/AudioRouting$OnRoutingChangedListener;
    .registers 1

    iget-object p0, p0, Landroid/media/NativeRoutingEventHandlerDelegate;->mOnRoutingChangedListener:Landroid/media/AudioRouting$OnRoutingChangedListener;

    return-object p0
.end method

.method constructor greylist-max-o <init>(Landroid/media/AudioRouting;Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V
    .registers 4
    .param p1, "audioRouting"    # Landroid/media/AudioRouting;
    .param p2, "listener"    # Landroid/media/AudioRouting$OnRoutingChangedListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Landroid/media/NativeRoutingEventHandlerDelegate;->mAudioRouting:Landroid/media/AudioRouting;

    .line 35
    iput-object p2, p0, Landroid/media/NativeRoutingEventHandlerDelegate;->mOnRoutingChangedListener:Landroid/media/AudioRouting$OnRoutingChangedListener;

    .line 36
    iput-object p3, p0, Landroid/media/NativeRoutingEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    .line 37
    return-void
.end method


# virtual methods
.method greylist-max-o notifyClient()V
    .registers 3

    .line 40
    iget-object v0, p0, Landroid/media/NativeRoutingEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_e

    .line 41
    iget-object v0, p0, Landroid/media/NativeRoutingEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/NativeRoutingEventHandlerDelegate$1;

    invoke-direct {v1, p0}, Landroid/media/NativeRoutingEventHandlerDelegate$1;-><init>(Landroid/media/NativeRoutingEventHandlerDelegate;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 50
    :cond_e
    return-void
.end method
