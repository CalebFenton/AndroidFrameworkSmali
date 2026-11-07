.class public final Landroid/media/session/MediaSession;
.super Ljava/lang/Object;
.source "MediaSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/MediaSession$CallbackStub;,
        Landroid/media/session/MediaSession$Token;,
        Landroid/media/session/MediaSession$Callback;,
        Landroid/media/session/MediaSession$CallbackMessageHandler;,
        Landroid/media/session/MediaSession$Command;,
        Landroid/media/session/MediaSession$QueueItem;,
        Landroid/media/session/MediaSession$SessionFlags;
    }
.end annotation


# static fields
.field public static final greylist-max-o FLAG_EXCLUSIVE_GLOBAL_PRIORITY:I = 0x10000
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist FLAG_HANDLES_MEDIA_BUTTONS:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_HANDLES_TRANSPORT_CONTROLS:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o INVALID_PID:I = -0x1

.field public static final greylist-max-o INVALID_UID:I = -0x1

.field static final greylist-max-o TAG:Ljava/lang/String; = "MediaSession"


# instance fields
.field private greylist-max-o mActive:Z

.field private final greylist-max-o mBinder:Landroid/media/session/ISession;

.field private greylist mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

.field private final greylist-max-o mCbStub:Landroid/media/session/MediaSession$CallbackStub;

.field private blacklist mContext:Landroid/content/Context;

.field private final greylist-max-o mController:Landroid/media/session/MediaController;

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private final greylist-max-o mMaxBitmapSize:I

.field private greylist-max-o mPlaybackState:Landroid/media/session/PlaybackState;

.field private final greylist-max-o mSessionToken:Landroid/media/session/MediaSession$Token;

.field private greylist-max-o mVolumeProvider:Landroid/media/VolumeProvider;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/media/session/MediaSession;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/session/MediaSession;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPlaybackState(Landroid/media/session/MediaSession;)Landroid/media/session/PlaybackState;
    .registers 1

    iget-object p0, p0, Landroid/media/session/MediaSession;->mPlaybackState:Landroid/media/session/PlaybackState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVolumeProvider(Landroid/media/session/MediaSession;)Landroid/media/VolumeProvider;
    .registers 1

    iget-object p0, p0, Landroid/media/session/MediaSession;->mVolumeProvider:Landroid/media/VolumeProvider;

    return-object p0
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;

    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 164
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "sessionInfo"    # Landroid/os/Bundle;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/session/MediaSession;->mLock:Ljava/lang/Object;

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/session/MediaSession;->mActive:Z

    .line 188
    if-eqz p1, :cond_77

    .line 191
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6f

    .line 194
    invoke-static {p3}, Landroid/media/session/MediaSession;->hasCustomParcelable(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_67

    .line 199
    iput-object p1, p0, Landroid/media/session/MediaSession;->mContext:Landroid/content/Context;

    .line 200
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/media/session/MediaSession;->mMaxBitmapSize:I

    .line 202
    new-instance v0, Landroid/media/session/MediaSession$CallbackStub;

    invoke-direct {v0, p0}, Landroid/media/session/MediaSession$CallbackStub;-><init>(Landroid/media/session/MediaSession;)V

    iput-object v0, p0, Landroid/media/session/MediaSession;->mCbStub:Landroid/media/session/MediaSession$CallbackStub;

    .line 203
    nop

    .line 204
    const-string v0, "media_session"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    .line 206
    .local v0, "manager":Landroid/media/session/MediaSessionManager;
    :try_start_3a
    iget-object v1, p0, Landroid/media/session/MediaSession;->mCbStub:Landroid/media/session/MediaSession$CallbackStub;

    invoke-virtual {v0, v1, p2, p3}, Landroid/media/session/MediaSessionManager;->createSession(Landroid/media/session/MediaSession$CallbackStub;Ljava/lang/String;Landroid/os/Bundle;)Landroid/media/session/ISession;

    move-result-object v1

    iput-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    .line 207
    new-instance v1, Landroid/media/session/MediaSession$Token;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    iget-object v3, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v3}, Landroid/media/session/ISession;->getController()Landroid/media/session/ISessionController;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/media/session/MediaSession$Token;-><init>(ILandroid/media/session/ISessionController;)V

    iput-object v1, p0, Landroid/media/session/MediaSession;->mSessionToken:Landroid/media/session/MediaSession$Token;

    .line 208
    new-instance v1, Landroid/media/session/MediaController;

    iget-object v2, p0, Landroid/media/session/MediaSession;->mSessionToken:Landroid/media/session/MediaSession$Token;

    invoke-direct {v1, p1, v2}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    iput-object v1, p0, Landroid/media/session/MediaSession;->mController:Landroid/media/session/MediaController;
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_5c} :catch_5e

    .line 211
    nop

    .line 212
    return-void

    .line 209
    :catch_5e
    move-exception v1

    .line 210
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Remote error creating session."

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 195
    .end local v0    # "manager":Landroid/media/session/MediaSessionManager;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sessionInfo shouldn\'t contain any custom parcelables"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_6f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "tag cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist hasCustomParcelable(Landroid/os/Bundle;)Z
    .registers 6
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 658
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 659
    return v0

    .line 663
    :cond_4
    const/4 v1, 0x0

    .line 665
    .local v1, "parcel":Landroid/os/Parcel;
    :try_start_5
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    move-object v1, v2

    .line 666
    invoke-virtual {v1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 667
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 668
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v2

    .line 670
    .local v2, "out":Landroid/os/Bundle;
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 671
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2c
    .catch Landroid/os/BadParcelableException; {:try_start_5 .. :try_end_2c} :catch_36
    .catchall {:try_start_5 .. :try_end_2c} :catchall_34

    .line 672
    nop

    .end local v4    # "key":Ljava/lang/String;
    goto :goto_1d

    .line 677
    .end local v2    # "out":Landroid/os/Bundle;
    :cond_2e
    if-eqz v1, :cond_33

    .line 678
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 681
    :cond_33
    return v0

    .line 677
    :catchall_34
    move-exception v0

    goto :goto_46

    .line 673
    :catch_36
    move-exception v0

    .line 674
    .local v0, "e":Landroid/os/BadParcelableException;
    :try_start_37
    const-string v2, "MediaSession"

    const-string v3, "Custom parcelable in bundle."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_34

    .line 675
    nop

    .line 677
    if-eqz v1, :cond_44

    .line 678
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 675
    :cond_44
    const/4 v2, 0x1

    return v2

    .line 677
    .end local v0    # "e":Landroid/os/BadParcelableException;
    :goto_46
    if-eqz v1, :cond_4b

    .line 678
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 680
    :cond_4b
    throw v0
.end method


# virtual methods
.method greylist-max-o dispatchAdjustVolume(Landroid/media/session/MediaSessionManager$RemoteUserInfo;I)V
    .registers 6
    .param p1, "caller"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .param p2, "direction"    # I

    .line 771
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x16

    invoke-virtual {p0, p1, v2, v0, v1}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 772
    return-void
.end method

.method greylist-max-o dispatchCommand(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .registers 8
    .param p1, "caller"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "args"    # Landroid/os/Bundle;
    .param p4, "resultCb"    # Landroid/os/ResultReceiver;

    .line 780
    new-instance v0, Landroid/media/session/MediaSession$Command;

    invoke-direct {v0, p2, p3, p4}, Landroid/media/session/MediaSession$Command;-><init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 781
    .local v0, "cmd":Landroid/media/session/MediaSession$Command;
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v0, v2}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 782
    return-void
.end method

.method greylist-max-o dispatchCustomAction(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "caller"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "args"    # Landroid/os/Bundle;

    .line 757
    const/16 v0, 0x15

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 758
    return-void
.end method

.method greylist-max-o dispatchFastForward(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V
    .registers 4
    .param p1, "caller"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    .line 737
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 738
    return-void
.end method

.method greylist-max-o dispatchMediaButton(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Landroid/content/Intent;)V
    .registers 5
    .param p1, "caller"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .param p2, "mediaButtonIntent"    # Landroid/content/Intent;

    .line 761
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 762
    return-void
.end method

.method greylist-max-o dispatchMediaButtonDelayed(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Landroid/content/Intent;J)V
    .registers 12
    .param p1, "info"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .param p2, "mediaButtonIntent"    # Landroid/content/Intent;
    .param p3, "delay"    # J

    .line 766
    const/16 v2, 0x18

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v5, p3

    .end local p1    # "info":Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .end local p2    # "mediaButtonIntent":Landroid/content/Intent;
    .end local p3    # "delay":J
    .local v1, "info":Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .local v3, "mediaButtonIntent":Landroid/content/Intent;
    .local v5, "delay":J
    invoke-virtual/range {v0 .. v6}, Landroid/media/session/MediaSession;->postToCallbackDelayed(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;J)V

    .line 768
    return-void
.end method

.method greylist-max-o dispatchNext(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V
    .registers 4
    .param p1, "caller"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    .line 729
    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 730
    return-void
.end method

.method greylist-max-o dispatchPause(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V
    .registers 4
    .param p1, "caller"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    .line 721
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 722
    return-void
.end method

.method greylist-max-o dispatchPlay(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V
    .registers 4
    .param p1, "caller"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    .line 701
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 702
    return-void
.end method

.method greylist-max-o dispatchPlayFromMediaId(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "caller"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .param p2, "mediaId"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 705
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 706
    return-void
.end method

.method greylist-max-o dispatchPlayFromSearch(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "caller"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 709
    const/16 v0, 0x9

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 710
    return-void
.end method

.method greylist-max-o dispatchPlayFromUri(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "caller"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 713
    const/16 v0, 0xa

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 714
    return-void
.end method

.method greylist-max-o dispatchPrepare(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V
    .registers 4
    .param p1, "caller"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    .line 685
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 686
    return-void
.end method

.method greylist-max-o dispatchPrepareFromMediaId(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "caller"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .param p2, "mediaId"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 689
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 690
    return-void
.end method

.method greylist-max-o dispatchPrepareFromSearch(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "caller"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 693
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 694
    return-void
.end method

.method greylist-max-o dispatchPrepareFromUri(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "caller"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 697
    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 698
    return-void
.end method

.method greylist-max-o dispatchPrevious(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V
    .registers 4
    .param p1, "caller"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    .line 733
    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 734
    return-void
.end method

.method greylist-max-o dispatchRate(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Landroid/media/Rating;)V
    .registers 5
    .param p1, "caller"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .param p2, "rating"    # Landroid/media/Rating;

    .line 749
    const/16 v0, 0x13

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 750
    return-void
.end method

.method greylist-max-o dispatchRewind(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V
    .registers 4
    .param p1, "caller"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    .line 741
    const/16 v0, 0x11

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 742
    return-void
.end method

.method greylist-max-o dispatchSeekTo(Landroid/media/session/MediaSessionManager$RemoteUserInfo;J)V
    .registers 7
    .param p1, "caller"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .param p2, "pos"    # J

    .line 745
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x12

    invoke-virtual {p0, p1, v2, v0, v1}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 746
    return-void
.end method

.method blacklist dispatchSetPlaybackSpeed(Landroid/media/session/MediaSessionManager$RemoteUserInfo;F)V
    .registers 6
    .param p1, "caller"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .param p2, "speed"    # F

    .line 753
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x14

    invoke-virtual {p0, p1, v2, v0, v1}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 754
    return-void
.end method

.method greylist-max-o dispatchSetVolumeTo(Landroid/media/session/MediaSessionManager$RemoteUserInfo;I)V
    .registers 6
    .param p1, "caller"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .param p2, "volume"    # I

    .line 775
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x17

    invoke-virtual {p0, p1, v2, v0, v1}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 776
    return-void
.end method

.method greylist-max-o dispatchSkipToItem(Landroid/media/session/MediaSessionManager$RemoteUserInfo;J)V
    .registers 7
    .param p1, "caller"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .param p2, "id"    # J

    .line 717
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xb

    invoke-virtual {p0, p1, v2, v0, v1}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 718
    return-void
.end method

.method greylist-max-o dispatchStop(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V
    .registers 4
    .param p1, "caller"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    .line 725
    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 726
    return-void
.end method

.method public greylist getCallingPackage()Ljava/lang/String;
    .registers 2

    .line 648
    iget-object v0, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    invoke-static {v0}, Landroid/media/session/MediaSession$CallbackMessageHandler;->-$$Nest$fgetmCurrentControllerInfo(Landroid/media/session/MediaSession$CallbackMessageHandler;)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 649
    iget-object v0, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    invoke-static {v0}, Landroid/media/session/MediaSession$CallbackMessageHandler;->-$$Nest$fgetmCurrentControllerInfo(Landroid/media/session/MediaSession$CallbackMessageHandler;)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 651
    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getController()Landroid/media/session/MediaController;
    .registers 2

    .line 480
    iget-object v0, p0, Landroid/media/session/MediaSession;->mController:Landroid/media/session/MediaController;

    return-object v0
.end method

.method public final whitelist getCurrentControllerInfo()Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .registers 3

    .line 612
    iget-object v0, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    invoke-static {v0}, Landroid/media/session/MediaSession$CallbackMessageHandler;->-$$Nest$fgetmCurrentControllerInfo(Landroid/media/session/MediaSession$CallbackMessageHandler;)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 616
    iget-object v0, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    invoke-static {v0}, Landroid/media/session/MediaSession$CallbackMessageHandler;->-$$Nest$fgetmCurrentControllerInfo(Landroid/media/session/MediaSession$CallbackMessageHandler;)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v0

    return-object v0

    .line 613
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This should be called inside of MediaSession.Callback methods"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getSessionToken()Landroid/media/session/MediaSession$Token;
    .registers 2

    .line 470
    iget-object v0, p0, Landroid/media/session/MediaSession;->mSessionToken:Landroid/media/session/MediaSession$Token;

    return-object v0
.end method

.method public whitelist isActive()Z
    .registers 2

    .line 425
    iget-boolean v0, p0, Landroid/media/session/MediaSession;->mActive:Z

    return v0
.end method

.method public greylist-max-o notifyRemoteVolumeChanged(Landroid/media/VolumeProvider;)V
    .registers 5
    .param p1, "provider"    # Landroid/media/VolumeProvider;

    .line 626
    iget-object v0, p0, Landroid/media/session/MediaSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 627
    if-eqz p1, :cond_1e

    :try_start_5
    iget-object v1, p0, Landroid/media/session/MediaSession;->mVolumeProvider:Landroid/media/VolumeProvider;

    if-eq p1, v1, :cond_a

    goto :goto_1e

    .line 631
    :cond_a
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_27

    .line 633
    :try_start_b
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-virtual {p1}, Landroid/media/VolumeProvider;->getCurrentVolume()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/media/session/ISession;->setCurrentVolume(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_14} :catch_15

    .line 636
    goto :goto_1d

    .line 634
    :catch_15
    move-exception v0

    .line 635
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSession"

    const-string v2, "Error in notifyVolumeChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 637
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1d
    return-void

    .line 628
    :cond_1e
    :goto_1e
    :try_start_1e
    const-string v1, "MediaSession"

    const-string v2, "Received update from stale volume provider"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    monitor-exit v0

    return-void

    .line 631
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_27

    throw v1
.end method

.method greylist-max-o postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V
    .registers 12
    .param p1, "caller"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "data"    # Landroid/os/Bundle;

    .line 785
    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "caller":Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .end local p2    # "what":I
    .end local p3    # "obj":Ljava/lang/Object;
    .end local p4    # "data":Landroid/os/Bundle;
    .local v1, "caller":Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .local v2, "what":I
    .local v3, "obj":Ljava/lang/Object;
    .local v4, "data":Landroid/os/Bundle;
    invoke-virtual/range {v0 .. v6}, Landroid/media/session/MediaSession;->postToCallbackDelayed(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;J)V

    .line 786
    return-void
.end method

.method greylist-max-o postToCallbackDelayed(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;J)V
    .registers 16
    .param p1, "caller"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "data"    # Landroid/os/Bundle;
    .param p5, "delay"    # J

    .line 790
    iget-object v1, p0, Landroid/media/session/MediaSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 791
    :try_start_3
    iget-object v0, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    if-eqz v0, :cond_12

    .line 792
    iget-object v2, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_19

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-wide v7, p5

    .end local p1    # "caller":Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .end local p2    # "what":I
    .end local p3    # "obj":Ljava/lang/Object;
    .end local p4    # "data":Landroid/os/Bundle;
    .end local p5    # "delay":J
    .local v3, "caller":Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .local v4, "what":I
    .local v5, "obj":Ljava/lang/Object;
    .local v6, "data":Landroid/os/Bundle;
    .local v7, "delay":J
    :try_start_e
    invoke-virtual/range {v2 .. v8}, Landroid/media/session/MediaSession$CallbackMessageHandler;->post(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;J)V

    goto :goto_17

    .line 791
    .end local v3    # "caller":Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .end local v4    # "what":I
    .end local v5    # "obj":Ljava/lang/Object;
    .end local v6    # "data":Landroid/os/Bundle;
    .end local v7    # "delay":J
    .restart local p1    # "caller":Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .restart local p2    # "what":I
    .restart local p3    # "obj":Ljava/lang/Object;
    .restart local p4    # "data":Landroid/os/Bundle;
    .restart local p5    # "delay":J
    :cond_12
    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-wide v7, p5

    .line 794
    .end local p1    # "caller":Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .end local p2    # "what":I
    .end local p3    # "obj":Ljava/lang/Object;
    .end local p4    # "data":Landroid/os/Bundle;
    .end local p5    # "delay":J
    .restart local v3    # "caller":Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .restart local v4    # "what":I
    .restart local v5    # "obj":Ljava/lang/Object;
    .restart local v6    # "data":Landroid/os/Bundle;
    .restart local v7    # "delay":J
    :goto_17
    monitor-exit v1

    .line 795
    return-void

    .line 794
    .end local v3    # "caller":Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .end local v4    # "what":I
    .end local v5    # "obj":Ljava/lang/Object;
    .end local v6    # "data":Landroid/os/Bundle;
    .end local v7    # "delay":J
    .restart local p1    # "caller":Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .restart local p2    # "what":I
    .restart local p3    # "obj":Ljava/lang/Object;
    .restart local p4    # "data":Landroid/os/Bundle;
    .restart local p5    # "delay":J
    :catchall_19
    move-exception v0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-wide v7, p5

    move-object p1, v0

    .end local p1    # "caller":Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .end local p2    # "what":I
    .end local p3    # "obj":Ljava/lang/Object;
    .end local p4    # "data":Landroid/os/Bundle;
    .end local p5    # "delay":J
    .restart local v3    # "caller":Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .restart local v4    # "what":I
    .restart local v5    # "obj":Ljava/lang/Object;
    .restart local v6    # "data":Landroid/os/Bundle;
    .restart local v7    # "delay":J
    :goto_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_e .. :try_end_21} :catchall_22

    throw p1

    :catchall_22
    move-exception v0

    move-object p1, v0

    goto :goto_20
.end method

.method public whitelist release()V
    .registers 4

    .line 453
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;)V

    .line 455
    :try_start_4
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v0}, Landroid/media/session/ISession;->destroySession()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 458
    goto :goto_12

    .line 456
    :catch_a
    move-exception v0

    .line 457
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSession"

    const-string v2, "Error releasing session: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 459
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method public whitelist sendSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 437
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 441
    :try_start_6
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v0, p1, p2}, Landroid/media/session/ISession;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    .line 444
    goto :goto_14

    .line 442
    :catch_c
    move-exception v0

    .line 443
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSession"

    const-string v2, "Error sending event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 445
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    return-void

    .line 438
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setActive(Z)V
    .registers 5
    .param p1, "active"    # Z

    .line 408
    iget-boolean v0, p0, Landroid/media/session/MediaSession;->mActive:Z

    if-ne v0, p1, :cond_5

    .line 409
    return-void

    .line 412
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v0, p1}, Landroid/media/session/ISession;->setActive(Z)V

    .line 413
    iput-boolean p1, p0, Landroid/media/session/MediaSession;->mActive:Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_c} :catch_d

    .line 416
    goto :goto_15

    .line 414
    :catch_d
    move-exception v0

    .line 415
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSession"

    const-string v2, "Failure in setActive."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 417
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_15
    return-void
.end method

.method public whitelist setCallback(Landroid/media/session/MediaSession$Callback;)V
    .registers 3
    .param p1, "callback"    # Landroid/media/session/MediaSession$Callback;

    .line 224
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;Landroid/os/Handler;)V

    .line 225
    return-void
.end method

.method public whitelist setCallback(Landroid/media/session/MediaSession$Callback;Landroid/os/Handler;)V
    .registers 6
    .param p1, "callback"    # Landroid/media/session/MediaSession$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 237
    iget-object v0, p0, Landroid/media/session/MediaSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 238
    :try_start_3
    iget-object v1, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    .line 240
    iget-object v1, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    invoke-static {v1}, Landroid/media/session/MediaSession$CallbackMessageHandler;->-$$Nest$fgetmCallback(Landroid/media/session/MediaSession$CallbackMessageHandler;)Landroid/media/session/MediaSession$Callback;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/media/session/MediaSession$Callback;->-$$Nest$fputmSession(Landroid/media/session/MediaSession$Callback;Landroid/media/session/MediaSession;)V

    .line 241
    iget-object v1, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSession$CallbackMessageHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 243
    :cond_16
    if-nez p1, :cond_1c

    .line 244
    iput-object v2, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    .line 245
    monitor-exit v0

    return-void

    .line 247
    :cond_1c
    if-eqz p2, :cond_23

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    goto :goto_27

    :cond_23
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    .line 248
    .local v1, "looper":Landroid/os/Looper;
    :goto_27
    invoke-static {p1, p0}, Landroid/media/session/MediaSession$Callback;->-$$Nest$fputmSession(Landroid/media/session/MediaSession$Callback;Landroid/media/session/MediaSession;)V

    .line 249
    new-instance v2, Landroid/media/session/MediaSession$CallbackMessageHandler;

    invoke-direct {v2, p0, v1, p1}, Landroid/media/session/MediaSession$CallbackMessageHandler;-><init>(Landroid/media/session/MediaSession;Landroid/os/Looper;Landroid/media/session/MediaSession$Callback;)V

    .line 250
    .local v2, "msgHandler":Landroid/media/session/MediaSession$CallbackMessageHandler;
    iput-object v2, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    .line 251
    .end local v1    # "looper":Landroid/os/Looper;
    .end local v2    # "msgHandler":Landroid/media/session/MediaSession$CallbackMessageHandler;
    monitor-exit v0

    .line 252
    return-void

    .line 251
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw v1
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 597
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v0, p1}, Landroid/media/session/ISession;->setExtras(Landroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 600
    goto :goto_c

    .line 598
    :catch_6
    move-exception v0

    .line 599
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Dead object in setExtras."

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 601
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public whitelist setFlags(I)V
    .registers 5
    .param p1, "flags"    # I

    .line 337
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v0, p1}, Landroid/media/session/ISession;->setFlags(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 340
    goto :goto_e

    .line 338
    :catch_6
    move-exception v0

    .line 339
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSession"

    const-string v2, "Failure in setFlags."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 341
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist setMediaButtonBroadcastReceiver(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "broadcastReceiver"    # Landroid/content/ComponentName;

    .line 317
    if-eqz p1, :cond_1b

    .line 318
    :try_start_2
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaSession;->mContext:Landroid/content/Context;

    .line 319
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 318
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_1b

    .line 320
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "broadcastReceiver should belong to the same package as the context given when creating MediaSession."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/session/MediaSession;
    .end local p1    # "broadcastReceiver":Landroid/content/ComponentName;
    throw v0

    .line 324
    .restart local p0    # "this":Landroid/media/session/MediaSession;
    .restart local p1    # "broadcastReceiver":Landroid/content/ComponentName;
    :cond_1b
    :goto_1b
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v0, p1}, Landroid/media/session/ISession;->setMediaButtonBroadcastReceiver(Landroid/content/ComponentName;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_20} :catch_21

    .line 327
    goto :goto_25

    .line 325
    :catch_21
    move-exception v0

    .line 326
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 328
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_25
    return-void
.end method

.method public whitelist setMediaButtonReceiver(Landroid/app/PendingIntent;)V
    .registers 3
    .param p1, "mbr"    # Landroid/app/PendingIntent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 294
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v0, p1}, Landroid/media/session/ISession;->setMediaButtonReceiver(Landroid/app/PendingIntent;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 297
    goto :goto_a

    .line 295
    :catch_6
    move-exception v0

    .line 296
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 298
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist setMetadata(Landroid/media/MediaMetadata;)V
    .registers 10
    .param p1, "metadata"    # Landroid/media/MediaMetadata;

    .line 506
    const-wide/16 v0, -0x1

    .line 507
    .local v0, "duration":J
    const/4 v2, 0x0

    .line 508
    .local v2, "fields":I
    const/4 v3, 0x0

    .line 509
    .local v3, "description":Landroid/media/MediaDescription;
    if-eqz p1, :cond_29

    .line 510
    new-instance v4, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v4, p1}, Landroid/media/MediaMetadata$Builder;-><init>(Landroid/media/MediaMetadata;)V

    iget v5, p0, Landroid/media/session/MediaSession;->mMaxBitmapSize:I

    .line 511
    invoke-virtual {v4, v5}, Landroid/media/MediaMetadata$Builder;->setBitmapDimensionLimit(I)Landroid/media/MediaMetadata$Builder;

    move-result-object v4

    .line 512
    invoke-virtual {v4}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object p1

    .line 513
    const-string v4, "android.media.metadata.DURATION"

    invoke-virtual {p1, v4}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 514
    invoke-virtual {p1, v4}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 516
    :cond_21
    invoke-virtual {p1}, Landroid/media/MediaMetadata;->size()I

    move-result v2

    .line 517
    invoke-virtual {p1}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    move-result-object v3

    .line 519
    :cond_29
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", description="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 522
    .local v4, "metadataDescription":Ljava/lang/String;
    :try_start_46
    iget-object v5, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v5, p1, v0, v1, v4}, Landroid/media/session/ISession;->setMetadata(Landroid/media/MediaMetadata;JLjava/lang/String;)V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_4b} :catch_4c

    .line 525
    goto :goto_54

    .line 523
    :catch_4c
    move-exception v5

    .line 524
    .local v5, "e":Landroid/os/RemoteException;
    const-string v6, "MediaSession"

    const-string v7, "Dead object in setPlaybackState."

    invoke-static {v6, v7, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 526
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_54
    return-void
.end method

.method public whitelist setPlaybackState(Landroid/media/session/PlaybackState;)V
    .registers 5
    .param p1, "state"    # Landroid/media/session/PlaybackState;

    .line 489
    iput-object p1, p0, Landroid/media/session/MediaSession;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 491
    :try_start_2
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v0, p1}, Landroid/media/session/ISession;->setPlaybackState(Landroid/media/session/PlaybackState;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_8

    .line 494
    goto :goto_10

    .line 492
    :catch_8
    move-exception v0

    .line 493
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSession"

    const-string v2, "Dead object in setPlaybackState."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 495
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method public whitelist setPlaybackToLocal(Landroid/media/AudioAttributes;)V
    .registers 5
    .param p1, "attributes"    # Landroid/media/AudioAttributes;

    .line 355
    if-eqz p1, :cond_11

    .line 359
    :try_start_2
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v0, p1}, Landroid/media/session/ISession;->setPlaybackToLocal(Landroid/media/AudioAttributes;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_8

    .line 362
    goto :goto_10

    .line 360
    :catch_8
    move-exception v0

    .line 361
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSession"

    const-string v2, "Failure in setPlaybackToLocal."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 363
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void

    .line 356
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attributes cannot be null for local playback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPlaybackToRemote(Landroid/media/VolumeProvider;)V
    .registers 6
    .param p1, "volumeProvider"    # Landroid/media/VolumeProvider;

    .line 377
    if-eqz p1, :cond_37

    .line 380
    iget-object v0, p0, Landroid/media/session/MediaSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 381
    :try_start_5
    iput-object p1, p0, Landroid/media/session/MediaSession;->mVolumeProvider:Landroid/media/VolumeProvider;

    .line 382
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_34

    .line 383
    new-instance v0, Landroid/media/session/MediaSession$1;

    invoke-direct {v0, p0}, Landroid/media/session/MediaSession$1;-><init>(Landroid/media/session/MediaSession;)V

    invoke-virtual {p1, v0}, Landroid/media/VolumeProvider;->setCallback(Landroid/media/VolumeProvider$Callback;)V

    .line 391
    :try_start_10
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-virtual {p1}, Landroid/media/VolumeProvider;->getVolumeControl()I

    move-result v1

    .line 392
    invoke-virtual {p1}, Landroid/media/VolumeProvider;->getMaxVolume()I

    move-result v2

    invoke-virtual {p1}, Landroid/media/VolumeProvider;->getVolumeControlId()Ljava/lang/String;

    move-result-object v3

    .line 391
    invoke-interface {v0, v1, v2, v3}, Landroid/media/session/ISession;->setPlaybackToRemote(IILjava/lang/String;)V

    .line 393
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-virtual {p1}, Landroid/media/VolumeProvider;->getCurrentVolume()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/media/session/ISession;->setCurrentVolume(I)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_2a} :catch_2b

    .line 396
    goto :goto_33

    .line 394
    :catch_2b
    move-exception v0

    .line 395
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSession"

    const-string v2, "Failure in setPlaybackToRemote."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 397
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_33
    return-void

    .line 382
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v1

    .line 378
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "volumeProvider may not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setQueue(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;)V"
        }
    .end annotation

    .line 541
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    if-nez p1, :cond_8

    .line 542
    :try_start_2
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v0}, Landroid/media/session/ISession;->resetQueue()V

    goto :goto_11

    .line 544
    :cond_8
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v0}, Landroid/media/session/ISession;->getBinderForSetQueue()Landroid/os/IBinder;

    move-result-object v0

    .line 545
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0, p1}, Landroid/media/session/ParcelableListBinder;->send(Landroid/os/IBinder;Ljava/util/List;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_11} :catch_12

    .line 549
    .end local v0    # "binder":Landroid/os/IBinder;
    :goto_11
    goto :goto_18

    .line 547
    :catch_12
    move-exception v0

    .line 548
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Dead object in setQueue."

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 550
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_18
    return-void
.end method

.method public whitelist setQueueTitle(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 561
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v0, p1}, Landroid/media/session/ISession;->setQueueTitle(Ljava/lang/CharSequence;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 564
    goto :goto_c

    .line 562
    :catch_6
    move-exception v0

    .line 563
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Dead object in setQueueTitle."

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 565
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public whitelist setRatingType(I)V
    .registers 5
    .param p1, "type"    # I

    .line 582
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v0, p1}, Landroid/media/session/ISession;->setRatingType(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 585
    goto :goto_e

    .line 583
    :catch_6
    move-exception v0

    .line 584
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSession"

    const-string v2, "Error in setRatingType."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 586
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist setSessionActivity(Landroid/app/PendingIntent;)V
    .registers 5
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .line 263
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v0, p1}, Landroid/media/session/ISession;->setLaunchPendingIntent(Landroid/app/PendingIntent;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 266
    goto :goto_e

    .line 264
    :catch_6
    move-exception v0

    .line 265
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSession"

    const-string v2, "Failure in setLaunchPendingIntent."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 267
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method
