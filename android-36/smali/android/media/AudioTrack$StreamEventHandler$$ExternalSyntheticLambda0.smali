.class public final synthetic Landroid/media/AudioTrack$StreamEventHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/AudioTrack$StreamEventHandler;

.field public final synthetic blacklist f$1:Landroid/media/AudioTrack$StreamEventCbInfo;

.field public final synthetic blacklist f$2:Landroid/os/Message;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/AudioTrack$StreamEventHandler;Landroid/media/AudioTrack$StreamEventCbInfo;Landroid/os/Message;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/AudioTrack$StreamEventHandler$$ExternalSyntheticLambda0;->f$0:Landroid/media/AudioTrack$StreamEventHandler;

    iput-object p2, p0, Landroid/media/AudioTrack$StreamEventHandler$$ExternalSyntheticLambda0;->f$1:Landroid/media/AudioTrack$StreamEventCbInfo;

    iput-object p3, p0, Landroid/media/AudioTrack$StreamEventHandler$$ExternalSyntheticLambda0;->f$2:Landroid/os/Message;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/media/AudioTrack$StreamEventHandler$$ExternalSyntheticLambda0;->f$0:Landroid/media/AudioTrack$StreamEventHandler;

    iget-object v1, p0, Landroid/media/AudioTrack$StreamEventHandler$$ExternalSyntheticLambda0;->f$1:Landroid/media/AudioTrack$StreamEventCbInfo;

    iget-object v2, p0, Landroid/media/AudioTrack$StreamEventHandler$$ExternalSyntheticLambda0;->f$2:Landroid/os/Message;

    invoke-static {v0, v1, v2}, Landroid/media/AudioTrack$StreamEventHandler;->$r8$lambda$uKbHnBYiMZkL3kxt1XR7urTT-hs(Landroid/media/AudioTrack$StreamEventHandler;Landroid/media/AudioTrack$StreamEventCbInfo;Landroid/os/Message;)V

    return-void
.end method
