.class Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;
.super Ljava/lang/Object;
.source "MediaSessionCompat.java"

# interfaces
.implements Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaSessionImplBase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;,
        Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$Command;,
        Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;,
        Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$1;
    }
.end annotation


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private mCallback:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

.field private final mComponentName:Landroid/content/ComponentName;

.field private final mContext:Landroid/content/Context;

.field private final mControllerCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/support/v4/media/session/IMediaControllerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mDestroyed:Z

.field private mExtras:Landroid/os/Bundle;

.field private mFlags:I

.field private final mHandler:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;

.field private mIsActive:Z

.field private mIsMbrRegistered:Z

.field private mIsRccRegistered:Z

.field private mLocalStream:I

.field private final mLock:Ljava/lang/Object;

.field private final mMediaButtonEventReceiver:Landroid/app/PendingIntent;

.field private mMetadata:Landroid/support/v4/media/MediaMetadataCompat;

.field private final mPackageName:Ljava/lang/String;

.field private mQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private mQueueTitle:Ljava/lang/CharSequence;

.field private mRatingType:I

.field private final mRccObj:Ljava/lang/Object;

.field private mSessionActivity:Landroid/app/PendingIntent;

.field private mState:Landroid/support/v4/media/session/PlaybackStateCompat;

.field private final mStub:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;

.field private final mTag:Ljava/lang/String;

.field private final mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field private mVolumeCallback:Landroid/support/v4/media/VolumeProviderCompat$Callback;

.field private mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

.field private mVolumeType:I


# direct methods
.method static synthetic -get0(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/media/AudioManager;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mAudioManager:Landroid/media/AudioManager;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mCallback:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    #@2
    return-object v0
.end method

.method static synthetic -get10(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mPackageName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get11(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mQueue:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -get12(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Ljava/lang/CharSequence;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mQueueTitle:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method static synthetic -get13(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRatingType:I

    #@2
    return v0
.end method

.method static synthetic -get14(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/app/PendingIntent;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mSessionActivity:Landroid/app/PendingIntent;

    #@2
    return-object v0
.end method

.method static synthetic -get15(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    #@2
    return-object v0
.end method

.method static synthetic -get16(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mTag:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get17(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/VolumeProviderCompat;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

    #@2
    return-object v0
.end method

.method static synthetic -get18(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeType:I

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/os/RemoteCallbackList;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mDestroyed:Z

    #@2
    return v0
.end method

.method static synthetic -get4(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/os/Bundle;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mExtras:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mFlags:I

    #@2
    return v0
.end method

.method static synthetic -get6(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mHandler:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLocalStream:I

    #@2
    return v0
.end method

.method static synthetic -get8(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/MediaMetadataCompat;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMetadata:Landroid/support/v4/media/MediaMetadataCompat;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->getStateWithUpdatedPosition()Landroid/support/v4/media/session/PlaybackStateCompat;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;II)V
    .locals 0
    .param p1, "direction"    # I
    .param p2, "flags"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->adjustVolume(II)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;Landroid/support/v4/media/session/ParcelableVolumeInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/support/v4/media/session/ParcelableVolumeInfo;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->sendVolumeInfoChanged(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;II)V
    .locals 0
    .param p1, "value"    # I
    .param p2, "flags"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->setVolumeTo(II)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "mbrComponent"    # Landroid/content/ComponentName;
    .param p4, "mbr"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 1013
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 975
    new-instance v0, Ljava/lang/Object;

    #@7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@a
    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLock:Ljava/lang/Object;

    #@c
    .line 977
    new-instance v0, Landroid/os/RemoteCallbackList;

    #@e
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    #@11
    .line 976
    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    #@13
    .line 979
    iput-boolean v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mDestroyed:Z

    #@15
    .line 980
    iput-boolean v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsActive:Z

    #@17
    .line 981
    iput-boolean v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsRccRegistered:Z

    #@19
    .line 982
    iput-boolean v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsMbrRegistered:Z

    #@1b
    .line 1000
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$1;

    #@1d
    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$1;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)V

    #@20
    .line 999
    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeCallback:Landroid/support/v4/media/VolumeProviderCompat$Callback;

    #@22
    .line 1015
    if-nez p3, :cond_0

    #@24
    .line 1016
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@26
    .line 1017
    const-string/jumbo v1, "MediaButtonReceiver component may not be null."

    #@29
    .line 1016
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v0

    #@2d
    .line 1019
    :cond_0
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mContext:Landroid/content/Context;

    #@2f
    .line 1020
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mPackageName:Ljava/lang/String;

    #@35
    .line 1021
    const-string/jumbo v0, "audio"

    #@38
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@3b
    move-result-object v0

    #@3c
    check-cast v0, Landroid/media/AudioManager;

    #@3e
    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mAudioManager:Landroid/media/AudioManager;

    #@40
    .line 1022
    iput-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mTag:Ljava/lang/String;

    #@42
    .line 1023
    iput-object p3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mComponentName:Landroid/content/ComponentName;

    #@44
    .line 1024
    iput-object p4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMediaButtonEventReceiver:Landroid/app/PendingIntent;

    #@46
    .line 1025
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;

    #@48
    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)V

    #@4b
    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mStub:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;

    #@4d
    .line 1026
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    #@4f
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mStub:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;

    #@51
    invoke-direct {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;)V

    #@54
    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    #@56
    .line 1027
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;

    #@58
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@5b
    move-result-object v1

    #@5c
    invoke-direct {v0, p0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;Landroid/os/Looper;)V

    #@5f
    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mHandler:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;

    #@61
    .line 1029
    iput v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRatingType:I

    #@63
    .line 1030
    const/4 v0, 0x1

    #@64
    iput v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeType:I

    #@66
    .line 1031
    const/4 v0, 0x3

    #@67
    iput v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLocalStream:I

    #@69
    .line 1032
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@6b
    const/16 v1, 0xe

    #@6d
    if-lt v0, v1, :cond_1

    #@6f
    .line 1033
    invoke-static {p4}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->createRemoteControlClient(Landroid/app/PendingIntent;)Ljava/lang/Object;

    #@72
    move-result-object v0

    #@73
    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    #@75
    .line 1014
    :goto_0
    return-void

    #@76
    .line 1035
    :cond_1
    iput-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    #@78
    goto :goto_0
.end method

.method private adjustVolume(II)V
    .locals 2
    .param p1, "direction"    # I
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 1371
    iget v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeType:I

    #@2
    const/4 v1, 0x2

    #@3
    if-ne v0, v1, :cond_1

    #@5
    .line 1372
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1373
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

    #@b
    invoke-virtual {v0, p1}, Landroid/support/v4/media/VolumeProviderCompat;->onAdjustVolume(I)V

    #@e
    .line 1370
    :cond_0
    :goto_0
    return-void

    #@f
    .line 1376
    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mAudioManager:Landroid/media/AudioManager;

    #@11
    iget v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLocalStream:I

    #@13
    invoke-virtual {v0, p1, v1, p2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    #@16
    goto :goto_0
.end method

.method private getStateWithUpdatedPosition()Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 20

    #@0
    .prologue
    .line 1392
    const-wide/16 v10, -0x1

    #@2
    .line 1393
    .local v10, "duration":J
    move-object/from16 v0, p0

    #@4
    iget-object v6, v0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLock:Ljava/lang/Object;

    #@6
    monitor-enter v6

    #@7
    .line 1394
    :try_start_0
    move-object/from16 v0, p0

    #@9
    iget-object v12, v0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    #@b
    .line 1395
    .local v12, "state":Landroid/support/v4/media/session/PlaybackStateCompat;
    move-object/from16 v0, p0

    #@d
    iget-object v3, v0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMetadata:Landroid/support/v4/media/MediaMetadataCompat;

    #@f
    if-eqz v3, :cond_0

    #@11
    .line 1396
    move-object/from16 v0, p0

    #@13
    iget-object v3, v0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMetadata:Landroid/support/v4/media/MediaMetadataCompat;

    #@15
    const-string/jumbo v13, "android.media.metadata.DURATION"

    #@18
    invoke-virtual {v3, v13}, Landroid/support/v4/media/MediaMetadataCompat;->containsKey(Ljava/lang/String;)Z

    #@1b
    move-result v3

    #@1c
    .line 1395
    if-eqz v3, :cond_0

    #@1e
    .line 1397
    move-object/from16 v0, p0

    #@20
    iget-object v3, v0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMetadata:Landroid/support/v4/media/MediaMetadataCompat;

    #@22
    const-string/jumbo v13, "android.media.metadata.DURATION"

    #@25
    invoke-virtual {v3, v13}, Landroid/support/v4/media/MediaMetadataCompat;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    move-result-wide v10

    #@29
    :cond_0
    monitor-exit v6

    #@2a
    .line 1401
    const/4 v9, 0x0

    #@2b
    .line 1402
    .local v9, "result":Landroid/support/v4/media/session/PlaybackStateCompat;
    if-eqz v12, :cond_3

    #@2d
    .line 1403
    invoke-virtual {v12}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    #@30
    move-result v3

    #@31
    const/4 v6, 0x3

    #@32
    if-eq v3, v6, :cond_1

    #@34
    .line 1404
    invoke-virtual {v12}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    #@37
    move-result v3

    #@38
    const/4 v6, 0x4

    #@39
    if-ne v3, v6, :cond_4

    #@3b
    .line 1406
    :cond_1
    :goto_0
    invoke-virtual {v12}, Landroid/support/v4/media/session/PlaybackStateCompat;->getLastPositionUpdateTime()J

    #@3e
    move-result-wide v14

    #@3f
    .line 1407
    .local v14, "updateTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@42
    move-result-wide v7

    #@43
    .line 1408
    .local v7, "currentTime":J
    const-wide/16 v16, 0x0

    #@45
    cmp-long v3, v14, v16

    #@47
    if-lez v3, :cond_3

    #@49
    .line 1409
    invoke-virtual {v12}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPlaybackSpeed()F

    #@4c
    move-result v3

    #@4d
    .line 1410
    sub-long v16, v7, v14

    #@4f
    move-wide/from16 v0, v16

    #@51
    long-to-float v6, v0

    #@52
    .line 1409
    mul-float/2addr v3, v6

    #@53
    float-to-long v0, v3

    #@54
    move-wide/from16 v16, v0

    #@56
    .line 1410
    invoke-virtual {v12}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPosition()J

    #@59
    move-result-wide v18

    #@5a
    .line 1409
    add-long v4, v16, v18

    #@5c
    .line 1411
    .local v4, "position":J
    const-wide/16 v16, 0x0

    #@5e
    cmp-long v3, v10, v16

    #@60
    if-ltz v3, :cond_5

    #@62
    cmp-long v3, v4, v10

    #@64
    if-lez v3, :cond_5

    #@66
    .line 1412
    move-wide v4, v10

    #@67
    .line 1416
    :cond_2
    :goto_1
    new-instance v2, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    #@69
    invoke-direct {v2, v12}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    #@6c
    .line 1418
    .local v2, "builder":Landroid/support/v4/media/session/PlaybackStateCompat$Builder;
    invoke-virtual {v12}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    #@6f
    move-result v3

    #@70
    invoke-virtual {v12}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPlaybackSpeed()F

    #@73
    move-result v6

    #@74
    invoke-virtual/range {v2 .. v8}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJFJ)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    #@77
    .line 1420
    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    #@7a
    move-result-object v9

    #@7b
    .line 1424
    .end local v2    # "builder":Landroid/support/v4/media/session/PlaybackStateCompat$Builder;
    .end local v4    # "position":J
    .end local v7    # "currentTime":J
    .end local v9    # "result":Landroid/support/v4/media/session/PlaybackStateCompat;
    .end local v14    # "updateTime":J
    :cond_3
    if-nez v9, :cond_6

    #@7d
    .end local v12    # "state":Landroid/support/v4/media/session/PlaybackStateCompat;
    :goto_2
    return-object v12

    #@7e
    .line 1393
    :catchall_0
    move-exception v3

    #@7f
    monitor-exit v6

    #@80
    throw v3

    #@81
    .line 1405
    .restart local v9    # "result":Landroid/support/v4/media/session/PlaybackStateCompat;
    .restart local v12    # "state":Landroid/support/v4/media/session/PlaybackStateCompat;
    :cond_4
    invoke-virtual {v12}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    #@84
    move-result v3

    #@85
    const/4 v6, 0x5

    #@86
    if-ne v3, v6, :cond_3

    #@88
    goto :goto_0

    #@89
    .line 1413
    .restart local v4    # "position":J
    .restart local v7    # "currentTime":J
    .restart local v14    # "updateTime":J
    :cond_5
    const-wide/16 v16, 0x0

    #@8b
    cmp-long v3, v4, v16

    #@8d
    if-gez v3, :cond_2

    #@8f
    .line 1414
    const-wide/16 v4, 0x0

    #@91
    goto :goto_1

    #@92
    .end local v4    # "position":J
    .end local v7    # "currentTime":J
    .end local v9    # "result":Landroid/support/v4/media/session/PlaybackStateCompat;
    .end local v14    # "updateTime":J
    :cond_6
    move-object v12, v9

    #@93
    .line 1424
    goto :goto_2
.end method

.method private sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1453
    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    #@2
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@5
    move-result v3

    #@6
    .line 1454
    .local v3, "size":I
    add-int/lit8 v2, v3, -0x1

    #@8
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    #@a
    .line 1455
    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    #@c
    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/support/v4/media/session/IMediaControllerCallback;

    #@12
    .line 1457
    .local v0, "cb":Landroid/support/v4/media/session/IMediaControllerCallback;
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/IMediaControllerCallback;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 1454
    :goto_1
    add-int/lit8 v2, v2, -0x1

    #@17
    goto :goto_0

    #@18
    .line 1458
    :catch_0
    move-exception v1

    #@19
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_1

    #@1a
    .line 1461
    .end local v0    # "cb":Landroid/support/v4/media/session/IMediaControllerCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    #@1c
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@1f
    .line 1452
    return-void
.end method

.method private sendMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 5
    .param p1, "metadata"    # Landroid/support/v4/media/MediaMetadataCompat;

    #@0
    .prologue
    .line 1477
    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    #@2
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@5
    move-result v3

    #@6
    .line 1478
    .local v3, "size":I
    add-int/lit8 v2, v3, -0x1

    #@8
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    #@a
    .line 1479
    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    #@c
    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/support/v4/media/session/IMediaControllerCallback;

    #@12
    .line 1481
    .local v0, "cb":Landroid/support/v4/media/session/IMediaControllerCallback;
    :try_start_0
    invoke-interface {v0, p1}, Landroid/support/v4/media/session/IMediaControllerCallback;->onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 1478
    :goto_1
    add-int/lit8 v2, v2, -0x1

    #@17
    goto :goto_0

    #@18
    .line 1482
    :catch_0
    move-exception v1

    #@19
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_1

    #@1a
    .line 1485
    .end local v0    # "cb":Landroid/support/v4/media/session/IMediaControllerCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    #@1c
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@1f
    .line 1476
    return-void
.end method

.method private sendQueue(Ljava/util/List;)V
    .locals 5
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
    .line 1489
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;>;"
    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    #@2
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@5
    move-result v3

    #@6
    .line 1490
    .local v3, "size":I
    add-int/lit8 v2, v3, -0x1

    #@8
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    #@a
    .line 1491
    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    #@c
    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/support/v4/media/session/IMediaControllerCallback;

    #@12
    .line 1493
    .local v0, "cb":Landroid/support/v4/media/session/IMediaControllerCallback;
    :try_start_0
    invoke-interface {v0, p1}, Landroid/support/v4/media/session/IMediaControllerCallback;->onQueueChanged(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 1490
    :goto_1
    add-int/lit8 v2, v2, -0x1

    #@17
    goto :goto_0

    #@18
    .line 1494
    :catch_0
    move-exception v1

    #@19
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_1

    #@1a
    .line 1497
    .end local v0    # "cb":Landroid/support/v4/media/session/IMediaControllerCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    #@1c
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@1f
    .line 1488
    return-void
.end method

.method private sendQueueTitle(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "queueTitle"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 1501
    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    #@2
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@5
    move-result v3

    #@6
    .line 1502
    .local v3, "size":I
    add-int/lit8 v2, v3, -0x1

    #@8
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    #@a
    .line 1503
    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    #@c
    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/support/v4/media/session/IMediaControllerCallback;

    #@12
    .line 1505
    .local v0, "cb":Landroid/support/v4/media/session/IMediaControllerCallback;
    :try_start_0
    invoke-interface {v0, p1}, Landroid/support/v4/media/session/IMediaControllerCallback;->onQueueTitleChanged(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 1502
    :goto_1
    add-int/lit8 v2, v2, -0x1

    #@17
    goto :goto_0

    #@18
    .line 1506
    :catch_0
    move-exception v1

    #@19
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_1

    #@1a
    .line 1509
    .end local v0    # "cb":Landroid/support/v4/media/session/IMediaControllerCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    #@1c
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@1f
    .line 1500
    return-void
.end method

.method private sendSessionDestroyed()V
    .locals 5

    #@0
    .prologue
    .line 1440
    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    #@2
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@5
    move-result v3

    #@6
    .line 1441
    .local v3, "size":I
    add-int/lit8 v2, v3, -0x1

    #@8
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    #@a
    .line 1442
    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    #@c
    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/support/v4/media/session/IMediaControllerCallback;

    #@12
    .line 1444
    .local v0, "cb":Landroid/support/v4/media/session/IMediaControllerCallback;
    :try_start_0
    invoke-interface {v0}, Landroid/support/v4/media/session/IMediaControllerCallback;->onSessionDestroyed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 1441
    :goto_1
    add-int/lit8 v2, v2, -0x1

    #@17
    goto :goto_0

    #@18
    .line 1445
    :catch_0
    move-exception v1

    #@19
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_1

    #@1a
    .line 1448
    .end local v0    # "cb":Landroid/support/v4/media/session/IMediaControllerCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    #@1c
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@1f
    .line 1449
    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    #@21
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->kill()V

    #@24
    .line 1439
    return-void
.end method

.method private sendState(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 5
    .param p1, "state"    # Landroid/support/v4/media/session/PlaybackStateCompat;

    #@0
    .prologue
    .line 1465
    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    #@2
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@5
    move-result v3

    #@6
    .line 1466
    .local v3, "size":I
    add-int/lit8 v2, v3, -0x1

    #@8
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    #@a
    .line 1467
    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    #@c
    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/support/v4/media/session/IMediaControllerCallback;

    #@12
    .line 1469
    .local v0, "cb":Landroid/support/v4/media/session/IMediaControllerCallback;
    :try_start_0
    invoke-interface {v0, p1}, Landroid/support/v4/media/session/IMediaControllerCallback;->onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 1466
    :goto_1
    add-int/lit8 v2, v2, -0x1

    #@17
    goto :goto_0

    #@18
    .line 1470
    :catch_0
    move-exception v1

    #@19
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_1

    #@1a
    .line 1473
    .end local v0    # "cb":Landroid/support/v4/media/session/IMediaControllerCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    #@1c
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@1f
    .line 1464
    return-void
.end method

.method private sendVolumeInfoChanged(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/support/v4/media/session/ParcelableVolumeInfo;

    #@0
    .prologue
    .line 1428
    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    #@2
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@5
    move-result v3

    #@6
    .line 1429
    .local v3, "size":I
    add-int/lit8 v2, v3, -0x1

    #@8
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    #@a
    .line 1430
    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    #@c
    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/support/v4/media/session/IMediaControllerCallback;

    #@12
    .line 1432
    .local v0, "cb":Landroid/support/v4/media/session/IMediaControllerCallback;
    :try_start_0
    invoke-interface {v0, p1}, Landroid/support/v4/media/session/IMediaControllerCallback;->onVolumeInfoChanged(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 1429
    :goto_1
    add-int/lit8 v2, v2, -0x1

    #@17
    goto :goto_0

    #@18
    .line 1433
    :catch_0
    move-exception v1

    #@19
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_1

    #@1a
    .line 1436
    .end local v0    # "cb":Landroid/support/v4/media/session/IMediaControllerCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    #@1c
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@1f
    .line 1427
    return-void
.end method

.method private setVolumeTo(II)V
    .locals 2
    .param p1, "value"    # I
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 1381
    iget v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeType:I

    #@2
    const/4 v1, 0x2

    #@3
    if-ne v0, v1, :cond_1

    #@5
    .line 1382
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1383
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

    #@b
    invoke-virtual {v0, p1}, Landroid/support/v4/media/VolumeProviderCompat;->onSetVolumeTo(I)V

    #@e
    .line 1380
    :cond_0
    :goto_0
    return-void

    #@f
    .line 1386
    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mAudioManager:Landroid/media/AudioManager;

    #@11
    iget v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLocalStream:I

    #@13
    invoke-virtual {v0, v1, p1, p2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    #@16
    goto :goto_0
.end method

.method private update()Z
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/16 v4, 0x12

    #@3
    const/4 v3, 0x0

    #@4
    .line 1304
    const/4 v0, 0x0

    #@5
    .line 1305
    .local v0, "registeredRcc":Z
    iget-boolean v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsActive:Z

    #@7
    if-eqz v1, :cond_6

    #@9
    .line 1308
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@b
    const/16 v2, 0x8

    #@d
    if-lt v1, v2, :cond_0

    #@f
    .line 1309
    iget-boolean v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsMbrRegistered:Z

    #@11
    if-nez v1, :cond_3

    #@13
    iget v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mFlags:I

    #@15
    and-int/lit8 v1, v1, 0x1

    #@17
    if-eqz v1, :cond_3

    #@19
    .line 1310
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@1b
    if-lt v1, v4, :cond_2

    #@1d
    .line 1311
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mContext:Landroid/content/Context;

    #@1f
    .line 1312
    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMediaButtonEventReceiver:Landroid/app/PendingIntent;

    #@21
    .line 1311
    invoke-static {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompatApi18;->registerMediaButtonEventReceiver(Landroid/content/Context;Landroid/app/PendingIntent;)V

    #@24
    .line 1317
    :goto_0
    iput-boolean v5, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsMbrRegistered:Z

    #@26
    .line 1331
    :cond_0
    :goto_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@28
    const/16 v2, 0xe

    #@2a
    if-lt v1, v2, :cond_1

    #@2c
    .line 1332
    iget-boolean v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsRccRegistered:Z

    #@2e
    if-nez v1, :cond_5

    #@30
    iget v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mFlags:I

    #@32
    and-int/lit8 v1, v1, 0x2

    #@34
    if-eqz v1, :cond_5

    #@36
    .line 1333
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mContext:Landroid/content/Context;

    #@38
    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    #@3a
    invoke-static {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->registerRemoteControlClient(Landroid/content/Context;Ljava/lang/Object;)V

    #@3d
    .line 1334
    iput-boolean v5, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsRccRegistered:Z

    #@3f
    .line 1335
    const/4 v0, 0x1

    #@40
    .line 1367
    :cond_1
    :goto_2
    return v0

    #@41
    .line 1314
    :cond_2
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mContext:Landroid/content/Context;

    #@43
    .line 1315
    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mComponentName:Landroid/content/ComponentName;

    #@45
    .line 1314
    invoke-static {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompatApi8;->registerMediaButtonEventReceiver(Landroid/content/Context;Landroid/content/ComponentName;)V

    #@48
    goto :goto_0

    #@49
    .line 1318
    :cond_3
    iget-boolean v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsMbrRegistered:Z

    #@4b
    if-eqz v1, :cond_0

    #@4d
    iget v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mFlags:I

    #@4f
    and-int/lit8 v1, v1, 0x1

    #@51
    if-nez v1, :cond_0

    #@53
    .line 1319
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@55
    if-lt v1, v4, :cond_4

    #@57
    .line 1320
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mContext:Landroid/content/Context;

    #@59
    .line 1321
    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMediaButtonEventReceiver:Landroid/app/PendingIntent;

    #@5b
    .line 1320
    invoke-static {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompatApi18;->unregisterMediaButtonEventReceiver(Landroid/content/Context;Landroid/app/PendingIntent;)V

    #@5e
    .line 1326
    :goto_3
    iput-boolean v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsMbrRegistered:Z

    #@60
    goto :goto_1

    #@61
    .line 1323
    :cond_4
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mContext:Landroid/content/Context;

    #@63
    .line 1324
    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mComponentName:Landroid/content/ComponentName;

    #@65
    .line 1323
    invoke-static {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompatApi8;->unregisterMediaButtonEventReceiver(Landroid/content/Context;Landroid/content/ComponentName;)V

    #@68
    goto :goto_3

    #@69
    .line 1336
    :cond_5
    iget-boolean v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsRccRegistered:Z

    #@6b
    if-eqz v1, :cond_1

    #@6d
    .line 1337
    iget v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mFlags:I

    #@6f
    and-int/lit8 v1, v1, 0x2

    #@71
    if-nez v1, :cond_1

    #@73
    .line 1341
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    #@75
    invoke-static {v1, v3}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->setState(Ljava/lang/Object;I)V

    #@78
    .line 1342
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mContext:Landroid/content/Context;

    #@7a
    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    #@7c
    invoke-static {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->unregisterRemoteControlClient(Landroid/content/Context;Ljava/lang/Object;)V

    #@7f
    .line 1343
    iput-boolean v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsRccRegistered:Z

    #@81
    goto :goto_2

    #@82
    .line 1348
    :cond_6
    iget-boolean v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsMbrRegistered:Z

    #@84
    if-eqz v1, :cond_7

    #@86
    .line 1349
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@88
    if-lt v1, v4, :cond_8

    #@8a
    .line 1350
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mContext:Landroid/content/Context;

    #@8c
    .line 1351
    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMediaButtonEventReceiver:Landroid/app/PendingIntent;

    #@8e
    .line 1350
    invoke-static {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompatApi18;->unregisterMediaButtonEventReceiver(Landroid/content/Context;Landroid/app/PendingIntent;)V

    #@91
    .line 1356
    :goto_4
    iput-boolean v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsMbrRegistered:Z

    #@93
    .line 1358
    :cond_7
    iget-boolean v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsRccRegistered:Z

    #@95
    if-eqz v1, :cond_1

    #@97
    .line 1362
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    #@99
    invoke-static {v1, v3}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->setState(Ljava/lang/Object;I)V

    #@9c
    .line 1363
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mContext:Landroid/content/Context;

    #@9e
    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    #@a0
    invoke-static {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->unregisterRemoteControlClient(Landroid/content/Context;Ljava/lang/Object;)V

    #@a3
    .line 1364
    iput-boolean v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsRccRegistered:Z

    #@a5
    goto :goto_2

    #@a6
    .line 1353
    :cond_8
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mContext:Landroid/content/Context;

    #@a8
    .line 1354
    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mComponentName:Landroid/content/ComponentName;

    #@aa
    .line 1353
    invoke-static {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompatApi8;->unregisterMediaButtonEventReceiver(Landroid/content/Context;Landroid/content/ComponentName;)V

    #@ad
    goto :goto_4
.end method


# virtual methods
.method public getMediaSession()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 1284
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getRemoteControlClient()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 1289
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1

    #@0
    .prologue
    .line 1200
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    #@2
    return-object v0
.end method

.method public isActive()Z
    .locals 1

    #@0
    .prologue
    .line 1182
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsActive:Z

    #@2
    return v0
.end method

.method public release()V
    .locals 1

    #@0
    .prologue
    .line 1192
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsActive:Z

    #@3
    .line 1193
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mDestroyed:Z

    #@6
    .line 1194
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->update()Z

    #@9
    .line 1195
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->sendSessionDestroyed()V

    #@c
    .line 1191
    return-void
.end method

.method public sendSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1187
    invoke-direct {p0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    #@3
    .line 1186
    return-void
.end method

.method public setActive(Z)V
    .locals 1
    .param p1, "active"    # Z

    #@0
    .prologue
    .line 1170
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsActive:Z

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 1171
    return-void

    #@5
    .line 1173
    :cond_0
    iput-boolean p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsActive:Z

    #@7
    .line 1174
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->update()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 1175
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMetadata:Landroid/support/v4/media/MediaMetadataCompat;

    #@f
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    #@12
    .line 1176
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    #@14
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    #@17
    .line 1169
    :cond_1
    return-void
.end method

.method public setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;Landroid/os/Handler;)V
    .locals 7
    .param p1, "callback"    # Landroid/support/v4/media/session/MediaSessionCompat$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    const/16 v6, 0x13

    #@2
    const/16 v5, 0x12

    #@4
    const/4 v4, 0x0

    #@5
    .line 1041
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mCallback:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    #@7
    if-ne p1, v3, :cond_0

    #@9
    .line 1042
    return-void

    #@a
    .line 1044
    :cond_0
    if-eqz p1, :cond_1

    #@c
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    #@e
    if-ge v3, v5, :cond_4

    #@10
    .line 1047
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    #@12
    if-lt v3, v5, :cond_2

    #@14
    .line 1048
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    #@16
    invoke-static {v3, v4}, Landroid/support/v4/media/session/MediaSessionCompatApi18;->setOnPlaybackPositionUpdateListener(Ljava/lang/Object;Ljava/lang/Object;)V

    #@19
    .line 1050
    :cond_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    #@1b
    if-lt v3, v6, :cond_3

    #@1d
    .line 1051
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    #@1f
    invoke-static {v3, v4}, Landroid/support/v4/media/session/MediaSessionCompatApi19;->setOnMetadataUpdateListener(Ljava/lang/Object;Ljava/lang/Object;)V

    #@22
    .line 1126
    :cond_3
    :goto_0
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mCallback:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    #@24
    .line 1040
    return-void

    #@25
    .line 1054
    :cond_4
    if-nez p2, :cond_5

    #@27
    .line 1055
    new-instance p2, Landroid/os/Handler;

    #@29
    .end local p2    # "handler":Landroid/os/Handler;
    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    #@2c
    .line 1057
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_5
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$2;

    #@2e
    invoke-direct {v0, p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$2;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    #@31
    .line 1113
    .local v0, "cb14":Landroid/support/v4/media/session/MediaSessionCompatApi14$Callback;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    #@33
    if-lt v3, v5, :cond_6

    #@35
    .line 1114
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompatApi18;->createPlaybackPositionUpdateListener(Landroid/support/v4/media/session/MediaSessionCompatApi14$Callback;)Ljava/lang/Object;

    #@38
    move-result-object v2

    #@39
    .line 1116
    .local v2, "onPositionUpdateObj":Ljava/lang/Object;
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    #@3b
    invoke-static {v3, v2}, Landroid/support/v4/media/session/MediaSessionCompatApi18;->setOnPlaybackPositionUpdateListener(Ljava/lang/Object;Ljava/lang/Object;)V

    #@3e
    .line 1119
    .end local v2    # "onPositionUpdateObj":Ljava/lang/Object;
    :cond_6
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    #@40
    if-lt v3, v6, :cond_3

    #@42
    .line 1120
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompatApi19;->createMetadataUpdateListener(Landroid/support/v4/media/session/MediaSessionCompatApi14$Callback;)Ljava/lang/Object;

    #@45
    move-result-object v1

    #@46
    .line 1122
    .local v1, "onMetadataUpdateObj":Ljava/lang/Object;
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    #@48
    invoke-static {v3, v1}, Landroid/support/v4/media/session/MediaSessionCompatApi19;->setOnMetadataUpdateListener(Ljava/lang/Object;Ljava/lang/Object;)V

    #@4b
    goto :goto_0
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1299
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mExtras:Landroid/os/Bundle;

    #@2
    .line 1298
    return-void
.end method

.method public setFlags(I)V
    .locals 2
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 1131
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 1132
    :try_start_0
    iput p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    .line 1134
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->update()Z

    #@9
    .line 1130
    return-void

    #@a
    .line 1131
    :catchall_0
    move-exception v1

    #@b
    monitor-exit v0

    #@c
    throw v1
.end method

.method public setMediaButtonReceiver(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "mbr"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 1266
    return-void
.end method

.method public setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 4
    .param p1, "metadata"    # Landroid/support/v4/media/MediaMetadataCompat;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1240
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 1241
    :try_start_0
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMetadata:Landroid/support/v4/media/MediaMetadataCompat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v1

    #@7
    .line 1243
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->sendMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    #@a
    .line 1244
    iget-boolean v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsActive:Z

    #@c
    if-nez v1, :cond_0

    #@e
    .line 1246
    return-void

    #@f
    .line 1240
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0

    #@12
    .line 1248
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@14
    const/16 v2, 0x13

    #@16
    if-lt v1, v2, :cond_4

    #@18
    .line 1249
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    #@1a
    .line 1250
    if-nez p1, :cond_2

    #@1c
    .line 1251
    :goto_0
    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    #@1e
    if-nez v2, :cond_3

    #@20
    const-wide/16 v2, 0x0

    #@22
    .line 1249
    :goto_1
    invoke-static {v1, v0, v2, v3}, Landroid/support/v4/media/session/MediaSessionCompatApi19;->setMetadata(Ljava/lang/Object;Landroid/os/Bundle;J)V

    #@25
    .line 1239
    :cond_1
    :goto_2
    return-void

    #@26
    .line 1250
    :cond_2
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->getBundle()Landroid/os/Bundle;

    #@29
    move-result-object v0

    #@2a
    goto :goto_0

    #@2b
    .line 1251
    :cond_3
    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    #@2d
    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    #@30
    move-result-wide v2

    #@31
    goto :goto_1

    #@32
    .line 1252
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@34
    const/16 v2, 0xe

    #@36
    if-lt v1, v2, :cond_1

    #@38
    .line 1253
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    #@3a
    .line 1254
    if-nez p1, :cond_5

    #@3c
    .line 1253
    :goto_3
    invoke-static {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->setMetadata(Ljava/lang/Object;Landroid/os/Bundle;)V

    #@3f
    goto :goto_2

    #@40
    .line 1254
    :cond_5
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->getBundle()Landroid/os/Bundle;

    #@43
    move-result-object v0

    #@44
    goto :goto_3
.end method

.method public setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 9
    .param p1, "state"    # Landroid/support/v4/media/session/PlaybackStateCompat;

    #@0
    .prologue
    const/16 v8, 0x12

    #@2
    const/16 v7, 0xe

    #@4
    .line 1205
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLock:Ljava/lang/Object;

    #@6
    monitor-enter v0

    #@7
    .line 1206
    :try_start_0
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v0

    #@a
    .line 1208
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->sendState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    #@d
    .line 1209
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsActive:Z

    #@f
    if-nez v0, :cond_0

    #@11
    .line 1211
    return-void

    #@12
    .line 1205
    :catchall_0
    move-exception v1

    #@13
    monitor-exit v0

    #@14
    throw v1

    #@15
    .line 1213
    :cond_0
    if-nez p1, :cond_2

    #@17
    .line 1214
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@19
    if-lt v0, v7, :cond_1

    #@1b
    .line 1215
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    #@1d
    const/4 v1, 0x0

    #@1e
    invoke-static {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->setState(Ljava/lang/Object;I)V

    #@21
    .line 1216
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    #@23
    const-wide/16 v2, 0x0

    #@25
    invoke-static {v0, v2, v3}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->setTransportControlFlags(Ljava/lang/Object;J)V

    #@28
    .line 1204
    :cond_1
    :goto_0
    return-void

    #@29
    .line 1220
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2b
    if-lt v0, v8, :cond_4

    #@2d
    .line 1221
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    #@2f
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    #@32
    move-result v1

    #@33
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPosition()J

    #@36
    move-result-wide v2

    #@37
    .line 1222
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPlaybackSpeed()F

    #@3a
    move-result v4

    #@3b
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getLastPositionUpdateTime()J

    #@3e
    move-result-wide v5

    #@3f
    .line 1221
    invoke-static/range {v0 .. v6}, Landroid/support/v4/media/session/MediaSessionCompatApi18;->setState(Ljava/lang/Object;IJFJ)V

    #@42
    .line 1228
    :cond_3
    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@44
    const/16 v1, 0x13

    #@46
    if-lt v0, v1, :cond_5

    #@48
    .line 1229
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    #@4a
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    #@4d
    move-result-wide v2

    #@4e
    invoke-static {v0, v2, v3}, Landroid/support/v4/media/session/MediaSessionCompatApi19;->setTransportControlFlags(Ljava/lang/Object;J)V

    #@51
    goto :goto_0

    #@52
    .line 1223
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@54
    if-lt v0, v7, :cond_3

    #@56
    .line 1224
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    #@58
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    #@5b
    move-result v1

    #@5c
    invoke-static {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->setState(Ljava/lang/Object;I)V

    #@5f
    goto :goto_1

    #@60
    .line 1230
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@62
    if-lt v0, v8, :cond_6

    #@64
    .line 1231
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    #@66
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    #@69
    move-result-wide v2

    #@6a
    invoke-static {v0, v2, v3}, Landroid/support/v4/media/session/MediaSessionCompatApi18;->setTransportControlFlags(Ljava/lang/Object;J)V

    #@6d
    goto :goto_0

    #@6e
    .line 1232
    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@70
    if-lt v0, v7, :cond_1

    #@72
    .line 1233
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    #@74
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    #@77
    move-result-wide v2

    #@78
    invoke-static {v0, v2, v3}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->setTransportControlFlags(Ljava/lang/Object;J)V

    #@7b
    goto :goto_0
.end method

.method public setPlaybackToLocal(I)V
    .locals 6
    .param p1, "stream"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1139
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 1140
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

    #@7
    invoke-virtual {v1, v2}, Landroid/support/v4/media/VolumeProviderCompat;->setCallback(Landroid/support/v4/media/VolumeProviderCompat$Callback;)V

    #@a
    .line 1142
    :cond_0
    const/4 v1, 0x1

    #@b
    iput v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeType:I

    #@d
    .line 1143
    new-instance v0, Landroid/support/v4/media/session/ParcelableVolumeInfo;

    #@f
    iget v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeType:I

    #@11
    iget v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLocalStream:I

    #@13
    .line 1145
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mAudioManager:Landroid/media/AudioManager;

    #@15
    iget v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLocalStream:I

    #@17
    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    #@1a
    move-result v4

    #@1b
    .line 1146
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mAudioManager:Landroid/media/AudioManager;

    #@1d
    iget v5, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLocalStream:I

    #@1f
    invoke-virtual {v3, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    #@22
    move-result v5

    #@23
    .line 1144
    const/4 v3, 0x2

    #@24
    .line 1143
    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/session/ParcelableVolumeInfo;-><init>(IIIII)V

    #@27
    .line 1147
    .local v0, "info":Landroid/support/v4/media/session/ParcelableVolumeInfo;
    invoke-direct {p0, v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->sendVolumeInfoChanged(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V

    #@2a
    .line 1138
    return-void
.end method

.method public setPlaybackToRemote(Landroid/support/v4/media/VolumeProviderCompat;)V
    .locals 6
    .param p1, "volumeProvider"    # Landroid/support/v4/media/VolumeProviderCompat;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1152
    if-nez p1, :cond_0

    #@3
    .line 1153
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v2, "volumeProvider may not be null"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 1155
    :cond_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 1156
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

    #@12
    invoke-virtual {v1, v2}, Landroid/support/v4/media/VolumeProviderCompat;->setCallback(Landroid/support/v4/media/VolumeProviderCompat$Callback;)V

    #@15
    .line 1158
    :cond_1
    const/4 v1, 0x2

    #@16
    iput v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeType:I

    #@18
    .line 1159
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

    #@1a
    .line 1160
    new-instance v0, Landroid/support/v4/media/session/ParcelableVolumeInfo;

    #@1c
    iget v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeType:I

    #@1e
    iget v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLocalStream:I

    #@20
    .line 1161
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

    #@22
    invoke-virtual {v3}, Landroid/support/v4/media/VolumeProviderCompat;->getVolumeControl()I

    #@25
    move-result v3

    #@26
    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

    #@28
    invoke-virtual {v4}, Landroid/support/v4/media/VolumeProviderCompat;->getMaxVolume()I

    #@2b
    move-result v4

    #@2c
    .line 1162
    iget-object v5, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

    #@2e
    invoke-virtual {v5}, Landroid/support/v4/media/VolumeProviderCompat;->getCurrentVolume()I

    #@31
    move-result v5

    #@32
    .line 1160
    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/session/ParcelableVolumeInfo;-><init>(IIIII)V

    #@35
    .line 1163
    .local v0, "info":Landroid/support/v4/media/session/ParcelableVolumeInfo;
    invoke-direct {p0, v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->sendVolumeInfoChanged(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V

    #@38
    .line 1165
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeCallback:Landroid/support/v4/media/VolumeProviderCompat$Callback;

    #@3a
    invoke-virtual {p1, v1}, Landroid/support/v4/media/VolumeProviderCompat;->setCallback(Landroid/support/v4/media/VolumeProviderCompat$Callback;)V

    #@3d
    .line 1151
    return-void
.end method

.method public setQueue(Ljava/util/List;)V
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
    .line 1272
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;>;"
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mQueue:Ljava/util/List;

    #@2
    .line 1273
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->sendQueue(Ljava/util/List;)V

    #@5
    .line 1271
    return-void
.end method

.method public setQueueTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 1278
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mQueueTitle:Ljava/lang/CharSequence;

    #@2
    .line 1279
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->sendQueueTitle(Ljava/lang/CharSequence;)V

    #@5
    .line 1277
    return-void
.end method

.method public setRatingType(I)V
    .locals 0
    .param p1, "type"    # I

    #@0
    .prologue
    .line 1294
    iput p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRatingType:I

    #@2
    .line 1293
    return-void
.end method

.method public setSessionActivity(Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "pi"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 1260
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 1261
    :try_start_0
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mSessionActivity:Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    .line 1259
    return-void

    #@7
    .line 1260
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method
