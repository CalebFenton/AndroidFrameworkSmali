.class public Landroid/preference/SeekBarVolumizer;
.super Ljava/lang/Object;
.source "SeekBarVolumizer.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/SeekBarVolumizer$Callback;,
        Landroid/preference/SeekBarVolumizer$VolumeHandler;,
        Landroid/preference/SeekBarVolumizer$H;,
        Landroid/preference/SeekBarVolumizer$Receiver;,
        Landroid/preference/SeekBarVolumizer$Observer;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final greylist-max-o CHECK_RINGTONE_PLAYBACK_DELAY_MS:I = 0x3e8

.field private static final blacklist CHECK_UPDATE_SLIDER_LATER_MS:I = 0x1f4

.field private static final blacklist DURATION_TO_START_DELAYING:J

.field private static final blacklist MSG_GROUP_VOLUME_CHANGED:I = 0x1

.field private static final greylist-max-o MSG_INIT_SAMPLE:I = 0x3

.field private static final greylist-max-o MSG_SET_STREAM_VOLUME:I = 0x0

.field private static final greylist-max-o MSG_START_SAMPLE:I = 0x1

.field private static final greylist-max-o MSG_STOP_SAMPLE:I = 0x2

.field private static final blacklist MSG_UPDATE_SLIDER_MAYBE_LATER:I = 0x4

.field private static final blacklist SET_STREAM_VOLUME_DELAY_MS:J

.field private static final blacklist START_SAMPLE_DELAY_MS:J

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SeekBarVolumizer"

.field private static blacklist sStopVolumeTime:J


# instance fields
.field private greylist-max-o mAffectedByRingerMode:Z

.field private greylist-max-o mAllowAlarms:Z

.field private greylist-max-o mAllowMedia:Z

.field private greylist-max-o mAllowRinger:Z

.field private blacklist mAttributes:Landroid/media/AudioAttributes;

.field private final greylist mAudioManager:Landroid/media/AudioManager;

.field private final greylist-max-o mCallback:Landroid/preference/SeekBarVolumizer$Callback;

.field private final greylist mContext:Landroid/content/Context;

.field private final greylist-max-o mDefaultUri:Landroid/net/Uri;

.field private final blacklist mDeviceHasProductStrategies:Z

.field private greylist-max-o mHandler:Landroid/os/Handler;

.field private greylist-max-o mLastAudibleStreamVolume:I

.field private greylist mLastProgress:I

.field private final greylist-max-o mMaxStreamVolume:I

.field private greylist-max-o mMuted:Z

.field private final greylist-max-o mNotificationManager:Landroid/app/NotificationManager;

.field private greylist-max-o mNotificationOrRing:Z

.field private greylist-max-o mNotificationPolicy:Landroid/app/NotificationManager$Policy;

.field private greylist mOriginalStreamVolume:I

.field private blacklist mPlaySample:Z

.field private final greylist-max-o mReceiver:Landroid/preference/SeekBarVolumizer$Receiver;

.field private greylist-max-o mRingerMode:I

.field private greylist mRingtone:Landroid/media/Ringtone;

.field private greylist mSeekBar:Landroid/widget/SeekBar;

.field private final greylist mStreamType:I

.field private final greylist-max-o mUiHandler:Landroid/preference/SeekBarVolumizer$H;

.field private greylist-max-o mVolumeBeforeMute:I

.field private final blacklist mVolumeGroupCallback:Landroid/media/AudioManager$VolumeGroupCallback;

.field private blacklist mVolumeGroupId:I

.field private final blacklist mVolumeHandler:Landroid/os/Handler;

.field private greylist-max-o mVolumeObserver:Landroid/preference/SeekBarVolumizer$Observer;

.field private greylist-max-o mZenMode:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAffectedByRingerMode(Landroid/preference/SeekBarVolumizer;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/preference/SeekBarVolumizer;->mAffectedByRingerMode:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAudioManager(Landroid/preference/SeekBarVolumizer;)Landroid/media/AudioManager;
    .registers 1

    iget-object p0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/preference/SeekBarVolumizer;)Landroid/preference/SeekBarVolumizer$Callback;
    .registers 1

    iget-object p0, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/preference/SeekBarVolumizer;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeviceHasProductStrategies(Landroid/preference/SeekBarVolumizer;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/preference/SeekBarVolumizer;->mDeviceHasProductStrategies:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/preference/SeekBarVolumizer;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastAudibleStreamVolume(Landroid/preference/SeekBarVolumizer;)I
    .registers 1

    iget p0, p0, Landroid/preference/SeekBarVolumizer;->mLastAudibleStreamVolume:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMuted(Landroid/preference/SeekBarVolumizer;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/preference/SeekBarVolumizer;->mMuted:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNotificationManager(Landroid/preference/SeekBarVolumizer;)Landroid/app/NotificationManager;
    .registers 1

    iget-object p0, p0, Landroid/preference/SeekBarVolumizer;->mNotificationManager:Landroid/app/NotificationManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNotificationOrRing(Landroid/preference/SeekBarVolumizer;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/preference/SeekBarVolumizer;->mNotificationOrRing:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNotificationPolicy(Landroid/preference/SeekBarVolumizer;)Landroid/app/NotificationManager$Policy;
    .registers 1

    iget-object p0, p0, Landroid/preference/SeekBarVolumizer;->mNotificationPolicy:Landroid/app/NotificationManager$Policy;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSeekBar(Landroid/preference/SeekBarVolumizer;)Landroid/widget/SeekBar;
    .registers 1

    iget-object p0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStreamType(Landroid/preference/SeekBarVolumizer;)I
    .registers 1

    iget p0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUiHandler(Landroid/preference/SeekBarVolumizer;)Landroid/preference/SeekBarVolumizer$H;
    .registers 1

    iget-object p0, p0, Landroid/preference/SeekBarVolumizer;->mUiHandler:Landroid/preference/SeekBarVolumizer$H;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVolumeGroupId(Landroid/preference/SeekBarVolumizer;)I
    .registers 1

    iget p0, p0, Landroid/preference/SeekBarVolumizer;->mVolumeGroupId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVolumeHandler(Landroid/preference/SeekBarVolumizer;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/preference/SeekBarVolumizer;->mVolumeHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAllowAlarms(Landroid/preference/SeekBarVolumizer;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/preference/SeekBarVolumizer;->mAllowAlarms:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAllowMedia(Landroid/preference/SeekBarVolumizer;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/preference/SeekBarVolumizer;->mAllowMedia:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAllowRinger(Landroid/preference/SeekBarVolumizer;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/preference/SeekBarVolumizer;->mAllowRinger:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastAudibleStreamVolume(Landroid/preference/SeekBarVolumizer;I)V
    .registers 2

    iput p1, p0, Landroid/preference/SeekBarVolumizer;->mLastAudibleStreamVolume:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastProgress(Landroid/preference/SeekBarVolumizer;I)V
    .registers 2

    iput p1, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMuted(Landroid/preference/SeekBarVolumizer;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/preference/SeekBarVolumizer;->mMuted:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNotificationPolicy(Landroid/preference/SeekBarVolumizer;Landroid/app/NotificationManager$Policy;)V
    .registers 2

    iput-object p1, p0, Landroid/preference/SeekBarVolumizer;->mNotificationPolicy:Landroid/app/NotificationManager$Policy;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRingerMode(Landroid/preference/SeekBarVolumizer;I)V
    .registers 2

    iput p1, p0, Landroid/preference/SeekBarVolumizer;->mRingerMode:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmZenMode(Landroid/preference/SeekBarVolumizer;I)V
    .registers 2

    iput p1, p0, Landroid/preference/SeekBarVolumizer;->mZenMode:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetVolumeGroupIdForLegacyStreamType(Landroid/preference/SeekBarVolumizer;I)I
    .registers 2

    invoke-direct {p0, p1}, Landroid/preference/SeekBarVolumizer;->getVolumeGroupIdForLegacyStreamType(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misDelay(Landroid/preference/SeekBarVolumizer;)Z
    .registers 1

    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->isDelay()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misZenMuted(Landroid/preference/SeekBarVolumizer;)Z
    .registers 1

    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->isZenMuted()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mpostUpdateSliderMaybeLater(Landroid/preference/SeekBarVolumizer;)V
    .registers 1

    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->postUpdateSliderMaybeLater()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateSlider(Landroid/preference/SeekBarVolumizer;)V
    .registers 1

    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->updateSlider()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 5

    .line 88
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/preference/SeekBarVolumizer;->sStopVolumeTime:J

    .line 151
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Landroid/preference/SeekBarVolumizer;->SET_STREAM_VOLUME_DELAY_MS:J

    .line 152
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Landroid/preference/SeekBarVolumizer;->START_SAMPLE_DELAY_MS:J

    .line 153
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Landroid/preference/SeekBarVolumizer;->DURATION_TO_START_DELAYING:J

    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;ILandroid/net/Uri;Landroid/preference/SeekBarVolumizer$Callback;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "streamType"    # I
    .param p3, "defaultUri"    # Landroid/net/Uri;
    .param p4, "callback"    # Landroid/preference/SeekBarVolumizer$Callback;

    .line 162
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "streamType":I
    .end local p3    # "defaultUri":Landroid/net/Uri;
    .end local p4    # "callback":Landroid/preference/SeekBarVolumizer$Callback;
    .local v1, "context":Landroid/content/Context;
    .local v2, "streamType":I
    .local v3, "defaultUri":Landroid/net/Uri;
    .local v4, "callback":Landroid/preference/SeekBarVolumizer$Callback;
    invoke-direct/range {v0 .. v5}, Landroid/preference/SeekBarVolumizer;-><init>(Landroid/content/Context;ILandroid/net/Uri;Landroid/preference/SeekBarVolumizer$Callback;Z)V

    .line 163
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;ILandroid/net/Uri;Landroid/preference/SeekBarVolumizer$Callback;Z)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "streamType"    # I
    .param p3, "defaultUri"    # Landroid/net/Uri;
    .param p4, "callback"    # Landroid/preference/SeekBarVolumizer$Callback;
    .param p5, "playSample"    # Z

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Landroid/preference/SeekBarVolumizer$VolumeHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/preference/SeekBarVolumizer$VolumeHandler;-><init>(Landroid/preference/SeekBarVolumizer;Landroid/preference/SeekBarVolumizer-IA;)V

    iput-object v0, p0, Landroid/preference/SeekBarVolumizer;->mVolumeHandler:Landroid/os/Handler;

    .line 93
    new-instance v0, Landroid/preference/SeekBarVolumizer$1;

    invoke-direct {v0, p0}, Landroid/preference/SeekBarVolumizer$1;-><init>(Landroid/preference/SeekBarVolumizer;)V

    iput-object v0, p0, Landroid/preference/SeekBarVolumizer;->mVolumeGroupCallback:Landroid/media/AudioManager$VolumeGroupCallback;

    .line 109
    new-instance v0, Landroid/preference/SeekBarVolumizer$H;

    invoke-direct {v0, p0, v1}, Landroid/preference/SeekBarVolumizer$H;-><init>(Landroid/preference/SeekBarVolumizer;Landroid/preference/SeekBarVolumizer-IA;)V

    iput-object v0, p0, Landroid/preference/SeekBarVolumizer;->mUiHandler:Landroid/preference/SeekBarVolumizer$H;

    .line 120
    new-instance v0, Landroid/preference/SeekBarVolumizer$Receiver;

    invoke-direct {v0, p0, v1}, Landroid/preference/SeekBarVolumizer$Receiver;-><init>(Landroid/preference/SeekBarVolumizer;Landroid/preference/SeekBarVolumizer-IA;)V

    iput-object v0, p0, Landroid/preference/SeekBarVolumizer;->mReceiver:Landroid/preference/SeekBarVolumizer$Receiver;

    .line 133
    const/4 v0, -0x1

    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    .line 138
    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 172
    iput-object p1, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    .line 173
    const-class v0, Landroid/media/AudioManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    .line 174
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->hasAudioProductStrategies()Z

    move-result v0

    iput-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mDeviceHasProductStrategies:Z

    .line 175
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Landroid/preference/SeekBarVolumizer;->mNotificationManager:Landroid/app/NotificationManager;

    .line 176
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/SeekBarVolumizer;->mNotificationPolicy:Landroid/app/NotificationManager$Policy;

    .line 177
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mNotificationPolicy:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x20

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_55

    move v0, v2

    goto :goto_56

    :cond_55
    move v0, v1

    :goto_56
    iput-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mAllowAlarms:Z

    .line 179
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mNotificationPolicy:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_61

    move v1, v2

    :cond_61
    iput-boolean v1, p0, Landroid/preference/SeekBarVolumizer;->mAllowMedia:Z

    .line 181
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mNotificationPolicy:Landroid/app/NotificationManager$Policy;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyRingerSoundsMuted(Landroid/app/NotificationManager$Policy;)Z

    move-result v0

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mAllowRinger:Z

    .line 183
    iput p2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    .line 184
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamAffectedByRingerMode(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mAffectedByRingerMode:Z

    .line 185
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-static {v0}, Landroid/preference/SeekBarVolumizer;->isNotificationOrRing(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mNotificationOrRing:Z

    .line 186
    iget-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mNotificationOrRing:Z

    if-eqz v0, :cond_8c

    .line 187
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mRingerMode:I

    .line 189
    :cond_8c
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mZenMode:I

    .line 191
    iget-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mDeviceHasProductStrategies:Z

    if-eqz v0, :cond_a8

    .line 192
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-direct {p0, v0}, Landroid/preference/SeekBarVolumizer;->getVolumeGroupIdForLegacyStreamType(I)I

    move-result v0

    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mVolumeGroupId:I

    .line 193
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-direct {p0, v0}, Landroid/preference/SeekBarVolumizer;->getAudioAttributesForLegacyStreamType(I)Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAttributes:Landroid/media/AudioAttributes;

    .line 197
    :cond_a8
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mMaxStreamVolume:I

    .line 198
    iput-object p4, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    .line 199
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mOriginalStreamVolume:I

    .line 200
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v0

    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mLastAudibleStreamVolume:I

    .line 201
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mMuted:Z

    .line 202
    iput-boolean p5, p0, Landroid/preference/SeekBarVolumizer;->mPlaySample:Z

    .line 203
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    if-eqz v0, :cond_e3

    .line 204
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    iget-boolean v1, p0, Landroid/preference/SeekBarVolumizer;->mMuted:Z

    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->isZenMuted()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/preference/SeekBarVolumizer$Callback;->onMuted(ZZ)V

    .line 206
    :cond_e3
    if-nez p3, :cond_f7

    .line 207
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_ed

    .line 208
    sget-object p3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    goto :goto_f7

    .line 209
    :cond_ed
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_f5

    .line 210
    sget-object p3, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_f7

    .line 212
    :cond_f5
    sget-object p3, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    .line 215
    :cond_f7
    :goto_f7
    iput-object p3, p0, Landroid/preference/SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    .line 216
    return-void
.end method

.method private blacklist getAudioAttributesForLegacyStreamType(I)Landroid/media/AudioAttributes;
    .registers 5
    .param p1, "streamType"    # I

    .line 247
    invoke-static {}, Landroid/media/AudioManager;->getAudioProductStrategies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/AudioProductStrategy;

    .line 248
    .local v1, "productStrategy":Landroid/media/audiopolicy/AudioProductStrategy;
    invoke-virtual {v1, p1}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioAttributesForLegacyStreamType(I)Landroid/media/AudioAttributes;

    move-result-object v2

    .line 249
    .local v2, "aa":Landroid/media/AudioAttributes;
    if-eqz v2, :cond_1b

    .line 250
    return-object v2

    .line 252
    .end local v1    # "productStrategy":Landroid/media/audiopolicy/AudioProductStrategy;
    .end local v2    # "aa":Landroid/media/AudioAttributes;
    :cond_1b
    goto :goto_8

    .line 253
    :cond_1c
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 254
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 255
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 253
    return-object v0
.end method

.method private blacklist getVolumeGroupIdForLegacyStreamType(I)I
    .registers 6
    .param p1, "streamType"    # I

    .line 230
    invoke-static {}, Landroid/media/AudioManager;->getAudioProductStrategies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/AudioProductStrategy;

    .line 231
    .local v1, "productStrategy":Landroid/media/audiopolicy/AudioProductStrategy;
    invoke-virtual {v1, p1}, Landroid/media/audiopolicy/AudioProductStrategy;->getVolumeGroupIdForLegacyStreamType(I)I

    move-result v3

    .line 232
    .local v3, "volumeGroupId":I
    if-eq v3, v2, :cond_1c

    .line 233
    return v3

    .line 235
    .end local v1    # "productStrategy":Landroid/media/audiopolicy/AudioProductStrategy;
    .end local v3    # "volumeGroupId":I
    :cond_1c
    goto :goto_8

    .line 237
    :cond_1d
    invoke-static {}, Landroid/media/AudioManager;->getAudioProductStrategies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/preference/SeekBarVolumizer$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/preference/SeekBarVolumizer$$ExternalSyntheticLambda0;-><init>()V

    .line 238
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/preference/SeekBarVolumizer$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/preference/SeekBarVolumizer$$ExternalSyntheticLambda1;-><init>()V

    .line 240
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 241
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    .line 242
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 237
    return v0
.end method

.method private blacklist hasAudioProductStrategies()Z
    .registers 2

    .line 225
    invoke-static {}, Landroid/media/AudioManager;->getAudioProductStrategies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private static greylist-max-o isAlarmsStream(I)Z
    .registers 2
    .param p0, "stream"    # I

    .line 263
    const/4 v0, 0x4

    if-ne p0, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method private blacklist isDelay()Z
    .registers 5

    .line 384
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Landroid/preference/SeekBarVolumizer;->sStopVolumeTime:J

    sub-long/2addr v0, v2

    .line 385
    .local v0, "durationTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_15

    sget-wide v2, Landroid/preference/SeekBarVolumizer;->DURATION_TO_START_DELAYING:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_15

    const/4 v2, 0x1

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :goto_16
    return v2
.end method

.method private static greylist-max-o isMediaStream(I)Z
    .registers 2
    .param p0, "stream"    # I

    .line 267
    const/4 v0, 0x3

    if-ne p0, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method private static greylist-max-o isNotificationOrRing(I)Z
    .registers 2
    .param p0, "stream"    # I

    .line 259
    const/4 v0, 0x2

    if-eq p0, v0, :cond_9

    const/4 v0, 0x5

    if-ne p0, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 v0, 0x1

    :goto_a
    return v0
.end method

.method private greylist-max-o isZenMuted()Z
    .registers 4

    .line 282
    iget-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mNotificationOrRing:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mZenMode:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3a

    :cond_a
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mZenMode:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3a

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mZenMode:I

    if-ne v0, v1, :cond_38

    iget-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mAllowAlarms:Z

    if-nez v0, :cond_1f

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    .line 285
    invoke-static {v0}, Landroid/preference/SeekBarVolumizer;->isAlarmsStream(I)Z

    move-result v0

    if-nez v0, :cond_3a

    :cond_1f
    iget-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mAllowMedia:Z

    if-nez v0, :cond_2b

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    .line 286
    invoke-static {v0}, Landroid/preference/SeekBarVolumizer;->isMediaStream(I)Z

    move-result v0

    if-nez v0, :cond_3a

    :cond_2b
    iget-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mAllowRinger:Z

    if-nez v0, :cond_38

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    .line 287
    invoke-static {v0}, Landroid/preference/SeekBarVolumizer;->isNotificationOrRing(I)Z

    move-result v0

    if-eqz v0, :cond_38

    goto :goto_3a

    :cond_38
    const/4 v1, 0x0

    goto :goto_3b

    :cond_3a
    :goto_3a
    nop

    .line 282
    :goto_3b
    return v1
.end method

.method static synthetic blacklist lambda$getVolumeGroupIdForLegacyStreamType$0(Landroid/media/audiopolicy/AudioProductStrategy;)Ljava/lang/Integer;
    .registers 2
    .param p0, "strategy"    # Landroid/media/audiopolicy/AudioProductStrategy;

    .line 238
    nop

    .line 239
    invoke-static {}, Landroid/media/audiopolicy/AudioProductStrategy;->getDefaultAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 238
    invoke-virtual {p0, v0}, Landroid/media/audiopolicy/AudioProductStrategy;->getVolumeGroupIdForAudioAttributes(Landroid/media/AudioAttributes;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$getVolumeGroupIdForLegacyStreamType$1(Ljava/lang/Integer;)Z
    .registers 3
    .param p0, "volumeGroupId"    # Ljava/lang/Integer;

    .line 240
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private greylist-max-o onInitSample()V
    .registers 3

    .line 345
    monitor-enter p0

    .line 346
    :try_start_1
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    .line 347
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_16

    .line 348
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 350
    :cond_16
    monitor-exit p0

    .line 351
    return-void

    .line 350
    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method private greylist-max-o onStartSample()V
    .registers 5

    .line 399
    invoke-virtual {p0}, Landroid/preference/SeekBarVolumizer;->isSamplePlaying()Z

    move-result v0

    if-nez v0, :cond_5a

    .line 400
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    if-eqz v0, :cond_f

    .line 401
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    invoke-interface {v0, p0}, Landroid/preference/SeekBarVolumizer$Callback;->onSampleStarting(Landroid/preference/SeekBarVolumizer;)V

    .line 404
    :cond_f
    monitor-enter p0

    .line 405
    :try_start_10
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_57

    if-eqz v0, :cond_55

    .line 407
    :try_start_14
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    .line 408
    invoke-virtual {v2}, Landroid/media/Ringtone;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    .line 409
    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const-string v2, "VX_AOSP_SAMPLESOUND"

    .line 410
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->addTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 411
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 407
    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 412
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V
    :try_end_39
    .catchall {:try_start_14 .. :try_end_39} :catchall_3a

    .line 415
    goto :goto_55

    .line 413
    :catchall_3a
    move-exception v0

    .line 414
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_3b
    const-string v1, "SeekBarVolumizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error playing ringtone, stream "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 417
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_55
    :goto_55
    monitor-exit p0

    goto :goto_5a

    :catchall_57
    move-exception v0

    monitor-exit p0
    :try_end_59
    .catchall {:try_start_3b .. :try_end_59} :catchall_57

    throw v0

    .line 419
    :cond_5a
    :goto_5a
    return-void
.end method

.method private greylist-max-o onStopSample()V
    .registers 2

    .line 431
    monitor-enter p0

    .line 432
    :try_start_1
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_a

    .line 433
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 435
    :cond_a
    monitor-exit p0

    .line 436
    return-void

    .line 435
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method private blacklist onUpdateSliderMaybeLater()V
    .registers 2

    .line 362
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->isDelay()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 363
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->postUpdateSliderMaybeLater()V

    .line 364
    return-void

    .line 366
    :cond_a
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->updateSlider()V

    .line 367
    return-void
.end method

.method private greylist-max-o postSetVolume(I)V
    .registers 6
    .param p1, "progress"    # I

    .line 483
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_5

    return-void

    .line 485
    :cond_5
    iput p1, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    .line 486
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 487
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 488
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 489
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 490
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->isDelay()Z

    move-result v2

    if-eqz v2, :cond_2a

    sget-wide v2, Landroid/preference/SeekBarVolumizer;->SET_STREAM_VOLUME_DELAY_MS:J

    goto :goto_2c

    :cond_2a
    const-wide/16 v2, 0x0

    .line 489
    :goto_2c
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 491
    return-void
.end method

.method private greylist-max-o postStartSample()V
    .registers 5

    .line 354
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_5

    return-void

    .line 355
    :cond_5
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 356
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 357
    invoke-virtual {p0}, Landroid/preference/SeekBarVolumizer;->isSamplePlaying()Z

    move-result v2

    if-eqz v2, :cond_1c

    const-wide/16 v2, 0x3e8

    goto :goto_27

    .line 358
    :cond_1c
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->isDelay()Z

    move-result v2

    if-eqz v2, :cond_25

    sget-wide v2, Landroid/preference/SeekBarVolumizer;->START_SAMPLE_DELAY_MS:J

    goto :goto_27

    :cond_25
    const-wide/16 v2, 0x0

    .line 356
    :goto_27
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 359
    return-void
.end method

.method private greylist-max-o postStopSample()V
    .registers 4

    .line 422
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_5

    return-void

    .line 423
    :cond_5
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->setStopVolumeTime()V

    .line 425
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 426
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 427
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 428
    return-void
.end method

.method private blacklist postUpdateSliderMaybeLater()V
    .registers 5

    .line 370
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_5

    return-void

    .line 371
    :cond_5
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 372
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 374
    return-void
.end method

.method private blacklist registerVolumeGroupCb()V
    .registers 4

    .line 690
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mVolumeGroupId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    .line 691
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mVolumeGroupCallback:Landroid/media/AudioManager$VolumeGroupCallback;

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->registerVolumeGroupCallback(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$VolumeGroupCallback;)V

    .line 692
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->updateSlider()V

    .line 694
    :cond_14
    return-void
.end method

.method private blacklist setStopVolumeTime()V
    .registers 3

    .line 390
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-eqz v0, :cond_13

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_13

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_13

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_19

    .line 394
    :cond_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Landroid/preference/SeekBarVolumizer;->sStopVolumeTime:J

    .line 396
    :cond_19
    return-void
.end method

.method private blacklist unregisterVolumeGroupCb()V
    .registers 3

    .line 697
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mVolumeGroupId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 698
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mVolumeGroupCallback:Landroid/media/AudioManager$VolumeGroupCallback;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterVolumeGroupCallback(Landroid/media/AudioManager$VolumeGroupCallback;)V

    .line 700
    :cond_c
    return-void
.end method

.method private greylist-max-o updateSlider()V
    .registers 5

    .line 588
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_25

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_25

    .line 589
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 590
    .local v0, "volume":I
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v1

    .line 591
    .local v1, "lastAudibleVolume":I
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v2

    .line 592
    .local v2, "mute":Z
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mUiHandler:Landroid/preference/SeekBarVolumizer$H;

    invoke-virtual {v3, v0, v1, v2}, Landroid/preference/SeekBarVolumizer$H;->postUpdateSlider(IIZ)V

    .line 594
    .end local v0    # "volume":I
    .end local v1    # "lastAudibleVolume":I
    .end local v2    # "mute":Z
    :cond_25
    return-void
.end method


# virtual methods
.method public greylist-max-o changeVolumeBy(I)V
    .registers 3
    .param p1, "amount"    # I

    .line 525
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    .line 526
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/preference/SeekBarVolumizer;->postSetVolume(I)V

    .line 527
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->postStartSample()V

    .line 528
    const/4 v0, -0x1

    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 529
    return-void
.end method

.method public greylist-max-o getSeekBar()Landroid/widget/SeekBar;
    .registers 2

    .line 521
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)Z
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 310
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_70

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "invalid SeekBarVolumizer message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeekBarVolumizer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d

    .line 336
    :pswitch_21
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->onUpdateSliderMaybeLater()V

    .line 337
    goto :goto_6d

    .line 331
    :pswitch_25
    iget-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mPlaySample:Z

    if-eqz v0, :cond_6d

    .line 332
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->onInitSample()V

    goto :goto_6d

    .line 326
    :pswitch_2d
    iget-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mPlaySample:Z

    if-eqz v0, :cond_6d

    .line 327
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->onStopSample()V

    goto :goto_6d

    .line 321
    :pswitch_35
    iget-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mPlaySample:Z

    if-eqz v0, :cond_6d

    .line 322
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->onStartSample()V

    goto :goto_6d

    .line 312
    :pswitch_3d
    iget-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mMuted:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_50

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    if-lez v0, :cond_50

    .line 313
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_61

    .line 314
    :cond_50
    iget-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mMuted:Z

    if-nez v0, :cond_61

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    if-nez v0, :cond_61

    .line 315
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/16 v3, -0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 317
    :cond_61
    :goto_61
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    const/16 v3, 0x400

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 319
    nop

    .line 341
    :cond_6d
    :goto_6d
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_35
        :pswitch_2d
        :pswitch_25
        :pswitch_21
    .end packed-switch
.end method

.method public greylist-max-o isSamplePlaying()Z
    .registers 2

    .line 507
    monitor-enter p0

    .line 508
    :try_start_1
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    monitor-exit p0

    return v0

    .line 509
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public greylist-max-o muteVolume()V
    .registers 5

    .line 532
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mVolumeBeforeMute:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_18

    .line 533
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mVolumeBeforeMute:I

    invoke-virtual {v0, v3, v1}, Landroid/widget/SeekBar;->setProgress(IZ)V

    .line 534
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mVolumeBeforeMute:I

    invoke-direct {p0, v0}, Landroid/preference/SeekBarVolumizer;->postSetVolume(I)V

    .line 535
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->postStartSample()V

    .line 536
    iput v2, p0, Landroid/preference/SeekBarVolumizer;->mVolumeBeforeMute:I

    goto :goto_2c

    .line 538
    :cond_18
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 539
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/SeekBar;->setProgress(IZ)V

    .line 540
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->postStopSample()V

    .line 541
    invoke-direct {p0, v2}, Landroid/preference/SeekBarVolumizer;->postSetVolume(I)V

    .line 543
    :goto_2c
    return-void
.end method

.method public whitelist onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 5
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    .line 474
    if-eqz p3, :cond_5

    .line 475
    invoke-direct {p0, p2}, Landroid/preference/SeekBarVolumizer;->postSetVolume(I)V

    .line 477
    :cond_5
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    if-eqz v0, :cond_e

    .line 478
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    invoke-interface {v0, p1, p2, p3}, Landroid/preference/SeekBarVolumizer$Callback;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 480
    :cond_e
    return-void
.end method

.method public greylist-max-o onRestoreInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V
    .registers 4
    .param p1, "volumeStore"    # Landroid/preference/VolumePreference$VolumeStore;

    .line 553
    iget v0, p1, Landroid/preference/VolumePreference$VolumeStore;->volume:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    .line 554
    iget v0, p1, Landroid/preference/VolumePreference$VolumeStore;->originalVolume:I

    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mOriginalStreamVolume:I

    .line 555
    iget v0, p1, Landroid/preference/VolumePreference$VolumeStore;->volume:I

    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    .line 556
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    invoke-direct {p0, v0}, Landroid/preference/SeekBarVolumizer;->postSetVolume(I)V

    .line 558
    :cond_12
    return-void
.end method

.method public greylist-max-o onSaveInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V
    .registers 3
    .param p1, "volumeStore"    # Landroid/preference/VolumePreference$VolumeStore;

    .line 546
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    if-ltz v0, :cond_c

    .line 547
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    iput v0, p1, Landroid/preference/VolumePreference$VolumeStore;->volume:I

    .line 548
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mOriginalStreamVolume:I

    iput v0, p1, Landroid/preference/VolumePreference$VolumeStore;->originalVolume:I

    .line 550
    :cond_c
    return-void
.end method

.method public whitelist onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 494
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    if-eqz v0, :cond_9

    .line 495
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    invoke-interface {v0, p0}, Landroid/preference/SeekBarVolumizer$Callback;->onStartTrackingTouch(Landroid/preference/SeekBarVolumizer;)V

    .line 497
    :cond_9
    return-void
.end method

.method public whitelist onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 500
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->postStartSample()V

    .line 501
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    if-eqz v0, :cond_c

    .line 502
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    invoke-interface {v0, p0}, Landroid/preference/SeekBarVolumizer$Callback;->onStopTrackingTouch(Landroid/preference/SeekBarVolumizer;)V

    .line 504
    :cond_c
    return-void
.end method

.method public greylist-max-o revertVolume()V
    .registers 5

    .line 470
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mOriginalStreamVolume:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 471
    return-void
.end method

.method public greylist-max-o setSeekBar(Landroid/widget/SeekBar;)V
    .registers 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 271
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 272
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 274
    :cond_a
    iput-object p1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    .line 275
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 276
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mMaxStreamVolume:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 277
    invoke-virtual {p0}, Landroid/preference/SeekBarVolumizer;->updateSeekBar()V

    .line 278
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 279
    return-void
.end method

.method public greylist-max-o start()V
    .registers 6

    .line 454
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    return-void

    .line 455
    :cond_5
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SeekBarVolumizer.CallbackHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 456
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 457
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    .line 458
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 459
    new-instance v1, Landroid/preference/SeekBarVolumizer$Observer;

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Landroid/preference/SeekBarVolumizer$Observer;-><init>(Landroid/preference/SeekBarVolumizer;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/preference/SeekBarVolumizer;->mVolumeObserver:Landroid/preference/SeekBarVolumizer$Observer;

    .line 460
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->VOLUME_SETTINGS_INT:[Ljava/lang/String;

    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    aget-object v2, v2, v3

    .line 461
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mVolumeObserver:Landroid/preference/SeekBarVolumizer$Observer;

    .line 460
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 463
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mReceiver:Landroid/preference/SeekBarVolumizer$Receiver;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/SeekBarVolumizer$Receiver;->setListening(Z)V

    .line 464
    iget-boolean v1, p0, Landroid/preference/SeekBarVolumizer;->mDeviceHasProductStrategies:Z

    if-eqz v1, :cond_4c

    .line 465
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->registerVolumeGroupCb()V

    .line 467
    :cond_4c
    return-void
.end method

.method public greylist-max-o startSample()V
    .registers 1

    .line 513
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->postStartSample()V

    .line 514
    return-void
.end method

.method public greylist stop()V
    .registers 3

    .line 440
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_5

    return-void

    .line 441
    :cond_5
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->postStopSample()V

    .line 442
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mVolumeObserver:Landroid/preference/SeekBarVolumizer$Observer;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 443
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mReceiver:Landroid/preference/SeekBarVolumizer$Receiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SeekBarVolumizer$Receiver;->setListening(Z)V

    .line 444
    iget-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mDeviceHasProductStrategies:Z

    if-eqz v0, :cond_20

    .line 445
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->unregisterVolumeGroupCb()V

    .line 447
    :cond_20
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 448
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 449
    iput-object v1, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    .line 450
    iput-object v1, p0, Landroid/preference/SeekBarVolumizer;->mVolumeObserver:Landroid/preference/SeekBarVolumizer$Observer;

    .line 451
    return-void
.end method

.method public greylist-max-o stopSample()V
    .registers 1

    .line 517
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->postStopSample()V

    .line 518
    return-void
.end method

.method protected greylist-max-o updateSeekBar()V
    .registers 6

    .line 291
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->isZenMuted()Z

    move-result v0

    .line 292
    .local v0, "zenMuted":Z
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 293
    const/4 v1, 0x1

    if-eqz v0, :cond_16

    .line 294
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mLastAudibleStreamVolume:I

    invoke-virtual {v2, v3, v1}, Landroid/widget/SeekBar;->setProgress(IZ)V

    goto :goto_4c

    .line 295
    :cond_16
    iget-boolean v2, p0, Landroid/preference/SeekBarVolumizer;->mNotificationOrRing:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_33

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mRingerMode:I

    if-ne v2, v1, :cond_33

    .line 297
    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2d

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/4 v4, 0x5

    if-ne v2, v4, :cond_4c

    iget-boolean v2, p0, Landroid/preference/SeekBarVolumizer;->mMuted:Z

    if-eqz v2, :cond_4c

    .line 299
    :cond_2d
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v3, v1}, Landroid/widget/SeekBar;->setProgress(IZ)V

    goto :goto_4c

    .line 301
    :cond_33
    iget-boolean v2, p0, Landroid/preference/SeekBarVolumizer;->mMuted:Z

    if-eqz v2, :cond_3d

    .line 302
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v3, v1}, Landroid/widget/SeekBar;->setProgress(IZ)V

    goto :goto_4c

    .line 304
    :cond_3d
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    const/4 v4, -0x1

    if-le v3, v4, :cond_47

    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    goto :goto_49

    :cond_47
    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mOriginalStreamVolume:I

    :goto_49
    invoke-virtual {v2, v3, v1}, Landroid/widget/SeekBar;->setProgress(IZ)V

    .line 306
    :cond_4c
    :goto_4c
    return-void
.end method
