.class public abstract Landroid/support/v4/media/session/MediaControllerCompat$Callback;
.super Ljava/lang/Object;
.source "MediaControllerCompat.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;,
        Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubCompat;,
        Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;
    }
.end annotation


# instance fields
.field private final mCallbackObj:Ljava/lang/Object;

.field private mHandler:Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;

.field private mRegistered:Z


# direct methods
.method static synthetic -get0(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->mCallbackObj:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->mHandler:Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->mRegistered:Z

    #@2
    return v0
.end method

.method static synthetic -set0(Landroid/support/v4/media/session/MediaControllerCompat$Callback;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->mRegistered:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Landroid/support/v4/media/session/MediaControllerCompat$Callback;Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->setHandler(Landroid/os/Handler;)V

    #@3
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 343
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->mRegistered:Z

    #@7
    .line 346
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@9
    const/16 v1, 0x15

    #@b
    if-lt v0, v1, :cond_0

    #@d
    .line 347
    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;

    #@f
    invoke-direct {v0, p0, v2}, Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;-><init>(Landroid/support/v4/media/session/MediaControllerCompat$Callback;Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;)V

    #@12
    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21;->createCallback(Landroid/support/v4/media/session/MediaControllerCompatApi21$Callback;)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->mCallbackObj:Ljava/lang/Object;

    #@18
    .line 345
    :goto_0
    return-void

    #@19
    .line 349
    :cond_0
    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubCompat;

    #@1b
    invoke-direct {v0, p0, v2}, Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubCompat;-><init>(Landroid/support/v4/media/session/MediaControllerCompat$Callback;Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubCompat;)V

    #@1e
    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->mCallbackObj:Ljava/lang/Object;

    #@20
    goto :goto_0
.end method

.method private setHandler(Landroid/os/Handler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 435
    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;

    #@2
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, p0, v1}, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;-><init>(Landroid/support/v4/media/session/MediaControllerCompat$Callback;Landroid/os/Looper;)V

    #@9
    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->mHandler:Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;

    #@b
    .line 434
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 0

    #@0
    .prologue
    .line 428
    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onSessionDestroyed()V

    #@3
    .line 427
    return-void
.end method

.method public onAudioInfoChanged(Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;

    #@0
    .prologue
    .line 423
    return-void
.end method

.method public onExtrasChanged(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 415
    return-void
.end method

.method public onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 0
    .param p1, "metadata"    # Landroid/support/v4/media/MediaMetadataCompat;

    #@0
    .prologue
    .line 385
    return-void
.end method

.method public onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 0
    .param p1, "state"    # Landroid/support/v4/media/session/PlaybackStateCompat;

    #@0
    .prologue
    .line 376
    return-void
.end method

.method public onQueueChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 396
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;>;"
    return-void
.end method

.method public onQueueTitleChanged(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 406
    return-void
.end method

.method public onSessionDestroyed()V
    .locals 0

    #@0
    .prologue
    .line 357
    return-void
.end method

.method public onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 368
    return-void
.end method
