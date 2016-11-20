.class public Lcom/android/server/media/MediaSessionRecord;
.super Ljava/lang/Object;
.source "MediaSessionRecord.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaSessionRecord$1;,
        Lcom/android/server/media/MediaSessionRecord$ControllerStub;,
        Lcom/android/server/media/MediaSessionRecord$MessageHandler;,
        Lcom/android/server/media/MediaSessionRecord$SessionCb;,
        Lcom/android/server/media/MediaSessionRecord$SessionStub;
    }
.end annotation


# static fields
.field private static final ACTIVE_BUFFER:I = 0x7530

.field private static final DEBUG:Z

.field private static final OPTIMISTIC_VOLUME_TIMEOUT:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "MediaSessionRecord"

.field private static final UID_NOT_SET:I = -0x1


# instance fields
.field private mAudioAttrs:Landroid/media/AudioAttributes;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioManagerInternal:Landroid/media/AudioManagerInternal;

.field private mCallingPackage:Ljava/lang/String;

.field private mCallingUid:I

.field private final mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

.field private final mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

.field private final mControllerCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/session/ISessionControllerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentVolume:I

.field private mDestroyed:Z

.field private mExtras:Landroid/os/Bundle;

.field private mFlags:J

.field private final mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

.field private mIsActive:Z

.field private mLastActiveTime:J

.field private mLaunchIntent:Landroid/app/PendingIntent;

.field private final mLock:Ljava/lang/Object;

.field private mMaxVolume:I

.field private mMediaButtonReceiver:Landroid/app/PendingIntent;

.field private mMetadata:Landroid/media/MediaMetadata;

.field private mOptimisticVolume:I

.field private final mOwnerPid:I

.field private final mOwnerUid:I

.field private final mPackageName:Ljava/lang/String;

.field private mPlaybackState:Landroid/media/session/PlaybackState;

.field private mQueue:Landroid/content/pm/ParceledListSlice;

.field private mQueueTitle:Ljava/lang/CharSequence;

.field private mRatingType:I

.field private final mService:Lcom/android/server/media/MediaSessionService;

.field private final mSession:Lcom/android/server/media/MediaSessionRecord$SessionStub;

.field private final mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

.field private final mTag:Ljava/lang/String;

.field private final mUserId:I

.field private mVolumeControlType:I

.field private mVolumeType:I


# direct methods
.method static synthetic -get0()Z
    .locals 1

    #@0
    sget-boolean v0, Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/AudioAttributes;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    #@2
    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/media/MediaSessionRecord;)J
    .locals 2

    #@0
    iget-wide v0, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    #@2
    return-wide v0
.end method

.method static synthetic -get11(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    #@2
    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/media/MediaSessionRecord;)Landroid/app/PendingIntent;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLaunchIntent:Landroid/app/PendingIntent;

    #@2
    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/media/MediaSessionRecord;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    #@2
    return v0
.end method

.method static synthetic -get15(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/MediaMetadata;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    #@2
    return-object v0
.end method

.method static synthetic -get16(Lcom/android/server/media/MediaSessionRecord;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    #@2
    return v0
.end method

.method static synthetic -get17(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get18(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/PlaybackState;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    #@2
    return-object v0
.end method

.method static synthetic -get19(Lcom/android/server/media/MediaSessionRecord;)Landroid/content/pm/ParceledListSlice;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Landroid/content/pm/ParceledListSlice;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/AudioManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;

    #@2
    return-object v0
.end method

.method static synthetic -get20(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/CharSequence;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mQueueTitle:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method static synthetic -get21(Lcom/android/server/media/MediaSessionRecord;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mRatingType:I

    #@2
    return v0
.end method

.method static synthetic -get22(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    #@2
    return-object v0
.end method

.method static synthetic -get23(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    #@2
    return-object v0
.end method

.method static synthetic -get24(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mTag:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get25(Lcom/android/server/media/MediaSessionRecord;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    #@2
    return v0
.end method

.method static synthetic -get26(Lcom/android/server/media/MediaSessionRecord;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    #@2
    return v0
.end method

.method static synthetic -get3(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/AudioManagerInternal;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mCallingPackage:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$ControllerStub;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/media/MediaSessionRecord;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/media/MediaSessionRecord;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    #@2
    return v0
.end method

.method static synthetic -get8(Lcom/android/server/media/MediaSessionRecord;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    #@2
    return v0
.end method

.method static synthetic -get9(Lcom/android/server/media/MediaSessionRecord;)Landroid/os/Bundle;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mExtras:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/media/MediaSessionRecord;Landroid/media/AudioAttributes;)Landroid/media/AudioAttributes;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/media/MediaSessionRecord;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    #@2
    return p1
.end method

.method static synthetic -set10(Lcom/android/server/media/MediaSessionRecord;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    #@2
    return p1
.end method

.method static synthetic -set11(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/PlaybackState;)Landroid/media/session/PlaybackState;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    #@2
    return-object p1
.end method

.method static synthetic -set12(Lcom/android/server/media/MediaSessionRecord;Landroid/content/pm/ParceledListSlice;)Landroid/content/pm/ParceledListSlice;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Landroid/content/pm/ParceledListSlice;

    #@2
    return-object p1
.end method

.method static synthetic -set13(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mQueueTitle:Ljava/lang/CharSequence;

    #@2
    return-object p1
.end method

.method static synthetic -set14(Lcom/android/server/media/MediaSessionRecord;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mRatingType:I

    #@2
    return p1
.end method

.method static synthetic -set15(Lcom/android/server/media/MediaSessionRecord;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    #@2
    return p1
.end method

.method static synthetic -set16(Lcom/android/server/media/MediaSessionRecord;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    #@2
    return p1
.end method

.method static synthetic -set2(Lcom/android/server/media/MediaSessionRecord;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mExtras:Landroid/os/Bundle;

    #@2
    return-object p1
.end method

.method static synthetic -set3(Lcom/android/server/media/MediaSessionRecord;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    #@2
    return-wide p1
.end method

.method static synthetic -set4(Lcom/android/server/media/MediaSessionRecord;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/media/MediaSessionRecord;->mIsActive:Z

    #@2
    return p1
.end method

.method static synthetic -set5(Lcom/android/server/media/MediaSessionRecord;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Lcom/android/server/media/MediaSessionRecord;->mLastActiveTime:J

    #@2
    return-wide p1
.end method

.method static synthetic -set6(Lcom/android/server/media/MediaSessionRecord;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mLaunchIntent:Landroid/app/PendingIntent;

    #@2
    return-object p1
.end method

.method static synthetic -set7(Lcom/android/server/media/MediaSessionRecord;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    #@2
    return p1
.end method

.method static synthetic -set8(Lcom/android/server/media/MediaSessionRecord;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mMediaButtonReceiver:Landroid/app/PendingIntent;

    #@2
    return-object p1
.end method

.method static synthetic -set9(Lcom/android/server/media/MediaSessionRecord;Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/PlaybackState;
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->getStateWithUpdatedPosition()Landroid/media/session/PlaybackState;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionControllerCallback;)I
    .locals 1
    .param p1, "cb"    # Landroid/media/session/ISessionControllerCallback;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionRecord;->getControllerCbIndexForCb(Landroid/media/session/ISessionControllerCallback;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->updateCallingPackage()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/media/MediaSessionRecord;->pushEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushExtrasUpdate()V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushMetadataUpdate()V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushPlaybackStateUpdate()V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushQueueTitleUpdate()V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushQueueUpdate()V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushSessionDestroyed()V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushVolumeUpdate()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 66
    const-string/jumbo v0, "MediaSessionRecord"

    #@3
    const/4 v1, 0x3

    #@4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    sput-boolean v0, Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z

    #@a
    .line 64
    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;Lcom/android/server/media/MediaSessionService;Landroid/os/Handler;)V
    .locals 4
    .param p1, "ownerPid"    # I
    .param p2, "ownerUid"    # I
    .param p3, "userId"    # I
    .param p4, "ownerPackageName"    # Ljava/lang/String;
    .param p5, "cb"    # Landroid/media/session/ISessionCallback;
    .param p6, "tag"    # Ljava/lang/String;
    .param p7, "service"    # Lcom/android/server/media/MediaSessionService;
    .param p8, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, -0x1

    #@2
    const/4 v1, 0x0

    #@3
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 94
    new-instance v0, Ljava/lang/Object;

    #@8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@b
    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    #@d
    .line 96
    new-instance v0, Ljava/util/ArrayList;

    #@f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@12
    .line 95
    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    #@14
    .line 117
    iput v3, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    #@16
    .line 118
    const/4 v0, 0x2

    #@17
    iput v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    #@19
    .line 119
    iput v1, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    #@1b
    .line 120
    iput v1, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    #@1d
    .line 121
    iput v2, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    #@1f
    .line 124
    iput-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mIsActive:Z

    #@21
    .line 125
    iput-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    #@23
    .line 127
    iput v2, p0, Lcom/android/server/media/MediaSessionRecord;->mCallingUid:I

    #@25
    .line 717
    new-instance v0, Lcom/android/server/media/MediaSessionRecord$1;

    #@27
    invoke-direct {v0, p0}, Lcom/android/server/media/MediaSessionRecord$1;-><init>(Lcom/android/server/media/MediaSessionRecord;)V

    #@2a
    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    #@2c
    .line 132
    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerPid:I

    #@2e
    .line 133
    iput p2, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    #@30
    .line 134
    iput p3, p0, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    #@32
    .line 135
    iput-object p4, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    #@34
    .line 136
    iput-object p6, p0, Lcom/android/server/media/MediaSessionRecord;->mTag:Ljava/lang/String;

    #@36
    .line 137
    new-instance v0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    #@38
    invoke-direct {v0, p0}, Lcom/android/server/media/MediaSessionRecord$ControllerStub;-><init>(Lcom/android/server/media/MediaSessionRecord;)V

    #@3b
    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    #@3d
    .line 138
    new-instance v0, Lcom/android/server/media/MediaSessionRecord$SessionStub;

    #@3f
    const/4 v1, 0x0

    #@40
    invoke-direct {v0, p0, v1}, Lcom/android/server/media/MediaSessionRecord$SessionStub;-><init>(Lcom/android/server/media/MediaSessionRecord;Lcom/android/server/media/MediaSessionRecord$SessionStub;)V

    #@43
    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSession:Lcom/android/server/media/MediaSessionRecord$SessionStub;

    #@45
    .line 139
    new-instance v0, Lcom/android/server/media/MediaSessionRecord$SessionCb;

    #@47
    invoke-direct {v0, p0, p5}, Lcom/android/server/media/MediaSessionRecord$SessionCb;-><init>(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionCallback;)V

    #@4a
    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    #@4c
    .line 140
    iput-object p7, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    #@4e
    .line 141
    new-instance v0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    #@50
    invoke-virtual {p8}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@53
    move-result-object v1

    #@54
    invoke-direct {v0, p0, v1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;-><init>(Lcom/android/server/media/MediaSessionRecord;Landroid/os/Looper;)V

    #@57
    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    #@59
    .line 142
    invoke-virtual {p7}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    #@5c
    move-result-object v0

    #@5d
    const-string/jumbo v1, "audio"

    #@60
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@63
    move-result-object v0

    #@64
    check-cast v0, Landroid/media/AudioManager;

    #@66
    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;

    #@68
    .line 143
    const-class v0, Landroid/media/AudioManagerInternal;

    #@6a
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@6d
    move-result-object v0

    #@6e
    check-cast v0, Landroid/media/AudioManagerInternal;

    #@70
    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    #@72
    .line 144
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    #@74
    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    #@77
    invoke-virtual {v0, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    #@7a
    move-result-object v0

    #@7b
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    #@7e
    move-result-object v0

    #@7f
    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    #@81
    .line 131
    return-void
.end method

.method private getControllerCbIndexForCb(Landroid/media/session/ISessionControllerCallback;)I
    .locals 3
    .param p1, "cb"    # Landroid/media/session/ISessionControllerCallback;

    #@0
    .prologue
    .line 681
    invoke-interface {p1}, Landroid/media/session/ISessionControllerCallback;->asBinder()Landroid/os/IBinder;

    #@3
    move-result-object v0

    #@4
    .line 682
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v2

    #@a
    add-int/lit8 v1, v2, -0x1

    #@c
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    #@e
    .line 683
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Landroid/media/session/ISessionControllerCallback;

    #@16
    invoke-interface {v2}, Landroid/media/session/ISessionControllerCallback;->asBinder()Landroid/os/IBinder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_0

    #@20
    .line 684
    return v1

    #@21
    .line 682
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@23
    goto :goto_0

    #@24
    .line 687
    :cond_1
    const/4 v2, -0x1

    #@25
    return v2
.end method

.method private getShortMetadataString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 484
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    #@2
    if-nez v2, :cond_0

    #@4
    const/4 v1, 0x0

    #@5
    .line 485
    .local v1, "fields":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    #@7
    if-nez v2, :cond_1

    #@9
    const/4 v0, 0x0

    #@a
    .line 487
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "size="

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    const-string/jumbo v3, ", description="

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    return-object v2

    #@2a
    .line 484
    .end local v1    # "fields":I
    :cond_0
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    #@2c
    invoke-virtual {v2}, Landroid/media/MediaMetadata;->size()I

    #@2f
    move-result v1

    #@30
    .restart local v1    # "fields":I
    goto :goto_0

    #@31
    .line 485
    :cond_1
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    #@33
    invoke-virtual {v2}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    #@36
    move-result-object v0

    #@37
    .local v0, "description":Landroid/media/MediaDescription;
    goto :goto_1
.end method

.method private getStateWithUpdatedPosition()Landroid/media/session/PlaybackState;
    .locals 20

    #@0
    .prologue
    .line 648
    const-wide/16 v10, -0x1

    #@2
    .line 649
    .local v10, "duration":J
    move-object/from16 v0, p0

    #@4
    iget-object v6, v0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    #@6
    monitor-enter v6

    #@7
    .line 650
    :try_start_0
    move-object/from16 v0, p0

    #@9
    iget-object v12, v0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    #@b
    .line 651
    .local v12, "state":Landroid/media/session/PlaybackState;
    move-object/from16 v0, p0

    #@d
    iget-object v3, v0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    #@f
    if-eqz v3, :cond_0

    #@11
    move-object/from16 v0, p0

    #@13
    iget-object v3, v0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    #@15
    const-string/jumbo v13, "android.media.metadata.DURATION"

    #@18
    invoke-virtual {v3, v13}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_0

    #@1e
    .line 652
    move-object/from16 v0, p0

    #@20
    iget-object v3, v0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    #@22
    const-string/jumbo v13, "android.media.metadata.DURATION"

    #@25
    invoke-virtual {v3, v13}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    move-result-wide v10

    #@29
    :cond_0
    monitor-exit v6

    #@2a
    .line 655
    const/4 v9, 0x0

    #@2b
    .line 656
    .local v9, "result":Landroid/media/session/PlaybackState;
    if-eqz v12, :cond_3

    #@2d
    .line 657
    invoke-virtual {v12}, Landroid/media/session/PlaybackState;->getState()I

    #@30
    move-result v3

    #@31
    const/4 v6, 0x3

    #@32
    if-eq v3, v6, :cond_1

    #@34
    .line 658
    invoke-virtual {v12}, Landroid/media/session/PlaybackState;->getState()I

    #@37
    move-result v3

    #@38
    const/4 v6, 0x4

    #@39
    if-ne v3, v6, :cond_4

    #@3b
    .line 660
    :cond_1
    :goto_0
    invoke-virtual {v12}, Landroid/media/session/PlaybackState;->getLastPositionUpdateTime()J

    #@3e
    move-result-wide v14

    #@3f
    .line 661
    .local v14, "updateTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@42
    move-result-wide v7

    #@43
    .line 662
    .local v7, "currentTime":J
    const-wide/16 v16, 0x0

    #@45
    cmp-long v3, v14, v16

    #@47
    if-lez v3, :cond_3

    #@49
    .line 663
    invoke-virtual {v12}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    #@4c
    move-result v3

    #@4d
    .line 664
    sub-long v16, v7, v14

    #@4f
    move-wide/from16 v0, v16

    #@51
    long-to-float v6, v0

    #@52
    .line 663
    mul-float/2addr v3, v6

    #@53
    float-to-long v0, v3

    #@54
    move-wide/from16 v16, v0

    #@56
    .line 664
    invoke-virtual {v12}, Landroid/media/session/PlaybackState;->getPosition()J

    #@59
    move-result-wide v18

    #@5a
    .line 663
    add-long v4, v16, v18

    #@5c
    .line 665
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
    .line 666
    move-wide v4, v10

    #@67
    .line 670
    :cond_2
    :goto_1
    new-instance v2, Landroid/media/session/PlaybackState$Builder;

    #@69
    invoke-direct {v2, v12}, Landroid/media/session/PlaybackState$Builder;-><init>(Landroid/media/session/PlaybackState;)V

    #@6c
    .line 671
    .local v2, "builder":Landroid/media/session/PlaybackState$Builder;
    invoke-virtual {v12}, Landroid/media/session/PlaybackState;->getState()I

    #@6f
    move-result v3

    #@70
    invoke-virtual {v12}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    #@73
    move-result v6

    #@74
    invoke-virtual/range {v2 .. v8}, Landroid/media/session/PlaybackState$Builder;->setState(IJFJ)Landroid/media/session/PlaybackState$Builder;

    #@77
    .line 673
    invoke-virtual {v2}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    #@7a
    move-result-object v9

    #@7b
    .line 677
    .end local v2    # "builder":Landroid/media/session/PlaybackState$Builder;
    .end local v4    # "position":J
    .end local v7    # "currentTime":J
    .end local v9    # "result":Landroid/media/session/PlaybackState;
    .end local v14    # "updateTime":J
    :cond_3
    if-nez v9, :cond_6

    #@7d
    .end local v12    # "state":Landroid/media/session/PlaybackState;
    :goto_2
    return-object v12

    #@7e
    .line 649
    :catchall_0
    move-exception v3

    #@7f
    monitor-exit v6

    #@80
    throw v3

    #@81
    .line 659
    .restart local v9    # "result":Landroid/media/session/PlaybackState;
    .restart local v12    # "state":Landroid/media/session/PlaybackState;
    :cond_4
    invoke-virtual {v12}, Landroid/media/session/PlaybackState;->getState()I

    #@84
    move-result v3

    #@85
    const/4 v6, 0x5

    #@86
    if-ne v3, v6, :cond_3

    #@88
    goto :goto_0

    #@89
    .line 667
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
    .line 668
    const-wide/16 v4, 0x0

    #@91
    goto :goto_1

    #@92
    .end local v4    # "position":J
    .end local v7    # "currentTime":J
    .end local v9    # "result":Landroid/media/session/PlaybackState;
    .end local v14    # "updateTime":J
    :cond_6
    move-object v12, v9

    #@93
    .line 677
    goto :goto_2
.end method

.method private postAdjustLocalVolume(IIILjava/lang/String;IZI)V
    .locals 10
    .param p1, "stream"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "useSuggested"    # Z
    .param p7, "previousFlagPlaySound"    # I

    #@0
    .prologue
    .line 463
    iget-object v9, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    #@2
    new-instance v0, Lcom/android/server/media/MediaSessionRecord$2;

    #@4
    move-object v1, p0

    #@5
    move/from16 v2, p6

    #@7
    move v3, p1

    #@8
    move v4, p2

    #@9
    move v5, p3

    #@a
    move-object v6, p4

    #@b
    move v7, p5

    #@c
    move/from16 v8, p7

    #@e
    invoke-direct/range {v0 .. v8}, Lcom/android/server/media/MediaSessionRecord$2;-><init>(Lcom/android/server/media/MediaSessionRecord;ZIIILjava/lang/String;II)V

    #@11
    invoke-virtual {v9, v0}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(Ljava/lang/Runnable;)Z

    #@14
    .line 462
    return-void
.end method

.method private pushEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 605
    iget-object v5, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v5

    #@3
    .line 606
    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eqz v4, :cond_0

    #@7
    monitor-exit v5

    #@8
    .line 607
    return-void

    #@9
    .line 609
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@e
    move-result v4

    #@f
    add-int/lit8 v3, v4, -0x1

    #@11
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    #@13
    .line 610
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Landroid/media/session/ISessionControllerCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    .line 612
    .local v0, "cb":Landroid/media/session/ISessionControllerCallback;
    :try_start_2
    invoke-interface {v0, p1, p2}, Landroid/media/session/ISessionControllerCallback;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1e
    .line 609
    :goto_1
    add-int/lit8 v3, v3, -0x1

    #@20
    goto :goto_0

    #@21
    .line 616
    :catch_0
    move-exception v2

    #@22
    .line 617
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v4, "MediaSessionRecord"

    #@25
    const-string/jumbo v6, "unexpected exception in pushEvent."

    #@28
    invoke-static {v4, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@2b
    goto :goto_1

    #@2c
    .line 605
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    :catchall_0
    move-exception v4

    #@2d
    monitor-exit v5

    #@2e
    throw v4

    #@2f
    .line 613
    .restart local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .restart local v3    # "i":I
    :catch_1
    move-exception v1

    #@30
    .line 614
    .local v1, "e":Landroid/os/DeadObjectException;
    :try_start_4
    const-string/jumbo v4, "MediaSessionRecord"

    #@33
    const-string/jumbo v6, "Removing dead callback in pushEvent."

    #@36
    invoke-static {v4, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@39
    .line 615
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    #@3b
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@3e
    goto :goto_1

    #@3f
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v1    # "e":Landroid/os/DeadObjectException;
    :cond_1
    monitor-exit v5

    #@40
    .line 604
    return-void
.end method

.method private pushExtrasUpdate()V
    .locals 7

    #@0
    .prologue
    .line 567
    iget-object v5, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v5

    #@3
    .line 568
    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eqz v4, :cond_0

    #@7
    monitor-exit v5

    #@8
    .line 569
    return-void

    #@9
    .line 571
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@e
    move-result v4

    #@f
    add-int/lit8 v3, v4, -0x1

    #@11
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    #@13
    .line 572
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Landroid/media/session/ISessionControllerCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    .line 574
    .local v0, "cb":Landroid/media/session/ISessionControllerCallback;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mExtras:Landroid/os/Bundle;

    #@1d
    invoke-interface {v0, v4}, Landroid/media/session/ISessionControllerCallback;->onExtrasChanged(Landroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@20
    .line 571
    :goto_1
    add-int/lit8 v3, v3, -0x1

    #@22
    goto :goto_0

    #@23
    .line 578
    :catch_0
    move-exception v2

    #@24
    .line 579
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v4, "MediaSessionRecord"

    #@27
    const-string/jumbo v6, "unexpected exception in pushExtrasUpdate."

    #@2a
    invoke-static {v4, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@2d
    goto :goto_1

    #@2e
    .line 567
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    :catchall_0
    move-exception v4

    #@2f
    monitor-exit v5

    #@30
    throw v4

    #@31
    .line 575
    .restart local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .restart local v3    # "i":I
    :catch_1
    move-exception v1

    #@32
    .line 576
    .local v1, "e":Landroid/os/DeadObjectException;
    :try_start_4
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    #@34
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@37
    .line 577
    const-string/jumbo v4, "MediaSessionRecord"

    #@3a
    const-string/jumbo v6, "Removed dead callback in pushExtrasUpdate."

    #@3d
    invoke-static {v4, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@40
    goto :goto_1

    #@41
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v1    # "e":Landroid/os/DeadObjectException;
    :cond_1
    monitor-exit v5

    #@42
    .line 566
    return-void
.end method

.method private pushMetadataUpdate()V
    .locals 7

    #@0
    .prologue
    .line 510
    iget-object v5, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v5

    #@3
    .line 511
    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eqz v4, :cond_0

    #@7
    monitor-exit v5

    #@8
    .line 512
    return-void

    #@9
    .line 514
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@e
    move-result v4

    #@f
    add-int/lit8 v3, v4, -0x1

    #@11
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    #@13
    .line 515
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Landroid/media/session/ISessionControllerCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    .line 517
    .local v0, "cb":Landroid/media/session/ISessionControllerCallback;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    #@1d
    invoke-interface {v0, v4}, Landroid/media/session/ISessionControllerCallback;->onMetadataChanged(Landroid/media/MediaMetadata;)V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@20
    .line 514
    :goto_1
    add-int/lit8 v3, v3, -0x1

    #@22
    goto :goto_0

    #@23
    .line 521
    :catch_0
    move-exception v2

    #@24
    .line 522
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v4, "MediaSessionRecord"

    #@27
    const-string/jumbo v6, "unexpected exception in pushMetadataUpdate. "

    #@2a
    invoke-static {v4, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@2d
    goto :goto_1

    #@2e
    .line 510
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    :catchall_0
    move-exception v4

    #@2f
    monitor-exit v5

    #@30
    throw v4

    #@31
    .line 518
    .restart local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .restart local v3    # "i":I
    :catch_1
    move-exception v1

    #@32
    .line 519
    .local v1, "e":Landroid/os/DeadObjectException;
    :try_start_4
    const-string/jumbo v4, "MediaSessionRecord"

    #@35
    const-string/jumbo v6, "Removing dead callback in pushMetadataUpdate. "

    #@38
    invoke-static {v4, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3b
    .line 520
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    #@3d
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@40
    goto :goto_1

    #@41
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v1    # "e":Landroid/os/DeadObjectException;
    :cond_1
    monitor-exit v5

    #@42
    .line 509
    return-void
.end method

.method private pushPlaybackStateUpdate()V
    .locals 7

    #@0
    .prologue
    .line 491
    iget-object v5, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v5

    #@3
    .line 492
    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eqz v4, :cond_0

    #@7
    monitor-exit v5

    #@8
    .line 493
    return-void

    #@9
    .line 495
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@e
    move-result v4

    #@f
    add-int/lit8 v3, v4, -0x1

    #@11
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    #@13
    .line 496
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Landroid/media/session/ISessionControllerCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    .line 498
    .local v0, "cb":Landroid/media/session/ISessionControllerCallback;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    #@1d
    invoke-interface {v0, v4}, Landroid/media/session/ISessionControllerCallback;->onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@20
    .line 495
    :goto_1
    add-int/lit8 v3, v3, -0x1

    #@22
    goto :goto_0

    #@23
    .line 502
    :catch_0
    move-exception v2

    #@24
    .line 503
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v4, "MediaSessionRecord"

    #@27
    const-string/jumbo v6, "unexpected exception in pushPlaybackStateUpdate."

    #@2a
    invoke-static {v4, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@2d
    goto :goto_1

    #@2e
    .line 491
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    :catchall_0
    move-exception v4

    #@2f
    monitor-exit v5

    #@30
    throw v4

    #@31
    .line 499
    .restart local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .restart local v3    # "i":I
    :catch_1
    move-exception v1

    #@32
    .line 500
    .local v1, "e":Landroid/os/DeadObjectException;
    :try_start_4
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    #@34
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@37
    .line 501
    const-string/jumbo v4, "MediaSessionRecord"

    #@3a
    const-string/jumbo v6, "Removed dead callback in pushPlaybackStateUpdate."

    #@3d
    invoke-static {v4, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@40
    goto :goto_1

    #@41
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v1    # "e":Landroid/os/DeadObjectException;
    :cond_1
    monitor-exit v5

    #@42
    .line 490
    return-void
.end method

.method private pushQueueTitleUpdate()V
    .locals 7

    #@0
    .prologue
    .line 548
    iget-object v5, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v5

    #@3
    .line 549
    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eqz v4, :cond_0

    #@7
    monitor-exit v5

    #@8
    .line 550
    return-void

    #@9
    .line 552
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@e
    move-result v4

    #@f
    add-int/lit8 v3, v4, -0x1

    #@11
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    #@13
    .line 553
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Landroid/media/session/ISessionControllerCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    .line 555
    .local v0, "cb":Landroid/media/session/ISessionControllerCallback;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mQueueTitle:Ljava/lang/CharSequence;

    #@1d
    invoke-interface {v0, v4}, Landroid/media/session/ISessionControllerCallback;->onQueueTitleChanged(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@20
    .line 552
    :goto_1
    add-int/lit8 v3, v3, -0x1

    #@22
    goto :goto_0

    #@23
    .line 559
    :catch_0
    move-exception v2

    #@24
    .line 560
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v4, "MediaSessionRecord"

    #@27
    const-string/jumbo v6, "unexpected exception in pushQueueTitleUpdate."

    #@2a
    invoke-static {v4, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@2d
    goto :goto_1

    #@2e
    .line 548
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    :catchall_0
    move-exception v4

    #@2f
    monitor-exit v5

    #@30
    throw v4

    #@31
    .line 556
    .restart local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .restart local v3    # "i":I
    :catch_1
    move-exception v1

    #@32
    .line 557
    .local v1, "e":Landroid/os/DeadObjectException;
    :try_start_4
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    #@34
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@37
    .line 558
    const-string/jumbo v4, "MediaSessionRecord"

    #@3a
    const-string/jumbo v6, "Removed dead callback in pushQueueTitleUpdate."

    #@3d
    invoke-static {v4, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@40
    goto :goto_1

    #@41
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v1    # "e":Landroid/os/DeadObjectException;
    :cond_1
    monitor-exit v5

    #@42
    .line 547
    return-void
.end method

.method private pushQueueUpdate()V
    .locals 7

    #@0
    .prologue
    .line 529
    iget-object v5, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v5

    #@3
    .line 530
    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eqz v4, :cond_0

    #@7
    monitor-exit v5

    #@8
    .line 531
    return-void

    #@9
    .line 533
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@e
    move-result v4

    #@f
    add-int/lit8 v3, v4, -0x1

    #@11
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    #@13
    .line 534
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Landroid/media/session/ISessionControllerCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    .line 536
    .local v0, "cb":Landroid/media/session/ISessionControllerCallback;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Landroid/content/pm/ParceledListSlice;

    #@1d
    invoke-interface {v0, v4}, Landroid/media/session/ISessionControllerCallback;->onQueueChanged(Landroid/content/pm/ParceledListSlice;)V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@20
    .line 533
    :goto_1
    add-int/lit8 v3, v3, -0x1

    #@22
    goto :goto_0

    #@23
    .line 540
    :catch_0
    move-exception v2

    #@24
    .line 541
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v4, "MediaSessionRecord"

    #@27
    const-string/jumbo v6, "unexpected exception in pushQueueUpdate."

    #@2a
    invoke-static {v4, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@2d
    goto :goto_1

    #@2e
    .line 529
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    :catchall_0
    move-exception v4

    #@2f
    monitor-exit v5

    #@30
    throw v4

    #@31
    .line 537
    .restart local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .restart local v3    # "i":I
    :catch_1
    move-exception v1

    #@32
    .line 538
    .local v1, "e":Landroid/os/DeadObjectException;
    :try_start_4
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    #@34
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@37
    .line 539
    const-string/jumbo v4, "MediaSessionRecord"

    #@3a
    const-string/jumbo v6, "Removed dead callback in pushQueueUpdate."

    #@3d
    invoke-static {v4, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@40
    goto :goto_1

    #@41
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v1    # "e":Landroid/os/DeadObjectException;
    :cond_1
    monitor-exit v5

    #@42
    .line 528
    return-void
.end method

.method private pushSessionDestroyed()V
    .locals 7

    #@0
    .prologue
    .line 624
    iget-object v5, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v5

    #@3
    .line 627
    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-nez v4, :cond_0

    #@7
    monitor-exit v5

    #@8
    .line 628
    return-void

    #@9
    .line 630
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@e
    move-result v4

    #@f
    add-int/lit8 v3, v4, -0x1

    #@11
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    #@13
    .line 631
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Landroid/media/session/ISessionControllerCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    .line 633
    .local v0, "cb":Landroid/media/session/ISessionControllerCallback;
    :try_start_2
    invoke-interface {v0}, Landroid/media/session/ISessionControllerCallback;->onSessionDestroyed()V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1e
    .line 630
    :goto_1
    add-int/lit8 v3, v3, -0x1

    #@20
    goto :goto_0

    #@21
    .line 637
    :catch_0
    move-exception v2

    #@22
    .line 638
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v4, "MediaSessionRecord"

    #@25
    const-string/jumbo v6, "unexpected exception in pushEvent."

    #@28
    invoke-static {v4, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@2b
    goto :goto_1

    #@2c
    .line 624
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    :catchall_0
    move-exception v4

    #@2d
    monitor-exit v5

    #@2e
    throw v4

    #@2f
    .line 634
    .restart local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .restart local v3    # "i":I
    :catch_1
    move-exception v1

    #@30
    .line 635
    .local v1, "e":Landroid/os/DeadObjectException;
    :try_start_4
    const-string/jumbo v4, "MediaSessionRecord"

    #@33
    const-string/jumbo v6, "Removing dead callback in pushEvent."

    #@36
    invoke-static {v4, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@39
    .line 636
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    #@3b
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@3e
    goto :goto_1

    #@3f
    .line 642
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v1    # "e":Landroid/os/DeadObjectException;
    :cond_1
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    #@41
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@44
    monitor-exit v5

    #@45
    .line 623
    return-void
.end method

.method private pushVolumeUpdate()V
    .locals 8

    #@0
    .prologue
    .line 586
    iget-object v6, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v6

    #@3
    .line 587
    :try_start_0
    iget-boolean v5, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eqz v5, :cond_0

    #@7
    monitor-exit v6

    #@8
    .line 588
    return-void

    #@9
    .line 590
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/android/server/media/MediaSessionRecord;->mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    #@b
    invoke-virtual {v5}, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->getVolumeAttributes()Landroid/media/session/ParcelableVolumeInfo;

    #@e
    move-result-object v4

    #@f
    .line 591
    .local v4, "info":Landroid/media/session/ParcelableVolumeInfo;
    iget-object v5, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@14
    move-result v5

    #@15
    add-int/lit8 v3, v5, -0x1

    #@17
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    #@19
    .line 592
    iget-object v5, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    #@1b
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Landroid/media/session/ISessionControllerCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    .line 594
    .local v0, "cb":Landroid/media/session/ISessionControllerCallback;
    :try_start_2
    invoke-interface {v0, v4}, Landroid/media/session/ISessionControllerCallback;->onVolumeInfoChanged(Landroid/media/session/ParcelableVolumeInfo;)V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@24
    .line 591
    :goto_1
    add-int/lit8 v3, v3, -0x1

    #@26
    goto :goto_0

    #@27
    .line 597
    :catch_0
    move-exception v2

    #@28
    .line 598
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v5, "MediaSessionRecord"

    #@2b
    const-string/jumbo v7, "Unexpected exception in pushVolumeUpdate. "

    #@2e
    invoke-static {v5, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@31
    goto :goto_1

    #@32
    .line 586
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    .end local v4    # "info":Landroid/media/session/ParcelableVolumeInfo;
    :catchall_0
    move-exception v5

    #@33
    monitor-exit v6

    #@34
    throw v5

    #@35
    .line 595
    .restart local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .restart local v3    # "i":I
    .restart local v4    # "info":Landroid/media/session/ParcelableVolumeInfo;
    :catch_1
    move-exception v1

    #@36
    .line 596
    .local v1, "e":Landroid/os/DeadObjectException;
    :try_start_4
    const-string/jumbo v5, "MediaSessionRecord"

    #@39
    const-string/jumbo v7, "Removing dead callback in pushVolumeUpdate. "

    #@3c
    invoke-static {v5, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@3f
    goto :goto_1

    #@40
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v1    # "e":Landroid/os/DeadObjectException;
    :cond_1
    monitor-exit v6

    #@41
    .line 585
    return-void
.end method

.method private updateCallingPackage()V
    .locals 2

    #@0
    .prologue
    .line 691
    const/4 v0, -0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, v0, v1}, Lcom/android/server/media/MediaSessionRecord;->updateCallingPackage(ILjava/lang/String;)V

    #@5
    .line 690
    return-void
.end method

.method private updateCallingPackage(ILjava/lang/String;)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 695
    if-ne p1, v4, :cond_0

    #@3
    .line 696
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6
    move-result p1

    #@7
    .line 698
    :cond_0
    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    #@9
    monitor-enter v3

    #@a
    .line 699
    :try_start_0
    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mCallingUid:I

    #@c
    if-eq v2, v4, :cond_1

    #@e
    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mCallingUid:I

    #@10
    if-eq v2, p1, :cond_4

    #@12
    .line 700
    :cond_1
    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mCallingUid:I

    #@14
    .line 701
    iput-object p2, p0, Lcom/android/server/media/MediaSessionRecord;->mCallingPackage:Ljava/lang/String;

    #@16
    .line 702
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mCallingPackage:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    if-eqz v2, :cond_2

    #@1a
    monitor-exit v3

    #@1b
    .line 703
    return-void

    #@1c
    .line 705
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    #@1e
    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    move-result-object v0

    #@22
    .line 706
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_3

    #@24
    monitor-exit v3

    #@25
    .line 707
    return-void

    #@26
    .line 709
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    .line 710
    .local v1, "packages":[Ljava/lang/String;
    if-eqz v1, :cond_4

    #@30
    array-length v2, v1

    #@31
    if-lez v2, :cond_4

    #@33
    .line 711
    const/4 v2, 0x0

    #@34
    aget-object v2, v1, v2

    #@36
    iput-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mCallingPackage:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@38
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "packages":[Ljava/lang/String;
    :cond_4
    monitor-exit v3

    #@39
    .line 694
    return-void

    #@3a
    .line 698
    :catchall_0
    move-exception v2

    #@3b
    monitor-exit v3

    #@3c
    throw v2
.end method


# virtual methods
.method public adjustVolume(IILjava/lang/String;IZ)V
    .locals 9
    .param p1, "direction"    # I
    .param p2, "flags"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "useSuggested"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 244
    and-int/lit8 v7, p2, 0x4

    #@3
    .line 245
    .local v7, "previousFlagPlaySound":I
    invoke-virtual {p0, v3}, Lcom/android/server/media/MediaSessionRecord;->isPlaybackActive(Z)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    const/high16 v0, 0x10000

    #@b
    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaSessionRecord;->hasFlag(I)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 246
    :cond_0
    and-int/lit8 p2, p2, -0x5

    #@13
    .line 248
    :cond_1
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    #@15
    const/4 v2, 0x1

    #@16
    if-ne v0, v2, :cond_3

    #@18
    .line 250
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    #@1a
    invoke-static {v0}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    #@1d
    move-result v1

    #@1e
    .local v1, "stream":I
    move-object v0, p0

    #@1f
    move v2, p1

    #@20
    move v3, p2

    #@21
    move-object v4, p3

    #@22
    move v5, p4

    #@23
    move v6, p5

    #@24
    .line 251
    invoke-direct/range {v0 .. v7}, Lcom/android/server/media/MediaSessionRecord;->postAdjustLocalVolume(IIILjava/lang/String;IZI)V

    #@27
    .line 243
    .end local v1    # "stream":I
    :cond_2
    :goto_0
    return-void

    #@28
    .line 254
    :cond_3
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    #@2a
    if-nez v0, :cond_4

    #@2c
    .line 256
    return-void

    #@2d
    .line 258
    :cond_4
    const/16 v0, 0x65

    #@2f
    if-eq p1, v0, :cond_5

    #@31
    .line 259
    const/16 v0, -0x64

    #@33
    if-ne p1, v0, :cond_6

    #@35
    .line 261
    :cond_5
    const-string/jumbo v0, "MediaSessionRecord"

    #@38
    const-string/jumbo v2, "Muting remote playback is not supported"

    #@3b
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    .line 262
    return-void

    #@3f
    .line 260
    :cond_6
    const/16 v0, 0x64

    #@41
    if-eq p1, v0, :cond_5

    #@43
    .line 264
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    #@45
    invoke-virtual {v0, p1}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->adjustVolume(I)V

    #@48
    .line 266
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    #@4a
    if-gez v0, :cond_8

    #@4c
    iget v8, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    #@4e
    .line 267
    .local v8, "volumeBefore":I
    :goto_1
    add-int v0, v8, p1

    #@50
    iput v0, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    #@52
    .line 268
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    #@54
    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    #@56
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    #@59
    move-result v0

    #@5a
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    #@5d
    move-result v0

    #@5e
    iput v0, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    #@60
    .line 269
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    #@62
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    #@64
    invoke-virtual {v0, v2}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@67
    .line 270
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    #@69
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    #@6b
    const-wide/16 v4, 0x3e8

    #@6d
    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@70
    .line 271
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    #@72
    if-eq v8, v0, :cond_7

    #@74
    .line 272
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushVolumeUpdate()V

    #@77
    .line 274
    :cond_7
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    #@79
    invoke-virtual {v0, p2, p0}, Lcom/android/server/media/MediaSessionService;->notifyRemoteVolumeChanged(ILcom/android/server/media/MediaSessionRecord;)V

    #@7c
    .line 276
    sget-boolean v0, Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z

    #@7e
    if-eqz v0, :cond_2

    #@80
    .line 277
    const-string/jumbo v0, "MediaSessionRecord"

    #@83
    new-instance v2, Ljava/lang/StringBuilder;

    #@85
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@88
    const-string/jumbo v3, "Adjusted optimistic volume to "

    #@8b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v2

    #@8f
    iget v3, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    #@91
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@94
    move-result-object v2

    #@95
    const-string/jumbo v3, " max is "

    #@98
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v2

    #@9c
    .line 278
    iget v3, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    #@9e
    .line 277
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v2

    #@a2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a5
    move-result-object v2

    #@a6
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@a9
    goto/16 :goto_0

    #@ab
    .line 266
    .end local v8    # "volumeBefore":I
    :cond_8
    iget v8, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    #@ad
    goto :goto_1
.end method

.method public binderDied()V
    .locals 1

    #@0
    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    #@2
    invoke-virtual {v0, p0}, Lcom/android/server/media/MediaSessionService;->sessionDied(Lcom/android/server/media/MediaSessionRecord;)V

    #@5
    .line 405
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 434
    new-instance v2, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9
    move-result-object v2

    #@a
    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mTag:Ljava/lang/String;

    #@c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    const-string/jumbo v3, " "

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@22
    .line 436
    new-instance v2, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    const-string/jumbo v3, "  "

    #@2e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    .line 437
    .local v0, "indent":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    const-string/jumbo v3, "ownerPid="

    #@42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v2

    #@46
    iget v3, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerPid:I

    #@48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v2

    #@4c
    const-string/jumbo v3, ", ownerUid="

    #@4f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v2

    #@53
    iget v3, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    #@55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@58
    move-result-object v2

    #@59
    .line 438
    const-string/jumbo v3, ", userId="

    #@5c
    .line 437
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v2

    #@60
    .line 438
    iget v3, p0, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    #@62
    .line 437
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@65
    move-result-object v2

    #@66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v2

    #@6a
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6d
    .line 439
    new-instance v2, Ljava/lang/StringBuilder;

    #@6f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@72
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v2

    #@76
    const-string/jumbo v3, "package="

    #@79
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v2

    #@7d
    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    #@7f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v2

    #@83
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@86
    move-result-object v2

    #@87
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8a
    .line 440
    new-instance v2, Ljava/lang/StringBuilder;

    #@8c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v2

    #@93
    const-string/jumbo v3, "launchIntent="

    #@96
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v2

    #@9a
    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mLaunchIntent:Landroid/app/PendingIntent;

    #@9c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v2

    #@a0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a3
    move-result-object v2

    #@a4
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a7
    .line 441
    new-instance v2, Ljava/lang/StringBuilder;

    #@a9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@ac
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v2

    #@b0
    const-string/jumbo v3, "mediaButtonReceiver="

    #@b3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v2

    #@b7
    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mMediaButtonReceiver:Landroid/app/PendingIntent;

    #@b9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v2

    #@bd
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c0
    move-result-object v2

    #@c1
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c4
    .line 442
    new-instance v2, Ljava/lang/StringBuilder;

    #@c6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c9
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v2

    #@cd
    const-string/jumbo v3, "active="

    #@d0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v2

    #@d4
    iget-boolean v3, p0, Lcom/android/server/media/MediaSessionRecord;->mIsActive:Z

    #@d6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v2

    #@da
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dd
    move-result-object v2

    #@de
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@e1
    .line 443
    new-instance v2, Ljava/lang/StringBuilder;

    #@e3
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v2

    #@ea
    const-string/jumbo v3, "flags="

    #@ed
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v2

    #@f1
    iget-wide v4, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    #@f3
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@f6
    move-result-object v2

    #@f7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fa
    move-result-object v2

    #@fb
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@fe
    .line 444
    new-instance v2, Ljava/lang/StringBuilder;

    #@100
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@103
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@106
    move-result-object v2

    #@107
    const-string/jumbo v3, "rating type="

    #@10a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10d
    move-result-object v2

    #@10e
    iget v3, p0, Lcom/android/server/media/MediaSessionRecord;->mRatingType:I

    #@110
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@113
    move-result-object v2

    #@114
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@117
    move-result-object v2

    #@118
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@11b
    .line 445
    new-instance v2, Ljava/lang/StringBuilder;

    #@11d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@120
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@123
    move-result-object v2

    #@124
    const-string/jumbo v3, "controllers: "

    #@127
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12a
    move-result-object v2

    #@12b
    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    #@12d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@130
    move-result v3

    #@131
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@134
    move-result-object v2

    #@135
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@138
    move-result-object v2

    #@139
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@13c
    .line 446
    new-instance v2, Ljava/lang/StringBuilder;

    #@13e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@141
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@144
    move-result-object v2

    #@145
    const-string/jumbo v3, "state="

    #@148
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14b
    move-result-object v2

    #@14c
    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    #@14e
    if-nez v3, :cond_0

    #@150
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@153
    move-result-object v1

    #@154
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@157
    move-result-object v1

    #@158
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@15b
    .line 447
    new-instance v1, Ljava/lang/StringBuilder;

    #@15d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@160
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@163
    move-result-object v1

    #@164
    const-string/jumbo v2, "audioAttrs="

    #@167
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16a
    move-result-object v1

    #@16b
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    #@16d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@170
    move-result-object v1

    #@171
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@174
    move-result-object v1

    #@175
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@178
    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    #@17a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@180
    move-result-object v1

    #@181
    const-string/jumbo v2, "volumeType="

    #@184
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@187
    move-result-object v1

    #@188
    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    #@18a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18d
    move-result-object v1

    #@18e
    const-string/jumbo v2, ", controlType="

    #@191
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@194
    move-result-object v1

    #@195
    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    #@197
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19a
    move-result-object v1

    #@19b
    .line 449
    const-string/jumbo v2, ", max="

    #@19e
    .line 448
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a1
    move-result-object v1

    #@1a2
    .line 449
    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    #@1a4
    .line 448
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a7
    move-result-object v1

    #@1a8
    .line 449
    const-string/jumbo v2, ", current="

    #@1ab
    .line 448
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ae
    move-result-object v1

    #@1af
    .line 449
    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    #@1b1
    .line 448
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b4
    move-result-object v1

    #@1b5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b8
    move-result-object v1

    #@1b9
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1bc
    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    #@1be
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c4
    move-result-object v1

    #@1c5
    const-string/jumbo v2, "metadata:"

    #@1c8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cb
    move-result-object v1

    #@1cc
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->getShortMetadataString()Ljava/lang/String;

    #@1cf
    move-result-object v2

    #@1d0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d3
    move-result-object v1

    #@1d4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d7
    move-result-object v1

    #@1d8
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1db
    .line 451
    new-instance v1, Ljava/lang/StringBuilder;

    #@1dd
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1e0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e3
    move-result-object v1

    #@1e4
    const-string/jumbo v2, "queueTitle="

    #@1e7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ea
    move-result-object v1

    #@1eb
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mQueueTitle:Ljava/lang/CharSequence;

    #@1ed
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@1f0
    move-result-object v1

    #@1f1
    const-string/jumbo v2, ", size="

    #@1f4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f7
    move-result-object v2

    #@1f8
    .line 452
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Landroid/content/pm/ParceledListSlice;

    #@1fa
    if-nez v1, :cond_1

    #@1fc
    const/4 v1, 0x0

    #@1fd
    .line 451
    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@200
    move-result-object v1

    #@201
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@204
    move-result-object v1

    #@205
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@208
    .line 433
    return-void

    #@209
    .line 446
    :cond_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    #@20b
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->toString()Ljava/lang/String;

    #@20e
    move-result-object v1

    #@20f
    goto/16 :goto_0

    #@211
    .line 452
    :cond_1
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Landroid/content/pm/ParceledListSlice;

    #@213
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    #@216
    move-result-object v1

    #@217
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@21a
    move-result v1

    #@21b
    goto :goto_1
.end method

.method public getAudioAttributes()Landroid/media/AudioAttributes;
    .locals 1

    #@0
    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    #@2
    return-object v0
.end method

.method public getCallback()Landroid/media/session/ISessionCallback;
    .locals 1

    #@0
    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    #@2
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->-get0(Lcom/android/server/media/MediaSessionRecord$SessionCb;)Landroid/media/session/ISessionCallback;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getControllerBinder()Landroid/media/session/ISessionController;
    .locals 1

    #@0
    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    #@2
    return-object v0
.end method

.method public getCurrentVolume()I
    .locals 1

    #@0
    .prologue
    .line 387
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    #@2
    return v0
.end method

.method public getFlags()J
    .locals 2

    #@0
    .prologue
    .line 198
    iget-wide v0, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    #@2
    return-wide v0
.end method

.method public getMaxVolume()I
    .locals 1

    #@0
    .prologue
    .line 377
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    #@2
    return v0
.end method

.method public getMediaButtonReceiver()Landroid/app/PendingIntent;
    .locals 1

    #@0
    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mMediaButtonReceiver:Landroid/app/PendingIntent;

    #@2
    return-object v0
.end method

.method public getOptimisticVolume()I
    .locals 1

    #@0
    .prologue
    .line 397
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    #@2
    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPlaybackType()I
    .locals 1

    #@0
    .prologue
    .line 348
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    #@2
    return v0
.end method

.method public getSessionBinder()Landroid/media/session/ISession;
    .locals 1

    #@0
    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSession:Lcom/android/server/media/MediaSessionRecord$SessionStub;

    #@2
    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mTag:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getUserId()I
    .locals 1

    #@0
    .prologue
    .line 217
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    #@2
    return v0
.end method

.method public getVolumeControl()I
    .locals 1

    #@0
    .prologue
    .line 367
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    #@2
    return v0
.end method

.method public hasFlag(I)Z
    .locals 4
    .param p1, "flag"    # I

    #@0
    .prologue
    .line 208
    iget-wide v0, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    #@2
    int-to-long v2, p1

    #@3
    and-long/2addr v0, v2

    #@4
    const-wide/16 v2, 0x0

    #@6
    cmp-long v0, v0, v2

    #@8
    if-eqz v0, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public isActive()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 317
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mIsActive:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    #@7
    if-eqz v1, :cond_1

    #@9
    :cond_0
    :goto_0
    return v0

    #@a
    :cond_1
    const/4 v0, 0x1

    #@b
    goto :goto_0
.end method

.method public isPlaybackActive(Z)Z
    .locals 9
    .param p1, "includeRecentlyActive"    # Z

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 329
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    #@4
    if-nez v4, :cond_0

    #@6
    move v2, v3

    #@7
    .line 330
    .local v2, "state":I
    :goto_0
    invoke-static {v2}, Landroid/media/session/MediaSession;->isActiveState(I)Z

    #@a
    move-result v4

    #@b
    if-eqz v4, :cond_1

    #@d
    .line 331
    return v8

    #@e
    .line 329
    .end local v2    # "state":I
    :cond_0
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    #@10
    invoke-virtual {v4}, Landroid/media/session/PlaybackState;->getState()I

    #@13
    move-result v2

    #@14
    goto :goto_0

    #@15
    .line 333
    .restart local v2    # "state":I
    :cond_1
    if-eqz p1, :cond_2

    #@17
    const/4 v4, 0x2

    #@18
    if-ne v2, v4, :cond_2

    #@1a
    .line 334
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@1d
    move-result-wide v4

    #@1e
    iget-wide v6, p0, Lcom/android/server/media/MediaSessionRecord;->mLastActiveTime:J

    #@20
    sub-long v0, v4, v6

    #@22
    .line 335
    .local v0, "inactiveTime":J
    const-wide/16 v4, 0x7530

    #@24
    cmp-long v4, v0, v4

    #@26
    if-gez v4, :cond_2

    #@28
    .line 336
    return v8

    #@29
    .line 339
    .end local v0    # "inactiveTime":J
    :cond_2
    return v3
.end method

.method public isSystemPriority()Z
    .locals 4

    #@0
    .prologue
    .line 227
    iget-wide v0, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    #@2
    const-wide/32 v2, 0x10000

    #@5
    and-long/2addr v0, v2

    #@6
    const-wide/16 v2, 0x0

    #@8
    cmp-long v0, v0, v2

    #@a
    if-eqz v0, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    :goto_0
    return v0

    #@e
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method public isTransportControlEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 401
    const/4 v0, 0x2

    #@1
    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaSessionRecord;->hasFlag(I)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public onDestroy()V
    .locals 3

    #@0
    .prologue
    .line 414
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 415
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eqz v0, :cond_0

    #@7
    monitor-exit v1

    #@8
    .line 416
    return-void

    #@9
    .line 418
    :cond_0
    const/4 v0, 0x1

    #@a
    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    #@c
    .line 419
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    #@e
    const/16 v2, 0x9

    #@10
    invoke-virtual {v0, v2}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13
    monitor-exit v1

    #@14
    .line 413
    return-void

    #@15
    .line 414
    :catchall_0
    move-exception v0

    #@16
    monitor-exit v1

    #@17
    throw v0
.end method

.method public sendMediaButton(Landroid/view/KeyEvent;ILandroid/os/ResultReceiver;ILjava/lang/String;)V
    .locals 1
    .param p1, "ke"    # Landroid/view/KeyEvent;
    .param p2, "sequenceId"    # I
    .param p3, "cb"    # Landroid/os/ResultReceiver;
    .param p4, "uid"    # I
    .param p5, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 429
    invoke-direct {p0, p4, p5}, Lcom/android/server/media/MediaSessionRecord;->updateCallingPackage(ILjava/lang/String;)V

    #@3
    .line 430
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    #@5
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->sendMediaButton(Landroid/view/KeyEvent;ILandroid/os/ResultReceiver;)Z

    #@8
    .line 428
    return-void
.end method

.method public setVolumeTo(IILjava/lang/String;I)V
    .locals 7
    .param p1, "value"    # I
    .param p2, "flags"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "uid"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 284
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    #@3
    const/4 v2, 0x1

    #@4
    if-ne v0, v2, :cond_1

    #@6
    .line 285
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    #@8
    invoke-static {v0}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    #@b
    move-result v1

    #@c
    .line 286
    .local v1, "stream":I
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    #@e
    move v2, p1

    #@f
    move v3, p2

    #@10
    move-object v4, p3

    #@11
    move v5, p4

    #@12
    invoke-virtual/range {v0 .. v5}, Landroid/media/AudioManagerInternal;->setStreamVolumeForUid(IIILjava/lang/String;I)V

    #@15
    .line 283
    .end local v1    # "stream":I
    :cond_0
    :goto_0
    return-void

    #@16
    .line 288
    :cond_1
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    #@18
    const/4 v2, 0x2

    #@19
    if-eq v0, v2, :cond_2

    #@1b
    .line 290
    return-void

    #@1c
    .line 292
    :cond_2
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    #@1e
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    #@21
    move-result v0

    #@22
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    #@25
    move-result p1

    #@26
    .line 293
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    #@28
    invoke-virtual {v0, p1}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->setVolumeTo(I)V

    #@2b
    .line 295
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    #@2d
    if-gez v0, :cond_4

    #@2f
    iget v6, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    #@31
    .line 296
    .local v6, "volumeBefore":I
    :goto_1
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    #@33
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    #@36
    move-result v0

    #@37
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    #@3a
    move-result v0

    #@3b
    iput v0, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    #@3d
    .line 297
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    #@3f
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    #@41
    invoke-virtual {v0, v2}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@44
    .line 298
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    #@46
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    #@48
    const-wide/16 v4, 0x3e8

    #@4a
    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@4d
    .line 299
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    #@4f
    if-eq v6, v0, :cond_3

    #@51
    .line 300
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushVolumeUpdate()V

    #@54
    .line 302
    :cond_3
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    #@56
    invoke-virtual {v0, p2, p0}, Lcom/android/server/media/MediaSessionService;->notifyRemoteVolumeChanged(ILcom/android/server/media/MediaSessionRecord;)V

    #@59
    .line 304
    sget-boolean v0, Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z

    #@5b
    if-eqz v0, :cond_0

    #@5d
    .line 305
    const-string/jumbo v0, "MediaSessionRecord"

    #@60
    new-instance v2, Ljava/lang/StringBuilder;

    #@62
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@65
    const-string/jumbo v3, "Set optimistic volume to "

    #@68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v2

    #@6c
    iget v3, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    #@6e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@71
    move-result-object v2

    #@72
    const-string/jumbo v3, " max is "

    #@75
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v2

    #@79
    .line 306
    iget v3, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    #@7b
    .line 305
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v2

    #@7f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v2

    #@83
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@86
    goto :goto_0

    #@87
    .line 295
    .end local v6    # "volumeBefore":I
    :cond_4
    iget v6, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    #@89
    .restart local v6    # "volumeBefore":I
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const-string/jumbo v1, "/"

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mTag:Ljava/lang/String;

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    const-string/jumbo v1, " (uid="

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    iget v1, p0, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    const-string/jumbo v1, ")"

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    return-object v0
.end method
