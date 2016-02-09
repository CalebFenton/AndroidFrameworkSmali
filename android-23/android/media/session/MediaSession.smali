.class public final Landroid/media/session/MediaSession;
.super Ljava/lang/Object;
.source "MediaSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/MediaSession$Token;,
        Landroid/media/session/MediaSession$Callback;,
        Landroid/media/session/MediaSession$CallbackStub;,
        Landroid/media/session/MediaSession$QueueItem;,
        Landroid/media/session/MediaSession$Command;,
        Landroid/media/session/MediaSession$CallbackMessageHandler;
    }
.end annotation


# static fields
.field public static final FLAG_EXCLUSIVE_GLOBAL_PRIORITY:I = 0x10000

.field public static final FLAG_HANDLES_MEDIA_BUTTONS:I = 0x1

.field public static final FLAG_HANDLES_TRANSPORT_CONTROLS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MediaSession"


# instance fields
.field private mActive:Z

.field private final mBinder:Landroid/media/session/ISession;

.field private mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

.field private final mCbStub:Landroid/media/session/MediaSession$CallbackStub;

.field private final mController:Landroid/media/session/MediaController;

.field private final mLock:Ljava/lang/Object;

.field private final mMaxBitmapSize:I

.field private mPlaybackState:Landroid/media/session/PlaybackState;

.field private final mSessionToken:Landroid/media/session/MediaSession$Token;

.field private mVolumeProvider:Landroid/media/VolumeProvider;


# direct methods
.method static synthetic -get0(Landroid/media/session/MediaSession;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/session/MediaSession;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/media/session/MediaSession;)Landroid/media/session/PlaybackState;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/session/MediaSession;->mPlaybackState:Landroid/media/session/PlaybackState;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/media/session/MediaSession;)Landroid/media/VolumeProvider;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/session/MediaSession;->mVolumeProvider:Landroid/media/VolumeProvider;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/media/session/MediaSession;I)V
    .locals 0
    .param p1, "direction"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/session/MediaSession;->dispatchAdjustVolume(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Landroid/media/session/MediaSession;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/media/session/MediaSession;->dispatchCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    #@3
    return-void
.end method

.method static synthetic -wrap10(Landroid/media/session/MediaSession;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/media/session/MediaSession;->dispatchPrevious()V

    #@3
    return-void
.end method

.method static synthetic -wrap11(Landroid/media/session/MediaSession;Landroid/media/Rating;)V
    .locals 0
    .param p1, "rating"    # Landroid/media/Rating;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/session/MediaSession;->dispatchRate(Landroid/media/Rating;)V

    #@3
    return-void
.end method

.method static synthetic -wrap12(Landroid/media/session/MediaSession;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/media/session/MediaSession;->dispatchRewind()V

    #@3
    return-void
.end method

.method static synthetic -wrap13(Landroid/media/session/MediaSession;J)V
    .locals 1
    .param p1, "pos"    # J

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/media/session/MediaSession;->dispatchSeekTo(J)V

    #@3
    return-void
.end method

.method static synthetic -wrap14(Landroid/media/session/MediaSession;I)V
    .locals 0
    .param p1, "volume"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/session/MediaSession;->dispatchSetVolumeTo(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap15(Landroid/media/session/MediaSession;J)V
    .locals 1
    .param p1, "id"    # J

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/media/session/MediaSession;->dispatchSkipToItem(J)V

    #@3
    return-void
.end method

.method static synthetic -wrap16(Landroid/media/session/MediaSession;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/media/session/MediaSession;->dispatchStop()V

    #@3
    return-void
.end method

.method static synthetic -wrap17(Landroid/media/session/MediaSession;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "resultCb"    # Landroid/os/ResultReceiver;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/media/session/MediaSession;->postCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/media/session/MediaSession;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/media/session/MediaSession;->dispatchFastForward()V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Landroid/media/session/MediaSession;Landroid/content/Intent;)V
    .locals 0
    .param p1, "mediaButtonIntent"    # Landroid/content/Intent;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/session/MediaSession;->dispatchMediaButton(Landroid/content/Intent;)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Landroid/media/session/MediaSession;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/media/session/MediaSession;->dispatchNext()V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Landroid/media/session/MediaSession;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/media/session/MediaSession;->dispatchPause()V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Landroid/media/session/MediaSession;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/media/session/MediaSession;->dispatchPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Landroid/media/session/MediaSession;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/media/session/MediaSession;->dispatchPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Landroid/media/session/MediaSession;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/media/session/MediaSession;->dispatchPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Landroid/media/session/MediaSession;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/media/session/MediaSession;->dispatchPlay()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 130
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-direct {p0, p1, p2, v0}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    #@7
    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 106
    new-instance v2, Ljava/lang/Object;

    #@5
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v2, p0, Landroid/media/session/MediaSession;->mLock:Ljava/lang/Object;

    #@a
    .line 118
    const/4 v2, 0x0

    #@b
    iput-boolean v2, p0, Landroid/media/session/MediaSession;->mActive:Z

    #@d
    .line 145
    if-nez p1, :cond_0

    #@f
    .line 146
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@11
    const-string/jumbo v3, "context cannot be null."

    #@14
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v2

    #@18
    .line 148
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_1

    #@1e
    .line 149
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@20
    const-string/jumbo v3, "tag cannot be null or empty"

    #@23
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v2

    #@27
    .line 151
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@2a
    move-result-object v2

    #@2b
    .line 152
    const v3, 0x1050014

    #@2e
    .line 151
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@31
    move-result v2

    #@32
    iput v2, p0, Landroid/media/session/MediaSession;->mMaxBitmapSize:I

    #@34
    .line 153
    new-instance v2, Landroid/media/session/MediaSession$CallbackStub;

    #@36
    invoke-direct {v2, p0}, Landroid/media/session/MediaSession$CallbackStub;-><init>(Landroid/media/session/MediaSession;)V

    #@39
    iput-object v2, p0, Landroid/media/session/MediaSession;->mCbStub:Landroid/media/session/MediaSession$CallbackStub;

    #@3b
    .line 155
    const-string/jumbo v2, "media_session"

    #@3e
    .line 154
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@41
    move-result-object v1

    #@42
    check-cast v1, Landroid/media/session/MediaSessionManager;

    #@44
    .line 157
    .local v1, "manager":Landroid/media/session/MediaSessionManager;
    :try_start_0
    iget-object v2, p0, Landroid/media/session/MediaSession;->mCbStub:Landroid/media/session/MediaSession$CallbackStub;

    #@46
    invoke-virtual {v1, v2, p2, p3}, Landroid/media/session/MediaSessionManager;->createSession(Landroid/media/session/MediaSession$CallbackStub;Ljava/lang/String;I)Landroid/media/session/ISession;

    #@49
    move-result-object v2

    #@4a
    iput-object v2, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    #@4c
    .line 158
    new-instance v2, Landroid/media/session/MediaSession$Token;

    #@4e
    iget-object v3, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    #@50
    invoke-interface {v3}, Landroid/media/session/ISession;->getController()Landroid/media/session/ISessionController;

    #@53
    move-result-object v3

    #@54
    invoke-direct {v2, v3}, Landroid/media/session/MediaSession$Token;-><init>(Landroid/media/session/ISessionController;)V

    #@57
    iput-object v2, p0, Landroid/media/session/MediaSession;->mSessionToken:Landroid/media/session/MediaSession$Token;

    #@59
    .line 159
    new-instance v2, Landroid/media/session/MediaController;

    #@5b
    iget-object v3, p0, Landroid/media/session/MediaSession;->mSessionToken:Landroid/media/session/MediaSession$Token;

    #@5d
    invoke-direct {v2, p1, v3}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    #@60
    iput-object v2, p0, Landroid/media/session/MediaSession;->mController:Landroid/media/session/MediaController;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@62
    .line 144
    return-void

    #@63
    .line 160
    :catch_0
    move-exception v0

    #@64
    .line 161
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@66
    const-string/jumbo v3, "Remote error creating session."

    #@69
    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@6c
    throw v2
.end method

.method private dispatchAdjustVolume(I)V
    .locals 2
    .param p1, "direction"    # I

    #@0
    .prologue
    .line 576
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    const/16 v1, 0x10

    #@6
    invoke-direct {p0, v1, v0}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;)V

    #@9
    .line 575
    return-void
.end method

.method private dispatchCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 568
    const/16 v0, 0xd

    #@2
    invoke-direct {p0, v0, p1, p2}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;Landroid/os/Bundle;)V

    #@5
    .line 567
    return-void
.end method

.method private dispatchFastForward()V
    .locals 1

    #@0
    .prologue
    .line 552
    const/16 v0, 0x9

    #@2
    invoke-direct {p0, v0}, Landroid/media/session/MediaSession;->postToCallback(I)V

    #@5
    .line 551
    return-void
.end method

.method private dispatchMediaButton(Landroid/content/Intent;)V
    .locals 1
    .param p1, "mediaButtonIntent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 572
    const/16 v0, 0xe

    #@2
    invoke-direct {p0, v0, p1}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;)V

    #@5
    .line 571
    return-void
.end method

.method private dispatchNext()V
    .locals 1

    #@0
    .prologue
    .line 544
    const/4 v0, 0x7

    #@1
    invoke-direct {p0, v0}, Landroid/media/session/MediaSession;->postToCallback(I)V

    #@4
    .line 543
    return-void
.end method

.method private dispatchPause()V
    .locals 1

    #@0
    .prologue
    .line 536
    const/4 v0, 0x5

    #@1
    invoke-direct {p0, v0}, Landroid/media/session/MediaSession;->postToCallback(I)V

    #@4
    .line 535
    return-void
.end method

.method private dispatchPlay()V
    .locals 1

    #@0
    .prologue
    .line 516
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Landroid/media/session/MediaSession;->postToCallback(I)V

    #@4
    .line 515
    return-void
.end method

.method private dispatchPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 520
    const/4 v0, 0x2

    #@1
    invoke-direct {p0, v0, p1, p2}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;Landroid/os/Bundle;)V

    #@4
    .line 519
    return-void
.end method

.method private dispatchPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 524
    const/4 v0, 0x3

    #@1
    invoke-direct {p0, v0, p1, p2}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;Landroid/os/Bundle;)V

    #@4
    .line 523
    return-void
.end method

.method private dispatchPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 528
    const/16 v0, 0x12

    #@2
    invoke-direct {p0, v0, p1, p2}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;Landroid/os/Bundle;)V

    #@5
    .line 527
    return-void
.end method

.method private dispatchPrevious()V
    .locals 1

    #@0
    .prologue
    .line 548
    const/16 v0, 0x8

    #@2
    invoke-direct {p0, v0}, Landroid/media/session/MediaSession;->postToCallback(I)V

    #@5
    .line 547
    return-void
.end method

.method private dispatchRate(Landroid/media/Rating;)V
    .locals 1
    .param p1, "rating"    # Landroid/media/Rating;

    #@0
    .prologue
    .line 564
    const/16 v0, 0xc

    #@2
    invoke-direct {p0, v0, p1}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;)V

    #@5
    .line 563
    return-void
.end method

.method private dispatchRewind()V
    .locals 1

    #@0
    .prologue
    .line 556
    const/16 v0, 0xa

    #@2
    invoke-direct {p0, v0}, Landroid/media/session/MediaSession;->postToCallback(I)V

    #@5
    .line 555
    return-void
.end method

.method private dispatchSeekTo(J)V
    .locals 3
    .param p1, "pos"    # J

    #@0
    .prologue
    .line 560
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@3
    move-result-object v0

    #@4
    const/16 v1, 0xb

    #@6
    invoke-direct {p0, v1, v0}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;)V

    #@9
    .line 559
    return-void
.end method

.method private dispatchSetVolumeTo(I)V
    .locals 2
    .param p1, "volume"    # I

    #@0
    .prologue
    .line 580
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    const/16 v1, 0x11

    #@6
    invoke-direct {p0, v1, v0}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;)V

    #@9
    .line 579
    return-void
.end method

.method private dispatchSkipToItem(J)V
    .locals 3
    .param p1, "id"    # J

    #@0
    .prologue
    .line 532
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x4

    #@5
    invoke-direct {p0, v1, v0}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;)V

    #@8
    .line 531
    return-void
.end method

.method private dispatchStop()V
    .locals 1

    #@0
    .prologue
    .line 540
    const/4 v0, 0x6

    #@1
    invoke-direct {p0, v0}, Landroid/media/session/MediaSession;->postToCallback(I)V

    #@4
    .line 539
    return-void
.end method

.method public static isActiveState(I)Z
    .locals 1
    .param p0, "state"    # I

    #@0
    .prologue
    .line 610
    packed-switch p0, :pswitch_data_0

    #@3
    .line 620
    :pswitch_0
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 618
    :pswitch_1
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 610
    nop

    #@8
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private postCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "resultCb"    # Landroid/os/ResultReceiver;

    #@0
    .prologue
    .line 588
    new-instance v0, Landroid/media/session/MediaSession$Command;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/media/session/MediaSession$Command;-><init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    #@5
    .line 589
    .local v0, "cmd":Landroid/media/session/MediaSession$Command;
    const/16 v1, 0xf

    #@7
    invoke-direct {p0, v1, v0}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;)V

    #@a
    .line 587
    return-void
.end method

.method private postToCallback(I)V
    .locals 1
    .param p1, "what"    # I

    #@0
    .prologue
    .line 584
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;)V

    #@4
    .line 583
    return-void
.end method

.method private postToCallback(ILjava/lang/Object;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 593
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;Landroid/os/Bundle;)V

    #@4
    .line 592
    return-void
.end method

.method private postToCallback(ILjava/lang/Object;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 597
    iget-object v1, p0, Landroid/media/session/MediaSession;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 598
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 599
    iget-object v0, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    #@9
    invoke-virtual {v0, p1, p2, p3}, Landroid/media/session/MediaSession$CallbackMessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v1

    #@d
    .line 596
    return-void

    #@e
    .line 597
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method


# virtual methods
.method public getController()Landroid/media/session/MediaController;
    .locals 1

    #@0
    .prologue
    .line 391
    iget-object v0, p0, Landroid/media/session/MediaSession;->mController:Landroid/media/session/MediaController;

    #@2
    return-object v0
.end method

.method public getSessionToken()Landroid/media/session/MediaSession$Token;
    .locals 1

    #@0
    .prologue
    .line 381
    iget-object v0, p0, Landroid/media/session/MediaSession;->mSessionToken:Landroid/media/session/MediaSession$Token;

    #@2
    return-object v0
.end method

.method public isActive()Z
    .locals 1

    #@0
    .prologue
    .line 337
    iget-boolean v0, p0, Landroid/media/session/MediaSession;->mActive:Z

    #@2
    return v0
.end method

.method public notifyRemoteVolumeChanged(Landroid/media/VolumeProvider;)V
    .locals 4
    .param p1, "provider"    # Landroid/media/VolumeProvider;

    #@0
    .prologue
    .line 502
    iget-object v2, p0, Landroid/media/session/MediaSession;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 503
    if-eqz p1, :cond_0

    #@5
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSession;->mVolumeProvider:Landroid/media/VolumeProvider;

    #@7
    if-eq p1, v1, :cond_1

    #@9
    .line 504
    :cond_0
    const-string/jumbo v1, "MediaSession"

    #@c
    const-string/jumbo v3, "Received update from stale volume provider"

    #@f
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit v2

    #@13
    .line 505
    return-void

    #@14
    :cond_1
    monitor-exit v2

    #@15
    .line 509
    :try_start_1
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    #@17
    invoke-virtual {p1}, Landroid/media/VolumeProvider;->getCurrentVolume()I

    #@1a
    move-result v2

    #@1b
    invoke-interface {v1, v2}, Landroid/media/session/ISession;->setCurrentVolume(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@1e
    .line 501
    :goto_0
    return-void

    #@1f
    .line 502
    :catchall_0
    move-exception v1

    #@20
    monitor-exit v2

    #@21
    throw v1

    #@22
    .line 510
    :catch_0
    move-exception v0

    #@23
    .line 511
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSession"

    #@26
    const-string/jumbo v2, "Error in notifyVolumeChanged"

    #@29
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2c
    goto :goto_0
.end method

.method public release()V
    .locals 3

    #@0
    .prologue
    .line 366
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    #@2
    invoke-interface {v1}, Landroid/media/session/ISession;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 364
    :goto_0
    return-void

    #@6
    .line 367
    :catch_0
    move-exception v0

    #@7
    .line 368
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSession"

    #@a
    const-string/jumbo v2, "Error releasing session: "

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    goto :goto_0
.end method

.method public sendSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 349
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 350
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v2, "event cannot be null or empty"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 353
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    #@11
    invoke-interface {v1, p1, p2}, Landroid/media/session/ISession;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 348
    :goto_0
    return-void

    #@15
    .line 354
    :catch_0
    move-exception v0

    #@16
    .line 355
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSession"

    #@19
    const-string/jumbo v2, "Error sending event"

    #@1c
    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1f
    goto :goto_0
.end method

.method public setActive(Z)V
    .locals 3
    .param p1, "active"    # Z

    #@0
    .prologue
    .line 320
    iget-boolean v1, p0, Landroid/media/session/MediaSession;->mActive:Z

    #@2
    if-ne v1, p1, :cond_0

    #@4
    .line 321
    return-void

    #@5
    .line 324
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    #@7
    invoke-interface {v1, p1}, Landroid/media/session/ISession;->setActive(Z)V

    #@a
    .line 325
    iput-boolean p1, p0, Landroid/media/session/MediaSession;->mActive:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 319
    :goto_0
    return-void

    #@d
    .line 326
    :catch_0
    move-exception v0

    #@e
    .line 327
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSession"

    #@11
    const-string/jumbo v2, "Failure in setActive."

    #@14
    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@17
    goto :goto_0
.end method

.method public setCallback(Landroid/media/session/MediaSession$Callback;)V
    .locals 1
    .param p1, "callback"    # Landroid/media/session/MediaSession$Callback;

    #@0
    .prologue
    .line 175
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;Landroid/os/Handler;)V

    #@4
    .line 174
    return-void
.end method

.method public setCallback(Landroid/media/session/MediaSession$Callback;Landroid/os/Handler;)V
    .locals 5
    .param p1, "callback"    # Landroid/media/session/MediaSession$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 188
    iget-object v3, p0, Landroid/media/session/MediaSession;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 189
    if-nez p1, :cond_1

    #@5
    .line 190
    :try_start_0
    iget-object v2, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 191
    iget-object v2, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    #@b
    invoke-static {v2}, Landroid/media/session/MediaSession$CallbackMessageHandler;->-get0(Landroid/media/session/MediaSession$CallbackMessageHandler;)Landroid/media/session/MediaSession$Callback;

    #@e
    move-result-object v2

    #@f
    const/4 v4, 0x0

    #@10
    invoke-static {v2, v4}, Landroid/media/session/MediaSession$Callback;->-set0(Landroid/media/session/MediaSession$Callback;Landroid/media/session/MediaSession;)Landroid/media/session/MediaSession;

    #@13
    .line 193
    :cond_0
    const/4 v2, 0x0

    #@14
    iput-object v2, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    monitor-exit v3

    #@17
    .line 194
    return-void

    #@18
    .line 196
    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    #@1a
    if-eqz v2, :cond_2

    #@1c
    .line 199
    iget-object v2, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    #@1e
    invoke-static {v2}, Landroid/media/session/MediaSession$CallbackMessageHandler;->-get0(Landroid/media/session/MediaSession$CallbackMessageHandler;)Landroid/media/session/MediaSession$Callback;

    #@21
    move-result-object v2

    #@22
    const/4 v4, 0x0

    #@23
    invoke-static {v2, v4}, Landroid/media/session/MediaSession$Callback;->-set0(Landroid/media/session/MediaSession$Callback;Landroid/media/session/MediaSession;)Landroid/media/session/MediaSession;

    #@26
    .line 201
    :cond_2
    if-nez p2, :cond_3

    #@28
    .line 202
    new-instance v0, Landroid/os/Handler;

    #@2a
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@2d
    .end local p2    # "handler":Landroid/os/Handler;
    .local v0, "handler":Landroid/os/Handler;
    move-object p2, v0

    #@2e
    .line 204
    .end local v0    # "handler":Landroid/os/Handler;
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_3
    invoke-static {p1, p0}, Landroid/media/session/MediaSession$Callback;->-set0(Landroid/media/session/MediaSession$Callback;Landroid/media/session/MediaSession;)Landroid/media/session/MediaSession;

    #@31
    .line 205
    new-instance v1, Landroid/media/session/MediaSession$CallbackMessageHandler;

    #@33
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@36
    move-result-object v2

    #@37
    invoke-direct {v1, p0, v2, p1}, Landroid/media/session/MediaSession$CallbackMessageHandler;-><init>(Landroid/media/session/MediaSession;Landroid/os/Looper;Landroid/media/session/MediaSession$Callback;)V

    #@3a
    .line 207
    .local v1, "msgHandler":Landroid/media/session/MediaSession$CallbackMessageHandler;
    iput-object v1, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3c
    monitor-exit v3

    #@3d
    .line 187
    return-void

    #@3e
    .line 188
    .end local v1    # "msgHandler":Landroid/media/session/MediaSession$CallbackMessageHandler;
    :catchall_0
    move-exception v2

    #@3f
    monitor-exit v3

    #@40
    throw v2
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 489
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    #@2
    invoke-interface {v1, p1}, Landroid/media/session/ISession;->setExtras(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 487
    :goto_0
    return-void

    #@6
    .line 490
    :catch_0
    move-exception v0

    #@7
    .line 491
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "Dead object in setExtras."

    #@a
    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    #@d
    goto :goto_0
.end method

.method public setFlags(I)V
    .locals 3
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 249
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    #@2
    invoke-interface {v1, p1}, Landroid/media/session/ISession;->setFlags(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 247
    :goto_0
    return-void

    #@6
    .line 250
    :catch_0
    move-exception v0

    #@7
    .line 251
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSession"

    #@a
    const-string/jumbo v2, "Failure in setFlags."

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    goto :goto_0
.end method

.method public setMediaButtonReceiver(Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "mbr"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 236
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    #@2
    invoke-interface {v1, p1}, Landroid/media/session/ISession;->setMediaButtonReceiver(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 234
    :goto_0
    return-void

    #@6
    .line 237
    :catch_0
    move-exception v0

    #@7
    .line 238
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSession"

    #@a
    const-string/jumbo v2, "Failure in setMediaButtonReceiver."

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    goto :goto_0
.end method

.method public setMetadata(Landroid/media/MediaMetadata;)V
    .locals 3
    .param p1, "metadata"    # Landroid/media/MediaMetadata;

    #@0
    .prologue
    .line 415
    if-eqz p1, :cond_0

    #@2
    .line 416
    new-instance v1, Landroid/media/MediaMetadata$Builder;

    #@4
    iget v2, p0, Landroid/media/session/MediaSession;->mMaxBitmapSize:I

    #@6
    invoke-direct {v1, p1, v2}, Landroid/media/MediaMetadata$Builder;-><init>(Landroid/media/MediaMetadata;I)V

    #@9
    invoke-virtual {v1}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    #@c
    move-result-object p1

    #@d
    .line 419
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    #@f
    invoke-interface {v1, p1}, Landroid/media/session/ISession;->setMetadata(Landroid/media/MediaMetadata;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    .line 414
    :goto_0
    return-void

    #@13
    .line 420
    :catch_0
    move-exception v0

    #@14
    .line 421
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSession"

    #@17
    const-string/jumbo v2, "Dead object in setPlaybackState."

    #@1a
    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1d
    goto :goto_0
.end method

.method public setPlaybackState(Landroid/media/session/PlaybackState;)V
    .locals 3
    .param p1, "state"    # Landroid/media/session/PlaybackState;

    #@0
    .prologue
    .line 400
    iput-object p1, p0, Landroid/media/session/MediaSession;->mPlaybackState:Landroid/media/session/PlaybackState;

    #@2
    .line 402
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    #@4
    invoke-interface {v1, p1}, Landroid/media/session/ISession;->setPlaybackState(Landroid/media/session/PlaybackState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 399
    :goto_0
    return-void

    #@8
    .line 403
    :catch_0
    move-exception v0

    #@9
    .line 404
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSession"

    #@c
    const-string/jumbo v2, "Dead object in setPlaybackState."

    #@f
    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@12
    goto :goto_0
.end method

.method public setPlaybackToLocal(Landroid/media/AudioAttributes;)V
    .locals 3
    .param p1, "attributes"    # Landroid/media/AudioAttributes;

    #@0
    .prologue
    .line 267
    if-nez p1, :cond_0

    #@2
    .line 268
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "Attributes cannot be null for local playback."

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 271
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    #@d
    invoke-interface {v1, p1}, Landroid/media/session/ISession;->setPlaybackToLocal(Landroid/media/AudioAttributes;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 266
    :goto_0
    return-void

    #@11
    .line 272
    :catch_0
    move-exception v0

    #@12
    .line 273
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSession"

    #@15
    const-string/jumbo v2, "Failure in setPlaybackToLocal."

    #@18
    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1b
    goto :goto_0
.end method

.method public setPlaybackToRemote(Landroid/media/VolumeProvider;)V
    .locals 4
    .param p1, "volumeProvider"    # Landroid/media/VolumeProvider;

    #@0
    .prologue
    .line 289
    if-nez p1, :cond_0

    #@2
    .line 290
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "volumeProvider may not be null!"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 292
    :cond_0
    iget-object v1, p0, Landroid/media/session/MediaSession;->mLock:Ljava/lang/Object;

    #@d
    monitor-enter v1

    #@e
    .line 293
    :try_start_0
    iput-object p1, p0, Landroid/media/session/MediaSession;->mVolumeProvider:Landroid/media/VolumeProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    .line 295
    new-instance v1, Landroid/media/session/MediaSession$1;

    #@13
    invoke-direct {v1, p0}, Landroid/media/session/MediaSession$1;-><init>(Landroid/media/session/MediaSession;)V

    #@16
    invoke-virtual {p1, v1}, Landroid/media/VolumeProvider;->setCallback(Landroid/media/VolumeProvider$Callback;)V

    #@19
    .line 303
    :try_start_1
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    #@1b
    invoke-virtual {p1}, Landroid/media/VolumeProvider;->getVolumeControl()I

    #@1e
    move-result v2

    #@1f
    .line 304
    invoke-virtual {p1}, Landroid/media/VolumeProvider;->getMaxVolume()I

    #@22
    move-result v3

    #@23
    .line 303
    invoke-interface {v1, v2, v3}, Landroid/media/session/ISession;->setPlaybackToRemote(II)V

    #@26
    .line 305
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    #@28
    invoke-virtual {p1}, Landroid/media/VolumeProvider;->getCurrentVolume()I

    #@2b
    move-result v2

    #@2c
    invoke-interface {v1, v2}, Landroid/media/session/ISession;->setCurrentVolume(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@2f
    .line 288
    :goto_0
    return-void

    #@30
    .line 292
    :catchall_0
    move-exception v2

    #@31
    monitor-exit v1

    #@32
    throw v2

    #@33
    .line 306
    :catch_0
    move-exception v0

    #@34
    .line 307
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSession"

    #@37
    const-string/jumbo v2, "Failure in setPlaybackToRemote."

    #@3a
    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3d
    goto :goto_0
.end method

.method public setQueue(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    const/4 v1, 0x0

    #@1
    .line 438
    :try_start_0
    iget-object v2, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    #@3
    if-nez p1, :cond_0

    #@5
    :goto_0
    invoke-interface {v2, v1}, Landroid/media/session/ISession;->setQueue(Landroid/content/pm/ParceledListSlice;)V

    #@8
    .line 436
    :goto_1
    return-void

    #@9
    .line 438
    :cond_0
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    #@b
    invoke-direct {v1, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    goto :goto_0

    #@f
    .line 439
    :catch_0
    move-exception v0

    #@10
    .line 440
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "Dead object in setQueue."

    #@13
    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    #@16
    goto :goto_1
.end method

.method public setQueueTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 453
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    #@2
    invoke-interface {v1, p1}, Landroid/media/session/ISession;->setQueueTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 451
    :goto_0
    return-void

    #@6
    .line 454
    :catch_0
    move-exception v0

    #@7
    .line 455
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "Dead object in setQueueTitle."

    #@a
    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    #@d
    goto :goto_0
.end method

.method public setRatingType(I)V
    .locals 3
    .param p1, "type"    # I

    #@0
    .prologue
    .line 474
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    #@2
    invoke-interface {v1, p1}, Landroid/media/session/ISession;->setRatingType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 472
    :goto_0
    return-void

    #@6
    .line 475
    :catch_0
    move-exception v0

    #@7
    .line 476
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSession"

    #@a
    const-string/jumbo v2, "Error in setRatingType."

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    goto :goto_0
.end method

.method public setSessionActivity(Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "pi"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 220
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    #@2
    invoke-interface {v1, p1}, Landroid/media/session/ISession;->setLaunchPendingIntent(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 218
    :goto_0
    return-void

    #@6
    .line 221
    :catch_0
    move-exception v0

    #@7
    .line 222
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSession"

    #@a
    const-string/jumbo v2, "Failure in setLaunchPendingIntent."

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    goto :goto_0
.end method
