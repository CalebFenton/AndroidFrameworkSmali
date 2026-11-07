.class public final Landroid/app/NotificationChannel;
.super Ljava/lang/Object;
.source "NotificationChannel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist ALLOW_BUBBLE_OFF:I = 0x0

.field public static final blacklist ALLOW_BUBBLE_ON:I = 0x1

.field private static final blacklist ATT_ALLOW_BUBBLE:Ljava/lang/String; = "allow_bubbles"

.field private static final greylist-max-o ATT_BLOCKABLE_SYSTEM:Ljava/lang/String; = "blockable_system"

.field private static final greylist-max-o ATT_CONTENT_TYPE:Ljava/lang/String; = "content_type"

.field private static final blacklist ATT_CONVERSATION_ID:Ljava/lang/String; = "conv_id"

.field private static final greylist-max-o ATT_DELETED:Ljava/lang/String; = "deleted"

.field private static final blacklist ATT_DELETED_TIME_MS:Ljava/lang/String; = "del_time"

.field private static final blacklist ATT_DEMOTE:Ljava/lang/String; = "dem"

.field private static final greylist-max-o ATT_DESC:Ljava/lang/String; = "desc"

.field private static final greylist-max-o ATT_FG_SERVICE_SHOWN:Ljava/lang/String; = "fgservice"

.field private static final greylist-max-o ATT_FLAGS:Ljava/lang/String; = "flags"

.field private static final greylist-max-o ATT_GROUP:Ljava/lang/String; = "group"

.field private static final greylist-max-o ATT_ID:Ljava/lang/String; = "id"

.field private static final greylist-max-o ATT_IMPORTANCE:Ljava/lang/String; = "importance"

.field private static final blacklist ATT_IMP_CONVERSATION:Ljava/lang/String; = "imp_conv"

.field private static final greylist-max-o ATT_LIGHTS:Ljava/lang/String; = "lights"

.field private static final greylist-max-o ATT_LIGHT_COLOR:Ljava/lang/String; = "light_color"

.field private static final greylist-max-o ATT_NAME:Ljava/lang/String; = "name"

.field private static final blacklist ATT_ORIG_IMP:Ljava/lang/String; = "orig_imp"

.field private static final blacklist ATT_PARENT_CHANNEL:Ljava/lang/String; = "parent"

.field private static final greylist-max-o ATT_PRIORITY:Ljava/lang/String; = "priority"

.field private static final greylist-max-o ATT_SHOW_BADGE:Ljava/lang/String; = "show_badge"

.field private static final greylist-max-o ATT_SOUND:Ljava/lang/String; = "sound"

.field private static final greylist-max-o ATT_USAGE:Ljava/lang/String; = "usage"

.field private static final greylist-max-o ATT_USER_LOCKED:Ljava/lang/String; = "locked"

.field private static final greylist-max-o ATT_VIBRATION:Ljava/lang/String; = "vibration"

.field private static final blacklist ATT_VIBRATION_EFFECT:Ljava/lang/String; = "vibration_effect"

.field private static final greylist-max-o ATT_VIBRATION_ENABLED:Ljava/lang/String; = "vibration_enabled"

.field private static final greylist-max-o ATT_VISIBILITY:Ljava/lang/String; = "visibility"

.field public static final blacklist CONVERSATION_CHANNEL_ID_FORMAT:Ljava/lang/String; = "%1$s : %2$s"

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEFAULT_ALLOW_BUBBLE:I = -0x1

.field public static final whitelist DEFAULT_CHANNEL_ID:Ljava/lang/String; = "miscellaneous"

.field private static final greylist-max-o DEFAULT_DELETED:Z = false

.field private static final blacklist DEFAULT_DELETION_TIME_MS:J = -0x1L

.field private static final greylist-max-o DEFAULT_IMPORTANCE:I = -0x3e8

.field private static final greylist-max-o DEFAULT_LIGHT_COLOR:I = 0x0

.field private static final greylist-max-o DEFAULT_SHOW_BADGE:Z = true

.field private static final greylist-max-o DEFAULT_VISIBILITY:I = -0x3e8

.field private static final greylist-max-o DELIMITER:Ljava/lang/String; = ","

.field public static final whitelist EDIT_CONVERSATION:Ljava/lang/String; = "conversation"

.field public static final whitelist EDIT_IMPORTANCE:Ljava/lang/String; = "importance"

.field public static final whitelist EDIT_LAUNCHER:Ljava/lang/String; = "launcher"

.field public static final whitelist EDIT_LOCKED_DEVICE:Ljava/lang/String; = "locked"

.field public static final whitelist EDIT_SOUND:Ljava/lang/String; = "sound"

.field public static final whitelist EDIT_VIBRATION:Ljava/lang/String; = "vibration"

.field public static final whitelist EDIT_ZEN:Ljava/lang/String; = "zen"

.field public static final greylist-max-o LOCKABLE_FIELDS:[I

.field public static final blacklist MAX_SERIALIZED_VIBRATION_LENGTH:I = 0x8000

.field public static final greylist-max-o MAX_TEXT_LENGTH:I = 0x3e8

.field public static final blacklist MAX_VIBRATION_LENGTH:I = 0x1f4

.field public static final blacklist NEWS_ID:Ljava/lang/String; = "android.app.news"

.field public static final blacklist PLACEHOLDER_CONVERSATION_ID:Ljava/lang/String; = ":placeholder_id"

.field public static final blacklist PROMOTIONS_ID:Ljava/lang/String; = "android.app.promotions"

.field public static final blacklist RECS_ID:Ljava/lang/String; = "android.app.recs"

.field public static final blacklist SOCIAL_MEDIA_ID:Ljava/lang/String; = "android.app.social"

.field public static final blacklist SYSTEM_RESERVED_IDS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "NotificationChannel"

.field private static final greylist-max-o TAG_CHANNEL:Ljava/lang/String; = "channel"

.field public static final blacklist USER_LOCKED_ALLOW_BUBBLE:I = 0x100

.field public static final greylist-max-o USER_LOCKED_IMPORTANCE:I = 0x4

.field public static final greylist-max-o USER_LOCKED_LIGHTS:I = 0x8

.field public static final greylist-max-o USER_LOCKED_PRIORITY:I = 0x1

.field public static final greylist-max-o USER_LOCKED_SHOW_BADGE:I = 0x80

.field public static final whitelist USER_LOCKED_SOUND:I = 0x20
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o USER_LOCKED_VIBRATION:I = 0x10

.field public static final greylist-max-o USER_LOCKED_VISIBILITY:I = 0x2


# instance fields
.field private blacklist mAllowBubbles:I

.field private greylist-max-o mAudioAttributes:Landroid/media/AudioAttributes;

.field private greylist-max-o mBlockableSystem:Z

.field private greylist-max-o mBypassDnd:Z

.field private blacklist mConversationId:Ljava/lang/String;

.field private greylist-max-o mDeleted:Z

.field private blacklist mDeletedTime:J

.field private blacklist mDemoted:Z

.field private greylist-max-o mDesc:Ljava/lang/String;

.field private greylist-max-o mGroup:Ljava/lang/String;

.field private greylist mId:Ljava/lang/String;

.field private greylist-max-o mImportance:I

.field private blacklist mImportanceLockedDefaultApp:Z

.field private blacklist mImportantConvo:Z

.field private blacklist mLastNotificationUpdateTimeMs:J

.field private greylist-max-o mLightColor:I

.field private greylist-max-o mLights:Z

.field private greylist-max-o mLockscreenVisibility:I

.field private greylist-max-o mName:Ljava/lang/String;

.field private blacklist mOriginalImportance:I

.field private blacklist mParentId:Ljava/lang/String;

.field private greylist-max-o mShowBadge:Z

.field private greylist-max-o mSound:Landroid/net/Uri;

.field private blacklist mSoundRestored:Z

.field private greylist-max-o mUserLockedFields:I

.field private blacklist mUserVisibleTaskShown:Z

.field private blacklist mVibrationEffect:Landroid/os/VibrationEffect;

.field private greylist-max-o mVibrationEnabled:Z

.field private blacklist mVibrationPattern:[J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    .line 116
    const-string v1, "android.app.news"

    const-string v2, "android.app.social"

    const-string v3, "android.app.promotions"

    const-string v4, "android.app.recs"

    invoke-static {v1, v2, v3, v4}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/app/NotificationChannel;->SYSTEM_RESERVED_IDS:Ljava/util/ArrayList;

    .line 266
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_24

    sput-object v0, Landroid/app/NotificationChannel;->LOCKABLE_FIELDS:[I

    .line 1658
    new-instance v0, Landroid/app/NotificationChannel$1;

    invoke-direct {v0}, Landroid/app/NotificationChannel$1;-><init>()V

    sput-object v0, Landroid/app/NotificationChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :array_24
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x80
        0x100
    .end array-data
.end method

.method protected constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "in"    # Landroid/os/Parcel;

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    const/16 v0, -0x3e8

    iput v0, p0, Landroid/app/NotificationChannel;->mImportance:I

    .line 304
    iput v0, p0, Landroid/app/NotificationChannel;->mOriginalImportance:I

    .line 306
    iput v0, p0, Landroid/app/NotificationChannel;->mLockscreenVisibility:I

    .line 307
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    .line 308
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mSoundRestored:Z

    .line 310
    iput v0, p0, Landroid/app/NotificationChannel;->mLightColor:I

    .line 318
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/NotificationChannel;->mShowBadge:Z

    .line 319
    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mDeleted:Z

    .line 321
    sget-object v2, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v2, p0, Landroid/app/NotificationChannel;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 323
    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mBlockableSystem:Z

    .line 324
    const/4 v2, -0x1

    iput v2, p0, Landroid/app/NotificationChannel;->mAllowBubbles:I

    .line 326
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/app/NotificationChannel;->mParentId:Ljava/lang/String;

    .line 327
    iput-object v2, p0, Landroid/app/NotificationChannel;->mConversationId:Ljava/lang/String;

    .line 328
    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mDemoted:Z

    .line 329
    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mImportantConvo:Z

    .line 330
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/app/NotificationChannel;->mDeletedTime:J

    .line 334
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/app/NotificationChannel;->mLastNotificationUpdateTimeMs:J

    .line 358
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_44

    .line 359
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/app/NotificationChannel;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/app/NotificationChannel;->mId:Ljava/lang/String;

    goto :goto_46

    .line 361
    :cond_44
    iput-object v2, p0, Landroid/app/NotificationChannel;->mId:Ljava/lang/String;

    .line 363
    :goto_46
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_57

    .line 364
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/app/NotificationChannel;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/app/NotificationChannel;->mName:Ljava/lang/String;

    goto :goto_59

    .line 366
    :cond_57
    iput-object v2, p0, Landroid/app/NotificationChannel;->mName:Ljava/lang/String;

    .line 368
    :goto_59
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_6a

    .line 369
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/app/NotificationChannel;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    goto :goto_6c

    .line 371
    :cond_6a
    iput-object v2, p0, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    .line 373
    :goto_6c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/app/NotificationChannel;->mImportance:I

    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_7a

    move v3, v1

    goto :goto_7b

    :cond_7a
    move v3, v0

    :goto_7b
    iput-boolean v3, p0, Landroid/app/NotificationChannel;->mBypassDnd:Z

    .line 375
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/app/NotificationChannel;->mLockscreenVisibility:I

    .line 376
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_a4

    .line 377
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    .line 378
    iget-object v3, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/app/NotificationChannel;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    goto :goto_a6

    .line 380
    :cond_a4
    iput-object v2, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    .line 382
    :goto_a6
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_ae

    move v3, v1

    goto :goto_af

    :cond_ae
    move v3, v0

    :goto_af
    iput-boolean v3, p0, Landroid/app/NotificationChannel;->mLights:Z

    .line 383
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    .line 384
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_bf

    move v3, v1

    goto :goto_c0

    :cond_bf
    move v3, v0

    :goto_c0
    iput-boolean v3, p0, Landroid/app/NotificationChannel;->mUserVisibleTaskShown:Z

    .line 385
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_ca

    move v3, v1

    goto :goto_cb

    :cond_ca
    move v3, v0

    :goto_cb
    iput-boolean v3, p0, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    .line 386
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_d5

    move v3, v1

    goto :goto_d6

    :cond_d5
    move v3, v0

    :goto_d6
    iput-boolean v3, p0, Landroid/app/NotificationChannel;->mShowBadge:Z

    .line 387
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_e0

    move v3, v1

    goto :goto_e1

    :cond_e0
    move v3, v0

    :goto_e1
    iput-boolean v3, p0, Landroid/app/NotificationChannel;->mDeleted:Z

    .line 388
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_f4

    .line 389
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/app/NotificationChannel;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/app/NotificationChannel;->mGroup:Ljava/lang/String;

    goto :goto_f6

    .line 391
    :cond_f4
    iput-object v2, p0, Landroid/app/NotificationChannel;->mGroup:Ljava/lang/String;

    .line 393
    :goto_f6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-lez v3, :cond_105

    sget-object v3, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioAttributes;

    goto :goto_106

    :cond_105
    move-object v3, v2

    :goto_106
    iput-object v3, p0, Landroid/app/NotificationChannel;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 394
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/app/NotificationChannel;->mLightColor:I

    .line 395
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/NotificationChannel;->mBlockableSystem:Z

    .line 396
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/app/NotificationChannel;->mAllowBubbles:I

    .line 397
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/app/NotificationChannel;->mOriginalImportance:I

    .line 398
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/app/NotificationChannel;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/app/NotificationChannel;->mParentId:Ljava/lang/String;

    .line 399
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/app/NotificationChannel;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/app/NotificationChannel;->mConversationId:Ljava/lang/String;

    .line 400
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/NotificationChannel;->mDemoted:Z

    .line 401
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/NotificationChannel;->mImportantConvo:Z

    .line 402
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/app/NotificationChannel;->mDeletedTime:J

    .line 403
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/NotificationChannel;->mImportanceLockedDefaultApp:Z

    .line 409
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v3

    iput-object v3, p0, Landroid/app/NotificationChannel;->mVibrationPattern:[J

    .line 410
    iget-object v3, p0, Landroid/app/NotificationChannel;->mVibrationPattern:[J

    const/16 v4, 0x1f4

    if-eqz v3, :cond_165

    iget-object v3, p0, Landroid/app/NotificationChannel;->mVibrationPattern:[J

    array-length v3, v3

    if-le v3, v4, :cond_165

    .line 411
    iget-object v3, p0, Landroid/app/NotificationChannel;->mVibrationPattern:[J

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, p0, Landroid/app/NotificationChannel;->mVibrationPattern:[J

    .line 413
    :cond_165
    const/4 v3, 0x0

    .line 414
    .local v3, "largeEffect":Z
    invoke-static {}, Landroid/app/Flags;->notifChannelEstimateEffectSize()Z

    move-result v5

    if-eqz v5, :cond_177

    .line 417
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v5

    const v6, 0x8000

    if-le v5, v6, :cond_176

    move v0, v1

    :cond_176
    move v3, v0

    .line 419
    :cond_177
    invoke-static {}, Landroid/app/Flags;->notificationChannelVibrationEffectApi()Z

    move-result v0

    if-eqz v0, :cond_1b2

    .line 420
    nop

    .line 421
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18d

    sget-object v0, Landroid/os/VibrationEffect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/VibrationEffect;

    :cond_18d
    iput-object v2, p0, Landroid/app/NotificationChannel;->mVibrationEffect:Landroid/os/VibrationEffect;

    .line 422
    invoke-static {}, Landroid/app/Flags;->notifChannelCropVibrationEffects()Z

    move-result v0

    if-eqz v0, :cond_1b2

    iget-object v0, p0, Landroid/app/NotificationChannel;->mVibrationEffect:Landroid/os/VibrationEffect;

    if-eqz v0, :cond_1b2

    .line 423
    invoke-static {}, Landroid/app/Flags;->notifChannelEstimateEffectSize()Z

    move-result v0

    if-eqz v0, :cond_1aa

    .line 427
    if-eqz v3, :cond_1b2

    .line 428
    iget-object v0, p0, Landroid/app/NotificationChannel;->mVibrationEffect:Landroid/os/VibrationEffect;

    invoke-virtual {v0, v4}, Landroid/os/VibrationEffect;->cropToLengthOrNull(I)Landroid/os/VibrationEffect;

    move-result-object v0

    iput-object v0, p0, Landroid/app/NotificationChannel;->mVibrationEffect:Landroid/os/VibrationEffect;

    goto :goto_1b2

    .line 432
    :cond_1aa
    iget-object v0, p0, Landroid/app/NotificationChannel;->mVibrationEffect:Landroid/os/VibrationEffect;

    invoke-direct {p0, v0}, Landroid/app/NotificationChannel;->getTrimmedVibrationEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect;

    move-result-object v0

    iput-object v0, p0, Landroid/app/NotificationChannel;->mVibrationEffect:Landroid/os/VibrationEffect;

    .line 436
    :cond_1b2
    :goto_1b2
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .registers 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/CharSequence;
    .param p3, "importance"    # I

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    const/16 v0, -0x3e8

    iput v0, p0, Landroid/app/NotificationChannel;->mImportance:I

    .line 304
    iput v0, p0, Landroid/app/NotificationChannel;->mOriginalImportance:I

    .line 306
    iput v0, p0, Landroid/app/NotificationChannel;->mLockscreenVisibility:I

    .line 307
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    .line 308
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mSoundRestored:Z

    .line 310
    iput v0, p0, Landroid/app/NotificationChannel;->mLightColor:I

    .line 318
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/NotificationChannel;->mShowBadge:Z

    .line 319
    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mDeleted:Z

    .line 321
    sget-object v1, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v1, p0, Landroid/app/NotificationChannel;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 323
    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mBlockableSystem:Z

    .line 324
    const/4 v1, -0x1

    iput v1, p0, Landroid/app/NotificationChannel;->mAllowBubbles:I

    .line 326
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/NotificationChannel;->mParentId:Ljava/lang/String;

    .line 327
    iput-object v1, p0, Landroid/app/NotificationChannel;->mConversationId:Ljava/lang/String;

    .line 328
    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mDemoted:Z

    .line 329
    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mImportantConvo:Z

    .line 330
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/app/NotificationChannel;->mDeletedTime:J

    .line 334
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/app/NotificationChannel;->mLastNotificationUpdateTimeMs:J

    .line 349
    invoke-direct {p0, p1}, Landroid/app/NotificationChannel;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/NotificationChannel;->mId:Ljava/lang/String;

    .line 350
    if-eqz p2, :cond_43

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/NotificationChannel;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_43
    iput-object v1, p0, Landroid/app/NotificationChannel;->mName:Ljava/lang/String;

    .line 351
    iput p3, p0, Landroid/app/NotificationChannel;->mImportance:I

    .line 352
    return-void
.end method

.method private blacklist getCanonicalizedSoundUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 5
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 1299
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1300
    return-object p2

    .line 1303
    :cond_9
    const-string v0, "android.resource"

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1305
    :try_start_15
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->getResourceId(Landroid/net/Uri;)Landroid/content/ContentResolver$OpenResourceIdResult;
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_18} :catch_19

    .line 1306
    return-object p2

    .line 1307
    :catch_19
    move-exception v0

    .line 1308
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v1, 0x0

    return-object v1

    .line 1312
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_1c
    const-string v0, "file"

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1313
    return-object p2

    .line 1315
    :cond_29
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->canonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getChannelIdForBundleType(I)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # I

    .line 1645
    packed-switch p0, :pswitch_data_12

    .line 1655
    const/4 v0, 0x0

    return-object v0

    .line 1647
    :pswitch_5
    const-string v0, "android.app.recs"

    return-object v0

    .line 1649
    :pswitch_8
    const-string v0, "android.app.news"

    return-object v0

    .line 1653
    :pswitch_b
    const-string v0, "android.app.social"

    return-object v0

    .line 1651
    :pswitch_e
    const-string v0, "android.app.promotions"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private blacklist getFieldsString()Ljava/lang/String;
    .registers 4

    .line 1744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", mDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string/jumbo v1, "hasDescription "

    goto :goto_19

    :cond_17
    const-string v1, ""

    :goto_19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mImportance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/NotificationChannel;->mImportance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBypassDnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mBypassDnd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLockscreenVisibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/NotificationChannel;->mLockscreenVisibility:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLights="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mLights:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLightColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/NotificationChannel;->mLightColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVibrationPattern="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/NotificationChannel;->mVibrationPattern:[J

    .line 1751
    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVibrationEffect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1753
    iget-object v1, p0, Landroid/app/NotificationChannel;->mVibrationEffect:Landroid/os/VibrationEffect;

    if-nez v1, :cond_83

    const-string/jumbo v1, "null"

    goto :goto_89

    :cond_83
    iget-object v1, p0, Landroid/app/NotificationChannel;->mVibrationEffect:Landroid/os/VibrationEffect;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUserLockedFields="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    .line 1754
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUserVisibleTaskShown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mUserVisibleTaskShown:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVibrationEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mShowBadge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mShowBadge:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mDeleted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeletedTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/app/NotificationChannel;->mDeletedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mGroup=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/NotificationChannel;->mGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAudioAttributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/NotificationChannel;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBlockableSystem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mBlockableSystem:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAllowBubbles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/NotificationChannel;->mAllowBubbles:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mImportanceLockedDefaultApp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mImportanceLockedDefaultApp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOriginalImp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/NotificationChannel;->mOriginalImportance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mParent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/NotificationChannel;->mParentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mConversationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/NotificationChannel;->mConversationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDemoted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mDemoted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mImportantConvo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mImportantConvo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLastNotificationUpdateTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/app/NotificationChannel;->mLastNotificationUpdateTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1744
    return-object v0
.end method

.method private greylist-max-o getSoundForBackup(Landroid/content/Context;)Landroid/net/Uri;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 1401
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v0

    .line 1402
    .local v0, "sound":Landroid/net/Uri;
    if-eqz v0, :cond_3f

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_3f

    .line 1406
    :cond_f
    :try_start_f
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Landroid/app/NotificationChannel;->getCanonicalizedSoundUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 1407
    .local v1, "canonicalSound":Landroid/net/Uri;
    if-nez v1, :cond_1c

    .line 1409
    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1b} :catch_1d

    return-object v2

    .line 1411
    :cond_1c
    return-object v1

    .line 1412
    .end local v1    # "canonicalSound":Landroid/net/Uri;
    :catch_1d
    move-exception v1

    .line 1413
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find file for sound "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " using default"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NotificationChannel"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    return-object v2

    .line 1403
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3f
    :goto_3f
    const/4 v1, 0x0

    return-object v1
.end method

.method private greylist-max-o getTrimmedString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "input"    # Ljava/lang/String;

    .line 624
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_10

    .line 625
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 627
    :cond_10
    return-object p1
.end method

.method private blacklist getTrimmedVibrationEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect;
    .registers 7
    .param p1, "effect"    # Landroid/os/VibrationEffect;

    .line 634
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 635
    return-object v0

    .line 638
    :cond_4
    move-object v1, p1

    .line 639
    .local v1, "result":Landroid/os/VibrationEffect;
    const/16 v2, 0x1f4

    invoke-virtual {p1, v2}, Landroid/os/VibrationEffect;->cropToLengthOrNull(I)Landroid/os/VibrationEffect;

    move-result-object v2

    .line 640
    .local v2, "trimmed":Landroid/os/VibrationEffect;
    if-eqz v2, :cond_e

    .line 641
    move-object v1, v2

    .line 643
    :cond_e
    invoke-static {v1}, Landroid/app/NotificationChannel;->vibrationToString(Landroid/os/VibrationEffect;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const v4, 0x8000

    if-le v3, v4, :cond_1c

    .line 644
    return-object v0

    .line 646
    :cond_1c
    return-object v1
.end method

.method private blacklist getUncanonicalizedSoundUri(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/net/Uri;
    .registers 8
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "usage"    # I

    .line 1321
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 1322
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.resource"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 1323
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_5d

    .line 1326
    :cond_21
    const/4 v0, 0x0

    .line 1329
    .local v0, "ringtoneType":I
    const/4 v1, 0x4

    if-ne v1, p3, :cond_27

    .line 1330
    const/4 v0, 0x4

    goto :goto_2d

    .line 1331
    :cond_27
    const/4 v1, 0x6

    if-ne v1, p3, :cond_2c

    .line 1332
    const/4 v0, 0x1

    goto :goto_2d

    .line 1334
    :cond_2c
    const/4 v0, 0x2

    .line 1337
    :goto_2d
    nop

    .line 1338
    :try_start_2e
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1337
    invoke-static {p1, v1, v0}, Landroid/media/RingtoneManager;->getRingtoneUriForRestore(Landroid/content/ContentResolver;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_36} :catch_37

    return-object v1

    .line 1339
    :catch_37
    move-exception v1

    .line 1340
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to uncanonicalized sound uri for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NotificationChannel"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    return-object v2

    .line 1324
    .end local v0    # "ringtoneType":I
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5d
    :goto_5d
    return-object p2
.end method

.method private static greylist-max-o longArrayToString([J)Ljava/lang/String;
    .registers 5
    .param p0, "values"    # [J

    .line 1628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1629
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_26

    array-length v1, p0

    if-lez v1, :cond_26

    .line 1630
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1e

    .line 1631
    aget-wide v2, p0, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1630
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1633
    .end local v1    # "i":I
    :cond_1e
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    aget-wide v1, p0, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1635
    :cond_26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist populateFromXml(Lcom/android/modules/utils/TypedXmlPullParser;ZZLandroid/content/Context;)V
    .registers 14
    .param p1, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p2, "forRestore"    # Z
    .param p3, "pkgInstalled"    # Z
    .param p4, "context"    # Landroid/content/Context;

    .line 1237
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_9

    if-eqz p4, :cond_7

    goto :goto_9

    :cond_7
    move v2, v1

    goto :goto_a

    :cond_9
    :goto_9
    move v2, v0

    :goto_a
    const-string v3, "forRestore is true but got null context"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1241
    const-string v2, "desc"

    const/4 v3, 0x0

    invoke-interface {p1, v3, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 1242
    nop

    .line 1243
    const-string/jumbo v2, "priority"

    invoke-static {p1, v2, v1}, Landroid/app/NotificationChannel;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_24

    goto :goto_25

    :cond_24
    move v0, v1

    .line 1242
    :goto_25
    invoke-virtual {p0, v0}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 1244
    const-string/jumbo v0, "visibility"

    const/16 v2, -0x3e8

    invoke-static {p1, v0, v2}, Landroid/app/NotificationChannel;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 1246
    const-string/jumbo v0, "sound"

    invoke-static {p1, v0}, Landroid/app/NotificationChannel;->safeUri(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1248
    .local v0, "sound":Landroid/net/Uri;
    invoke-static {p1}, Landroid/app/NotificationChannel;->safeAudioAttributes(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/media/AudioAttributes;

    move-result-object v4

    .line 1249
    .local v4, "audioAttributes":Landroid/media/AudioAttributes;
    invoke-virtual {v4}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v5

    .line 1250
    .local v5, "usage":I
    if-eqz p2, :cond_4a

    invoke-virtual {p0, p4, v0, p3, v5}, Landroid/app/NotificationChannel;->restoreSoundUri(Landroid/content/Context;Landroid/net/Uri;ZI)Landroid/net/Uri;

    move-result-object v6

    goto :goto_4b

    :cond_4a
    move-object v6, v0

    :goto_4b
    invoke-virtual {p0, v6, v4}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 1253
    const-string/jumbo v6, "lights"

    invoke-static {p1, v6, v1}, Landroid/app/NotificationChannel;->safeBool(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 1254
    const-string/jumbo v6, "light_color"

    invoke-static {p1, v6, v1}, Landroid/app/NotificationChannel;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 1258
    const-string/jumbo v6, "vibration"

    invoke-static {p1, v6, v3}, Landroid/app/NotificationChannel;->safeLongArray(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[J)[J

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    .line 1259
    invoke-static {}, Landroid/app/Flags;->notificationChannelVibrationEffectApi()Z

    move-result v6

    if-eqz v6, :cond_7e

    .line 1260
    const-string/jumbo v6, "vibration_effect"

    invoke-static {p1, v6}, Landroid/app/NotificationChannel;->safeVibrationEffect(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Landroid/os/VibrationEffect;

    move-result-object v6

    .line 1261
    .local v6, "vibrationEffect":Landroid/os/VibrationEffect;
    if-eqz v6, :cond_7e

    .line 1267
    invoke-virtual {p0, v6}, Landroid/app/NotificationChannel;->setVibrationEffect(Landroid/os/VibrationEffect;)V

    .line 1270
    .end local v6    # "vibrationEffect":Landroid/os/VibrationEffect;
    :cond_7e
    const-string/jumbo v6, "vibration_enabled"

    invoke-static {p1, v6, v1}, Landroid/app/NotificationChannel;->safeBool(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 1271
    const-string/jumbo v6, "show_badge"

    invoke-static {p1, v6, v1}, Landroid/app/NotificationChannel;->safeBool(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 1272
    const-string v6, "deleted"

    invoke-static {p1, v6, v1}, Landroid/app/NotificationChannel;->safeBool(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/app/NotificationChannel;->setDeleted(Z)V

    .line 1273
    const-string v6, "del_time"

    const-wide/16 v7, -0x1

    invoke-static {p1, v6, v7, v8}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Landroid/app/NotificationChannel;->setDeletedTimeMs(J)V

    .line 1275
    const-string/jumbo v6, "group"

    invoke-interface {p1, v3, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    .line 1276
    const-string/jumbo v6, "locked"

    invoke-static {p1, v6, v1}, Landroid/app/NotificationChannel;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1277
    const-string v6, "fgservice"

    invoke-static {p1, v6, v1}, Landroid/app/NotificationChannel;->safeBool(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/app/NotificationChannel;->setUserVisibleTaskShown(Z)V

    .line 1278
    const-string v6, "blockable_system"

    invoke-static {p1, v6, v1}, Landroid/app/NotificationChannel;->safeBool(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 1279
    const-string v6, "allow_bubbles"

    const/4 v7, -0x1

    invoke-static {p1, v6, v7}, Landroid/app/NotificationChannel;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/app/NotificationChannel;->setAllowBubbles(I)V

    .line 1280
    const-string/jumbo v6, "orig_imp"

    invoke-static {p1, v6, v2}, Landroid/app/NotificationChannel;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/NotificationChannel;->setOriginalImportance(I)V

    .line 1281
    const-string/jumbo v2, "parent"

    invoke-interface {p1, v3, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1282
    const-string v6, "conv_id"

    invoke-interface {p1, v3, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1281
    invoke-virtual {p0, v2, v3}, Landroid/app/NotificationChannel;->setConversationId(Ljava/lang/String;Ljava/lang/String;)V

    .line 1283
    const-string v2, "dem"

    invoke-static {p1, v2, v1}, Landroid/app/NotificationChannel;->safeBool(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/NotificationChannel;->setDemoted(Z)V

    .line 1284
    const-string/jumbo v2, "imp_conv"

    invoke-static {p1, v2, v1}, Landroid/app/NotificationChannel;->safeBool(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/NotificationChannel;->setImportantConversation(Z)V

    .line 1285
    return-void
.end method

.method private static blacklist safeAudioAttributes(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/media/AudioAttributes;
    .registers 5
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;

    .line 1564
    const-string/jumbo v0, "usage"

    const/4 v1, 0x5

    invoke-static {p0, v0, v1}, Landroid/app/NotificationChannel;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v0

    .line 1565
    .local v0, "usage":I
    const-string v1, "content_type"

    const/4 v2, 0x4

    invoke-static {p0, v1, v2}, Landroid/app/NotificationChannel;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v1

    .line 1567
    .local v1, "contentType":I
    const-string v2, "flags"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/app/NotificationChannel;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v2

    .line 1568
    .local v2, "flags":I
    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 1569
    invoke-virtual {v3, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    .line 1570
    invoke-virtual {v3, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    .line 1571
    invoke-virtual {v3, v2}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    .line 1572
    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v3

    .line 1568
    return-object v3
.end method

.method private static blacklist safeBool(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z
    .registers 4
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "att"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .line 1609
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static blacklist safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I
    .registers 4
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "att"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .line 1605
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static blacklist safeLongArray(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[J)[J
    .registers 10
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "att"    # Ljava/lang/String;
    .param p2, "defValue"    # [J

    .line 1613
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1614
    .local v0, "attributeValue":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    return-object p2

    .line 1615
    :cond_c
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1616
    .local v1, "values":[Ljava/lang/String;
    array-length v2, v1

    new-array v2, v2, [J

    .line 1617
    .local v2, "longValues":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16
    array-length v4, v1

    if-ge v3, v4, :cond_2a

    .line 1619
    :try_start_19
    aget-object v4, v1, v3

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v2, v3
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_21} :catch_22

    .line 1622
    goto :goto_27

    .line 1620
    :catch_22
    move-exception v4

    .line 1621
    .local v4, "e":Ljava/lang/NumberFormatException;
    const-wide/16 v5, 0x0

    aput-wide v5, v2, v3

    .line 1617
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :goto_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 1624
    .end local v3    # "i":I
    :cond_2a
    return-object v2
.end method

.method private static blacklist safeUri(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Landroid/net/Uri;
    .registers 4
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "att"    # Ljava/lang/String;

    .line 1576
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1577
    .local v1, "val":Ljava/lang/String;
    if-nez v1, :cond_8

    goto :goto_c

    :cond_8
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method private static blacklist safeVibrationEffect(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Landroid/os/VibrationEffect;
    .registers 7
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "att"    # Ljava/lang/String;

    .line 1592
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1593
    .local v1, "val":Ljava/lang/String;
    if-eqz v1, :cond_1a

    .line 1595
    :try_start_7
    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/vibrator/persistence/VibrationXmlParser;->parseVibrationEffect(Ljava/io/Reader;I)Landroid/os/VibrationEffect;

    move-result-object v0
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_11} :catch_12

    return-object v0

    .line 1597
    :catch_12
    move-exception v2

    .line 1598
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "NotificationChannel"

    const-string v4, "Unable to read serialized vibration effect"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1601
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1a
    return-object v0
.end method

.method private static blacklist vibrationToString(Landroid/os/VibrationEffect;)Ljava/lang/String;
    .registers 5
    .param p0, "effect"    # Landroid/os/VibrationEffect;

    .line 1581
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 1583
    .local v0, "writer":Ljava/io/StringWriter;
    const/4 v1, 0x1

    :try_start_6
    invoke-static {p0, v0, v1}, Landroid/os/vibrator/persistence/VibrationXmlSerializer;->serialize(Landroid/os/VibrationEffect;Ljava/io/Writer;I)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_a

    .line 1587
    goto :goto_23

    .line 1585
    :catch_a
    move-exception v1

    .line 1586
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to serialize vibration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NotificationChannel"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1588
    .end local v1    # "e":Ljava/io/IOException;
    :goto_23
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist writeXml(Lcom/android/modules/utils/TypedXmlSerializer;ZLandroid/content/Context;)V
    .registers 12
    .param p1, "out"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .param p2, "forBackup"    # Z
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1423
    if-eqz p2, :cond_7

    if-eqz p3, :cond_5

    goto :goto_7

    :cond_5
    const/4 v0, 0x0

    goto :goto_8

    :cond_7
    :goto_7
    const/4 v0, 0x1

    :goto_8
    const-string v1, "forBackup is true but got null context"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1425
    const/4 v0, 0x0

    const-string v1, "channel"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1426
    const-string/jumbo v2, "id"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1427
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_31

    .line 1428
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "name"

    invoke-interface {p1, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1430
    :cond_31
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_40

    .line 1431
    const-string v2, "desc"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1433
    :cond_40
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v2

    const/16 v3, -0x3e8

    if-eq v2, v3, :cond_52

    .line 1434
    const-string/jumbo v2, "importance"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v4

    invoke-interface {p1, v0, v2, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1436
    :cond_52
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 1437
    const-string/jumbo v2, "priority"

    const/4 v4, 0x2

    invoke-interface {p1, v0, v2, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1439
    :cond_5f
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v2

    if-eq v2, v3, :cond_6f

    .line 1440
    const-string/jumbo v2, "visibility"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v4

    invoke-interface {p1, v0, v2, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1442
    :cond_6f
    if-eqz p2, :cond_76

    invoke-direct {p0, p3}, Landroid/app/NotificationChannel;->getSoundForBackup(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_7a

    :cond_76
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v2

    .line 1443
    .local v2, "sound":Landroid/net/Uri;
    :goto_7a
    if-eqz v2, :cond_86

    .line 1444
    const-string/jumbo v4, "sound"

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v0, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1446
    :cond_86
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v4

    if-eqz v4, :cond_b4

    .line 1447
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v4

    const-string/jumbo v5, "usage"

    invoke-interface {p1, v0, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1448
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v4

    const-string v5, "content_type"

    invoke-interface {p1, v0, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1449
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v4

    const-string v5, "flags"

    invoke-interface {p1, v0, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1451
    :cond_b4
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result v4

    if-eqz v4, :cond_c4

    .line 1452
    const-string/jumbo v4, "lights"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result v5

    invoke-interface {p1, v0, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1454
    :cond_c4
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v4

    if-eqz v4, :cond_d4

    .line 1455
    const-string/jumbo v4, "light_color"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v5

    invoke-interface {p1, v0, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1457
    :cond_d4
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v4

    if-eqz v4, :cond_e4

    .line 1458
    const-string/jumbo v4, "vibration_enabled"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v5

    invoke-interface {p1, v0, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1460
    :cond_e4
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v4

    if-eqz v4, :cond_f8

    .line 1461
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v4

    invoke-static {v4}, Landroid/app/NotificationChannel;->longArrayToString([J)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "vibration"

    invoke-interface {p1, v0, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1463
    :cond_f8
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getVibrationEffect()Landroid/os/VibrationEffect;

    move-result-object v4

    if-eqz v4, :cond_118

    .line 1464
    invoke-static {}, Landroid/app/Flags;->notifChannelCropVibrationEffects()Z

    move-result v4

    if-eqz v4, :cond_10a

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v4

    if-nez v4, :cond_118

    .line 1467
    :cond_10a
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getVibrationEffect()Landroid/os/VibrationEffect;

    move-result-object v4

    invoke-static {v4}, Landroid/app/NotificationChannel;->vibrationToString(Landroid/os/VibrationEffect;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "vibration_effect"

    invoke-interface {p1, v0, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1470
    :cond_118
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v4

    if-eqz v4, :cond_128

    .line 1471
    const-string/jumbo v4, "locked"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v5

    invoke-interface {p1, v0, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1473
    :cond_128
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isUserVisibleTaskShown()Z

    move-result v4

    if-eqz v4, :cond_137

    .line 1474
    const-string v4, "fgservice"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isUserVisibleTaskShown()Z

    move-result v5

    invoke-interface {p1, v0, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1476
    :cond_137
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v4

    if-eqz v4, :cond_147

    .line 1477
    const-string/jumbo v4, "show_badge"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v5

    invoke-interface {p1, v0, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1479
    :cond_147
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v4

    if-eqz v4, :cond_156

    .line 1480
    const-string v4, "deleted"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v5

    invoke-interface {p1, v0, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1482
    :cond_156
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getDeletedTimeMs()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_169

    .line 1483
    const-string v4, "del_time"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getDeletedTimeMs()J

    move-result-wide v5

    invoke-interface {p1, v0, v4, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 1485
    :cond_169
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_179

    .line 1486
    const-string/jumbo v4, "group"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v0, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1488
    :cond_179
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isBlockable()Z

    move-result v4

    if-eqz v4, :cond_188

    .line 1489
    const-string v4, "blockable_system"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isBlockable()Z

    move-result v5

    invoke-interface {p1, v0, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1491
    :cond_188
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAllowBubbles()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_198

    .line 1492
    const-string v4, "allow_bubbles"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAllowBubbles()I

    move-result v5

    invoke-interface {p1, v0, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1494
    :cond_198
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getOriginalImportance()I

    move-result v4

    if-eq v4, v3, :cond_1a8

    .line 1495
    const-string/jumbo v3, "orig_imp"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getOriginalImportance()I

    move-result v4

    invoke-interface {p1, v0, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1497
    :cond_1a8
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1b8

    .line 1498
    const-string/jumbo v3, "parent"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v0, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1500
    :cond_1b8
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1c7

    .line 1501
    const-string v3, "conv_id"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v0, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1503
    :cond_1c7
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isDemoted()Z

    move-result v3

    if-eqz v3, :cond_1d6

    .line 1504
    const-string v3, "dem"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isDemoted()Z

    move-result v4

    invoke-interface {p1, v0, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1506
    :cond_1d6
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v3

    if-eqz v3, :cond_1e6

    .line 1507
    const-string/jumbo v3, "imp_conv"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v4

    invoke-interface {p1, v0, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1513
    :cond_1e6
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1514
    return-void
.end method


# virtual methods
.method public whitelist canBubble()Z
    .registers 3

    .line 1069
    iget v0, p0, Landroid/app/NotificationChannel;->mAllowBubbles:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public whitelist canBypassDnd()Z
    .registers 2

    .line 940
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mBypassDnd:Z

    return v0
.end method

.method public whitelist canShowBadge()Z
    .registers 2

    .line 1050
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mShowBadge:Z

    return v0
.end method

.method public blacklist copy()Landroid/app/NotificationChannel;
    .registers 5

    .line 512
    new-instance v0, Landroid/app/NotificationChannel;

    iget-object v1, p0, Landroid/app/NotificationChannel;->mId:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/NotificationChannel;->mName:Ljava/lang/String;

    iget v3, p0, Landroid/app/NotificationChannel;->mImportance:I

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 513
    .local v0, "copy":Landroid/app/NotificationChannel;
    iget-object v1, p0, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 514
    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mBypassDnd:Z

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 515
    iget v1, p0, Landroid/app/NotificationChannel;->mLockscreenVisibility:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 516
    iget-object v1, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    iget-object v2, p0, Landroid/app/NotificationChannel;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 517
    iget v1, p0, Landroid/app/NotificationChannel;->mLightColor:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 518
    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mLights:Z

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 519
    iget-object v1, p0, Landroid/app/NotificationChannel;->mVibrationPattern:[J

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    .line 520
    invoke-static {}, Landroid/app/Flags;->notificationChannelVibrationEffectApi()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 521
    iget-object v1, p0, Landroid/app/NotificationChannel;->mVibrationEffect:Landroid/os/VibrationEffect;

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setVibrationEffect(Landroid/os/VibrationEffect;)V

    .line 523
    :cond_3b
    iget v1, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 524
    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mUserVisibleTaskShown:Z

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setUserVisibleTaskShown(Z)V

    .line 525
    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 526
    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mShowBadge:Z

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 527
    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mDeleted:Z

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setDeleted(Z)V

    .line 528
    iget-object v1, p0, Landroid/app/NotificationChannel;->mGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    .line 529
    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mBlockableSystem:Z

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 530
    iget v1, p0, Landroid/app/NotificationChannel;->mAllowBubbles:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setAllowBubbles(I)V

    .line 531
    iget v1, p0, Landroid/app/NotificationChannel;->mOriginalImportance:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setOriginalImportance(I)V

    .line 532
    iget-object v1, p0, Landroid/app/NotificationChannel;->mParentId:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/NotificationChannel;->mConversationId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationChannel;->setConversationId(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mDemoted:Z

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setDemoted(Z)V

    .line 534
    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mImportantConvo:Z

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setImportantConversation(Z)V

    .line 535
    iget-wide v1, p0, Landroid/app/NotificationChannel;->mDeletedTime:J

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationChannel;->setDeletedTimeMs(J)V

    .line 536
    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mImportanceLockedDefaultApp:Z

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setImportanceLockedByCriticalDeviceFunction(Z)V

    .line 537
    iget-wide v1, p0, Landroid/app/NotificationChannel;->mLastNotificationUpdateTimeMs:J

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationChannel;->setLastNotificationUpdateTimeMs(J)V

    .line 539
    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 1673
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "redacted"    # Z

    .line 1725
    iget-object v0, p0, Landroid/app/NotificationChannel;->mName:Ljava/lang/String;

    if-eqz p3, :cond_b

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/text/TextUtils;->trimToLengthWithEllipsis(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1726
    .local v0, "redactedName":Ljava/lang/String;
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NotificationChannel{mId=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/NotificationChannel;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1729
    invoke-direct {p0}, Landroid/app/NotificationChannel;->getFieldsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1731
    .local v1, "output":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1732
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 13
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1775
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1777
    .local v0, "token":J
    const-wide v2, 0x10900000001L

    iget-object v4, p0, Landroid/app/NotificationChannel;->mId:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1778
    const-wide v2, 0x10900000002L

    iget-object v4, p0, Landroid/app/NotificationChannel;->mName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1779
    const-wide v2, 0x10900000003L

    iget-object v4, p0, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1780
    const-wide v2, 0x10500000004L

    iget v4, p0, Landroid/app/NotificationChannel;->mImportance:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1781
    const-wide v2, 0x10800000005L

    iget-boolean v4, p0, Landroid/app/NotificationChannel;->mBypassDnd:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1782
    const-wide v2, 0x10500000006L

    iget v4, p0, Landroid/app/NotificationChannel;->mLockscreenVisibility:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1783
    iget-object v2, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    if-eqz v2, :cond_52

    .line 1784
    iget-object v2, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000007L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1786
    :cond_52
    const-wide v2, 0x10800000008L

    iget-boolean v4, p0, Landroid/app/NotificationChannel;->mLights:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1787
    const-wide v2, 0x10500000009L

    iget v4, p0, Landroid/app/NotificationChannel;->mLightColor:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1788
    iget-object v2, p0, Landroid/app/NotificationChannel;->mVibrationPattern:[J

    if-eqz v2, :cond_7d

    .line 1789
    iget-object v2, p0, Landroid/app/NotificationChannel;->mVibrationPattern:[J

    array-length v3, v2

    const/4 v4, 0x0

    :goto_6e
    if-ge v4, v3, :cond_7d

    aget-wide v5, v2, v4

    .line 1790
    .local v5, "v":J
    const-wide v7, 0x2030000000aL

    invoke-virtual {p1, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1789
    .end local v5    # "v":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_6e

    .line 1793
    :cond_7d
    const-wide v2, 0x1050000000bL

    iget v4, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1794
    const-wide v2, 0x10800000012L

    iget-boolean v4, p0, Landroid/app/NotificationChannel;->mUserVisibleTaskShown:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1795
    const-wide v2, 0x1080000000cL

    iget-boolean v4, p0, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1796
    const-wide v2, 0x1080000000dL

    iget-boolean v4, p0, Landroid/app/NotificationChannel;->mShowBadge:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1797
    const-wide v2, 0x1080000000eL

    iget-boolean v4, p0, Landroid/app/NotificationChannel;->mDeleted:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1798
    const-wide v2, 0x1090000000fL

    iget-object v4, p0, Landroid/app/NotificationChannel;->mGroup:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1799
    iget-object v2, p0, Landroid/app/NotificationChannel;->mAudioAttributes:Landroid/media/AudioAttributes;

    if-eqz v2, :cond_c7

    .line 1800
    iget-object v2, p0, Landroid/app/NotificationChannel;->mAudioAttributes:Landroid/media/AudioAttributes;

    const-wide v3, 0x10b00000010L

    invoke-virtual {v2, p1, v3, v4}, Landroid/media/AudioAttributes;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1802
    :cond_c7
    const-wide v2, 0x10800000011L

    iget-boolean v4, p0, Landroid/app/NotificationChannel;->mBlockableSystem:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1803
    const-wide v2, 0x10800000013L

    iget v4, p0, Landroid/app/NotificationChannel;->mAllowBubbles:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1805
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1806
    return-void
.end method

.method public whitelist enableLights(Z)V
    .registers 2
    .param p1, "lights"    # Z

    .line 714
    iput-boolean p1, p0, Landroid/app/NotificationChannel;->mLights:Z

    .line 715
    return-void
.end method

.method public whitelist enableVibration(Z)V
    .registers 2
    .param p1, "vibration"    # Z

    .line 736
    iput-boolean p1, p0, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    .line 737
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 1678
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1679
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_12d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    goto/16 :goto_12d

    .line 1680
    :cond_13
    move-object v2, p1

    check-cast v2, Landroid/app/NotificationChannel;

    .line 1681
    .local v2, "that":Landroid/app/NotificationChannel;
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v4

    if-ne v3, v4, :cond_12b

    iget-boolean v3, p0, Landroid/app/NotificationChannel;->mBypassDnd:Z

    iget-boolean v4, v2, Landroid/app/NotificationChannel;->mBypassDnd:Z

    if-ne v3, v4, :cond_12b

    .line 1683
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v4

    if-ne v3, v4, :cond_12b

    iget-boolean v3, p0, Landroid/app/NotificationChannel;->mLights:Z

    iget-boolean v4, v2, Landroid/app/NotificationChannel;->mLights:Z

    if-ne v3, v4, :cond_12b

    .line 1685
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v4

    if-ne v3, v4, :cond_12b

    .line 1686
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v4

    if-ne v3, v4, :cond_12b

    .line 1687
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isUserVisibleTaskShown()Z

    move-result v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isUserVisibleTaskShown()Z

    move-result v4

    if-ne v3, v4, :cond_12b

    iget-boolean v3, p0, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    iget-boolean v4, v2, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    if-ne v3, v4, :cond_12b

    iget-boolean v3, p0, Landroid/app/NotificationChannel;->mShowBadge:Z

    iget-boolean v4, v2, Landroid/app/NotificationChannel;->mShowBadge:Z

    if-ne v3, v4, :cond_12b

    .line 1690
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v4

    if-ne v3, v4, :cond_12b

    .line 1691
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getDeletedTimeMs()J

    move-result-wide v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getDeletedTimeMs()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_12b

    .line 1692
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isBlockable()Z

    move-result v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isBlockable()Z

    move-result v4

    if-ne v3, v4, :cond_12b

    iget v3, p0, Landroid/app/NotificationChannel;->mAllowBubbles:I

    iget v4, v2, Landroid/app/NotificationChannel;->mAllowBubbles:I

    if-ne v3, v4, :cond_12b

    .line 1694
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12b

    .line 1695
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12b

    iget-object v3, p0, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    .line 1696
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12b

    .line 1697
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12b

    iget-object v3, p0, Landroid/app/NotificationChannel;->mVibrationPattern:[J

    iget-object v4, v2, Landroid/app/NotificationChannel;->mVibrationPattern:[J

    .line 1698
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v3

    if-eqz v3, :cond_12b

    .line 1699
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getVibrationEffect()Landroid/os/VibrationEffect;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getVibrationEffect()Landroid/os/VibrationEffect;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12b

    .line 1700
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12b

    .line 1701
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12b

    iget-boolean v3, p0, Landroid/app/NotificationChannel;->mImportanceLockedDefaultApp:Z

    iget-boolean v4, v2, Landroid/app/NotificationChannel;->mImportanceLockedDefaultApp:Z

    if-ne v3, v4, :cond_12b

    iget v3, p0, Landroid/app/NotificationChannel;->mOriginalImportance:I

    iget v4, v2, Landroid/app/NotificationChannel;->mOriginalImportance:I

    if-ne v3, v4, :cond_12b

    .line 1704
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12b

    .line 1705
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12b

    .line 1706
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isDemoted()Z

    move-result v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isDemoted()Z

    move-result v4

    if-ne v3, v4, :cond_12b

    .line 1707
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v4

    if-ne v3, v4, :cond_12b

    goto :goto_12c

    :cond_12b
    move v0, v1

    .line 1681
    :goto_12c
    return v0

    .line 1679
    .end local v2    # "that":Landroid/app/NotificationChannel;
    :cond_12d
    :goto_12d
    return v1
.end method

.method public blacklist getAllowBubbles()I
    .registers 2

    .line 1076
    iget v0, p0, Landroid/app/NotificationChannel;->mAllowBubbles:I

    return v0
.end method

.method public whitelist getAudioAttributes()Landroid/media/AudioAttributes;
    .registers 2

    .line 974
    iget-object v0, p0, Landroid/app/NotificationChannel;->mAudioAttributes:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public whitelist getConversationId()Ljava/lang/String;
    .registers 2

    .line 1092
    iget-object v0, p0, Landroid/app/NotificationChannel;->mConversationId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDeletedTimeMs()J
    .registers 3

    .line 1107
    iget-wide v0, p0, Landroid/app/NotificationChannel;->mDeletedTime:J

    return-wide v0
.end method

.method public whitelist getDescription()Ljava/lang/String;
    .registers 2

    .line 919
    iget-object v0, p0, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getGroup()Ljava/lang/String;
    .registers 2

    .line 1059
    iget-object v0, p0, Landroid/app/NotificationChannel;->mGroup:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .registers 2

    .line 905
    iget-object v0, p0, Landroid/app/NotificationChannel;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getImportance()I
    .registers 2

    .line 931
    iget v0, p0, Landroid/app/NotificationChannel;->mImportance:I

    return v0
.end method

.method public blacklist getLastNotificationUpdateTimeMs()J
    .registers 3

    .line 1205
    iget-wide v0, p0, Landroid/app/NotificationChannel;->mLastNotificationUpdateTimeMs:J

    return-wide v0
.end method

.method public whitelist getLightColor()I
    .registers 2

    .line 989
    iget v0, p0, Landroid/app/NotificationChannel;->mLightColor:I

    return v0
.end method

.method public whitelist getLockscreenVisibility()I
    .registers 2

    .line 1040
    iget v0, p0, Landroid/app/NotificationChannel;->mLockscreenVisibility:I

    return v0
.end method

.method public whitelist getName()Ljava/lang/CharSequence;
    .registers 2

    .line 912
    iget-object v0, p0, Landroid/app/NotificationChannel;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getOriginalImportance()I
    .registers 2

    .line 1154
    iget v0, p0, Landroid/app/NotificationChannel;->mOriginalImportance:I

    return v0
.end method

.method public whitelist getParentChannelId()Ljava/lang/String;
    .registers 2

    .line 1084
    iget-object v0, p0, Landroid/app/NotificationChannel;->mParentId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSound()Landroid/net/Uri;
    .registers 2

    .line 967
    iget-object v0, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getUserLockedFields()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1115
    iget v0, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    return v0
.end method

.method public whitelist getVibrationEffect()Landroid/os/VibrationEffect;
    .registers 2

    .line 1032
    iget-object v0, p0, Landroid/app/NotificationChannel;->mVibrationEffect:Landroid/os/VibrationEffect;

    return-object v0
.end method

.method public whitelist getVibrationPattern()[J
    .registers 2

    .line 1004
    iget-object v0, p0, Landroid/app/NotificationChannel;->mVibrationPattern:[J

    return-object v0
.end method

.method public whitelist hasUserSetImportance()Z
    .registers 2

    .line 1188
    iget v0, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist hasUserSetSound()Z
    .registers 2

    .line 1196
    iget v0, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 29

    .line 1712
    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, v0, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-boolean v5, v0, Landroid/app/NotificationChannel;->mBypassDnd:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 1713
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v7

    iget-boolean v8, v0, Landroid/app/NotificationChannel;->mLights:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1714
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isUserVisibleTaskShown()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iget-boolean v12, v0, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    .line 1715
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iget-boolean v13, v0, Landroid/app/NotificationChannel;->mShowBadge:Z

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getDeletedTimeMs()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 1716
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v17

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isBlockable()Z

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v19, v1

    iget v1, v0, Landroid/app/NotificationChannel;->mAllowBubbles:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v20, v1

    iget-boolean v1, v0, Landroid/app/NotificationChannel;->mImportanceLockedDefaultApp:Z

    .line 1717
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v21, v1

    iget v1, v0, Landroid/app/NotificationChannel;->mOriginalImportance:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getVibrationEffect()Landroid/os/VibrationEffect;

    move-result-object v22

    move-object/from16 v23, v1

    iget-object v1, v0, Landroid/app/NotificationChannel;->mParentId:Ljava/lang/String;

    move-object/from16 v24, v1

    iget-object v1, v0, Landroid/app/NotificationChannel;->mConversationId:Ljava/lang/String;

    move-object/from16 v25, v1

    iget-boolean v1, v0, Landroid/app/NotificationChannel;->mDemoted:Z

    .line 1718
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v26, v1

    iget-boolean v1, v0, Landroid/app/NotificationChannel;->mImportantConvo:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v27, v26

    move-object/from16 v26, v1

    move-object/from16 v1, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v27

    filled-new-array/range {v1 .. v26}, [Ljava/lang/Object;

    move-result-object v1

    .line 1712
    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    .line 1719
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, v0, Landroid/app/NotificationChannel;->mVibrationPattern:[J

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([J)I

    move-result v3

    add-int/2addr v2, v3

    .line 1720
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public whitelist isBlockable()Z
    .registers 2

    .line 1130
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mBlockableSystem:Z

    return v0
.end method

.method public whitelist isConversation()Z
    .registers 2

    .line 947
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist isDeleted()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1100
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mDeleted:Z

    return v0
.end method

.method public whitelist isDemoted()Z
    .registers 2

    .line 1179
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mDemoted:Z

    return v0
.end method

.method public blacklist isImportanceLockedByCriticalDeviceFunction()Z
    .registers 2

    .line 1146
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mImportanceLockedDefaultApp:Z

    return v0
.end method

.method public whitelist isImportantConversation()Z
    .registers 2

    .line 960
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mImportantConvo:Z

    return v0
.end method

.method public blacklist isSoundRestored()Z
    .registers 2

    .line 1294
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mSoundRestored:Z

    return v0
.end method

.method public blacklist isUserVisibleTaskShown()Z
    .registers 2

    .line 1122
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mUserVisibleTaskShown:Z

    return v0
.end method

.method public greylist-max-o lockFields(I)V
    .registers 3
    .param p1, "field"    # I

    .line 547
    iget v0, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    .line 548
    return-void
.end method

.method public whitelist populateFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1229
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, v1, v2}, Landroid/app/NotificationChannel;->populateFromXml(Lcom/android/modules/utils/TypedXmlPullParser;ZZLandroid/content/Context;)V

    .line 1230
    return-void
.end method

.method public blacklist populateFromXmlForRestore(Lorg/xmlpull/v1/XmlPullParser;ZLandroid/content/Context;)V
    .registers 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "pkgInstalled"    # Z
    .param p3, "context"    # Landroid/content/Context;

    .line 1221
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p2, p3}, Landroid/app/NotificationChannel;->populateFromXml(Lcom/android/modules/utils/TypedXmlPullParser;ZZLandroid/content/Context;)V

    .line 1222
    return-void
.end method

.method public blacklist restoreSoundUri(Landroid/content/Context;Landroid/net/Uri;ZI)Landroid/net/Uri;
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "pkgInstalled"    # Z
    .param p4, "usage"    # I

    .line 1356
    if-eqz p2, :cond_2c

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_2c

    .line 1359
    :cond_b
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1367
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    invoke-direct {p0, v0, p2}, Landroid/app/NotificationChannel;->getCanonicalizedSoundUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 1368
    .local v1, "canonicalizedUri":Landroid/net/Uri;
    const/4 v2, 0x1

    if-nez v1, :cond_25

    .line 1370
    iget-boolean v3, p0, Landroid/app/NotificationChannel;->mSoundRestored:Z

    if-nez v3, :cond_21

    if-eqz p3, :cond_21

    .line 1371
    iput-boolean v2, p0, Landroid/app/NotificationChannel;->mSoundRestored:Z

    .line 1374
    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    return-object v2

    .line 1377
    :cond_21
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/app/NotificationChannel;->mSoundRestored:Z

    .line 1378
    return-object p2

    .line 1381
    :cond_25
    iput-boolean v2, p0, Landroid/app/NotificationChannel;->mSoundRestored:Z

    .line 1382
    invoke-direct {p0, v0, v1, p4}, Landroid/app/NotificationChannel;->getUncanonicalizedSoundUri(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v2

    return-object v2

    .line 1357
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    .end local v1    # "canonicalizedUri":Landroid/net/Uri;
    :cond_2c
    :goto_2c
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist setAllowBubbles(I)V
    .registers 2
    .param p1, "allowed"    # I

    .line 881
    iput p1, p0, Landroid/app/NotificationChannel;->mAllowBubbles:I

    .line 882
    return-void
.end method

.method public whitelist setAllowBubbles(Z)V
    .registers 2
    .param p1, "allowBubbles"    # Z

    .line 874
    iput p1, p0, Landroid/app/NotificationChannel;->mAllowBubbles:I

    .line 875
    return-void
.end method

.method public whitelist setBlockable(Z)V
    .registers 2
    .param p1, "blockable"    # Z

    .line 599
    iput-boolean p1, p0, Landroid/app/NotificationChannel;->mBlockableSystem:Z

    .line 600
    return-void
.end method

.method public whitelist setBypassDnd(Z)V
    .registers 2
    .param p1, "bypassDnd"    # Z

    .line 855
    iput-boolean p1, p0, Landroid/app/NotificationChannel;->mBypassDnd:Z

    .line 856
    return-void
.end method

.method public whitelist setConversationId(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "parentChannelId"    # Ljava/lang/String;
    .param p2, "conversationId"    # Ljava/lang/String;

    .line 897
    iput-object p1, p0, Landroid/app/NotificationChannel;->mParentId:Ljava/lang/String;

    .line 898
    iput-object p2, p0, Landroid/app/NotificationChannel;->mConversationId:Ljava/lang/String;

    .line 899
    return-void
.end method

.method public greylist-max-o setDeleted(Z)V
    .registers 2
    .param p1, "deleted"    # Z

    .line 570
    iput-boolean p1, p0, Landroid/app/NotificationChannel;->mDeleted:Z

    .line 571
    return-void
.end method

.method public blacklist setDeletedTimeMs(J)V
    .registers 3
    .param p1, "time"    # J

    .line 578
    iput-wide p1, p0, Landroid/app/NotificationChannel;->mDeletedTime:J

    .line 579
    return-void
.end method

.method public blacklist setDemoted(Z)V
    .registers 2
    .param p1, "demoted"    # Z

    .line 1170
    iput-boolean p1, p0, Landroid/app/NotificationChannel;->mDemoted:Z

    .line 1171
    return-void
.end method

.method public whitelist setDescription(Ljava/lang/String;)V
    .registers 3
    .param p1, "description"    # Ljava/lang/String;

    .line 620
    invoke-direct {p0, p1}, Landroid/app/NotificationChannel;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    .line 621
    return-void
.end method

.method public whitelist setGroup(Ljava/lang/String;)V
    .registers 2
    .param p1, "groupId"    # Ljava/lang/String;

    .line 671
    iput-object p1, p0, Landroid/app/NotificationChannel;->mGroup:Ljava/lang/String;

    .line 672
    return-void
.end method

.method public blacklist setId(Ljava/lang/String;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/String;

    .line 653
    iput-object p1, p0, Landroid/app/NotificationChannel;->mId:Ljava/lang/String;

    .line 654
    return-void
.end method

.method public whitelist setImportance(I)V
    .registers 2
    .param p1, "importance"    # I

    .line 838
    iput p1, p0, Landroid/app/NotificationChannel;->mImportance:I

    .line 839
    return-void
.end method

.method public blacklist setImportanceLockedByCriticalDeviceFunction(Z)V
    .registers 2
    .param p1, "locked"    # Z

    .line 1138
    iput-boolean p1, p0, Landroid/app/NotificationChannel;->mImportanceLockedDefaultApp:Z

    .line 1139
    return-void
.end method

.method public whitelist setImportantConversation(Z)V
    .registers 2
    .param p1, "importantConvo"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 586
    iput-boolean p1, p0, Landroid/app/NotificationChannel;->mImportantConvo:Z

    .line 587
    return-void
.end method

.method public blacklist setLastNotificationUpdateTimeMs(J)V
    .registers 3
    .param p1, "updateTimeMs"    # J

    .line 1213
    iput-wide p1, p0, Landroid/app/NotificationChannel;->mLastNotificationUpdateTimeMs:J

    .line 1214
    return-void
.end method

.method public whitelist setLightColor(I)V
    .registers 2
    .param p1, "argb"    # I

    .line 725
    iput p1, p0, Landroid/app/NotificationChannel;->mLightColor:I

    .line 726
    return-void
.end method

.method public whitelist setLockscreenVisibility(I)V
    .registers 2
    .param p1, "lockscreenVisibility"    # I

    .line 865
    iput p1, p0, Landroid/app/NotificationChannel;->mLockscreenVisibility:I

    .line 866
    return-void
.end method

.method public whitelist setName(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 610
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/NotificationChannel;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iput-object v0, p0, Landroid/app/NotificationChannel;->mName:Ljava/lang/String;

    .line 611
    return-void
.end method

.method public blacklist setOriginalImportance(I)V
    .registers 2
    .param p1, "importance"    # I

    .line 1162
    iput p1, p0, Landroid/app/NotificationChannel;->mOriginalImportance:I

    .line 1163
    return-void
.end method

.method public whitelist setShowBadge(Z)V
    .registers 2
    .param p1, "showBadge"    # Z

    .line 684
    iput-boolean p1, p0, Landroid/app/NotificationChannel;->mShowBadge:Z

    .line 685
    return-void
.end method

.method public whitelist setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V
    .registers 3
    .param p1, "sound"    # Landroid/net/Uri;
    .param p2, "audioAttributes"    # Landroid/media/AudioAttributes;

    .line 702
    iput-object p1, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    .line 703
    iput-object p2, p0, Landroid/app/NotificationChannel;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 704
    return-void
.end method

.method public blacklist setUserVisibleTaskShown(Z)V
    .registers 2
    .param p1, "shown"    # Z

    .line 562
    iput-boolean p1, p0, Landroid/app/NotificationChannel;->mUserVisibleTaskShown:Z

    .line 563
    return-void
.end method

.method public whitelist setVibrationEffect(Landroid/os/VibrationEffect;)V
    .registers 5
    .param p1, "effect"    # Landroid/os/VibrationEffect;

    .line 801
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    .line 802
    iput-object p1, p0, Landroid/app/NotificationChannel;->mVibrationEffect:Landroid/os/VibrationEffect;

    .line 803
    invoke-static {}, Landroid/app/Flags;->notifChannelCropVibrationEffects()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2f

    if-eqz p1, :cond_2f

    .line 804
    invoke-virtual {p1}, Landroid/os/VibrationEffect;->computeCreateWaveformOffOnTimingsOrNull()[J

    move-result-object v0

    .line 805
    .local v0, "pattern":[J
    if-eqz v0, :cond_24

    .line 810
    array-length v1, v0

    const/16 v2, 0x1f4

    if-le v1, v2, :cond_21

    .line 811
    invoke-virtual {p0, v0}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    goto :goto_2e

    .line 813
    :cond_21
    iput-object v0, p0, Landroid/app/NotificationChannel;->mVibrationPattern:[J

    goto :goto_2e

    .line 818
    :cond_24
    iget-object v2, p0, Landroid/app/NotificationChannel;->mVibrationEffect:Landroid/os/VibrationEffect;

    invoke-direct {p0, v2}, Landroid/app/NotificationChannel;->getTrimmedVibrationEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect;

    move-result-object v2

    iput-object v2, p0, Landroid/app/NotificationChannel;->mVibrationEffect:Landroid/os/VibrationEffect;

    .line 819
    iput-object v1, p0, Landroid/app/NotificationChannel;->mVibrationPattern:[J

    .line 821
    .end local v0    # "pattern":[J
    :goto_2e
    goto :goto_3d

    .line 822
    :cond_2f
    nop

    .line 823
    iget-object v0, p0, Landroid/app/NotificationChannel;->mVibrationEffect:Landroid/os/VibrationEffect;

    if-nez v0, :cond_35

    .line 824
    goto :goto_3b

    :cond_35
    iget-object v0, p0, Landroid/app/NotificationChannel;->mVibrationEffect:Landroid/os/VibrationEffect;

    invoke-virtual {v0}, Landroid/os/VibrationEffect;->computeCreateWaveformOffOnTimingsOrNull()[J

    move-result-object v1

    :goto_3b
    iput-object v1, p0, Landroid/app/NotificationChannel;->mVibrationPattern:[J

    .line 826
    :goto_3d
    return-void
.end method

.method public whitelist setVibrationPattern([J)V
    .registers 4
    .param p1, "vibrationPattern"    # [J

    .line 750
    if-eqz p1, :cond_7

    array-length v0, p1

    if-lez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    .line 751
    iput-object p1, p0, Landroid/app/NotificationChannel;->mVibrationPattern:[J

    .line 752
    invoke-static {}, Landroid/app/Flags;->notifChannelCropVibrationEffects()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 753
    if-eqz p1, :cond_1f

    array-length v0, p1

    const/16 v1, 0x1f4

    if-le v0, v1, :cond_1f

    .line 754
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Landroid/app/NotificationChannel;->mVibrationPattern:[J

    .line 757
    :cond_1f
    invoke-static {}, Landroid/app/Flags;->notificationChannelVibrationEffectApi()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 759
    nop

    .line 760
    const/4 v0, -0x1

    :try_start_27
    invoke-static {p1, v0}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v0

    iput-object v0, p0, Landroid/app/NotificationChannel;->mVibrationEffect:Landroid/os/VibrationEffect;
    :try_end_2d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_27 .. :try_end_2d} :catch_2e
    .catch Ljava/lang/NullPointerException; {:try_start_27 .. :try_end_2d} :catch_2e

    .line 763
    goto :goto_32

    .line 761
    :catch_2e
    move-exception v0

    .line 762
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/NotificationChannel;->mVibrationEffect:Landroid/os/VibrationEffect;

    .line 765
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_32
    :goto_32
    return-void
.end method

.method public whitelist shouldShowLights()Z
    .registers 2

    .line 981
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mLights:Z

    return v0
.end method

.method public whitelist shouldVibrate()Z
    .registers 2

    .line 996
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    return v0
.end method

.method public whitelist toJson()Lorg/json/JSONObject;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1521
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1522
    .local v0, "record":Lorg/json/JSONObject;
    const-string/jumbo v1, "id"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1523
    const-string/jumbo v1, "name"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1524
    const-string v1, "desc"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1525
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    const/16 v2, -0x3e8

    if-eq v1, v2, :cond_39

    .line 1526
    nop

    .line 1527
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    invoke-static {v1}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object v1

    .line 1526
    const-string/jumbo v3, "importance"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1529
    :cond_39
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 1530
    const-string/jumbo v1, "priority"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1532
    :cond_46
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v1

    if-eq v1, v2, :cond_5a

    .line 1533
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v1

    invoke-static {v1}, Landroid/app/Notification;->visibilityToString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "visibility"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1535
    :cond_5a
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_6e

    .line 1536
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sound"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1538
    :cond_6e
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    if-eqz v1, :cond_a9

    .line 1539
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "usage"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1540
    nop

    .line 1541
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 1540
    const-string v2, "content_type"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1542
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "flags"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1544
    :cond_a9
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "lights"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1545
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "light_color"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1546
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "vibration_enabled"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1547
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "locked"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1548
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isUserVisibleTaskShown()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fgservice"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1549
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v1

    invoke-static {v1}, Landroid/app/NotificationChannel;->longArrayToString([J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "vibration"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1550
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getVibrationEffect()Landroid/os/VibrationEffect;

    move-result-object v1

    if-eqz v1, :cond_110

    .line 1551
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getVibrationEffect()Landroid/os/VibrationEffect;

    move-result-object v1

    invoke-static {v1}, Landroid/app/NotificationChannel;->vibrationToString(Landroid/os/VibrationEffect;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "vibration_effect"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1553
    :cond_110
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "show_badge"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1554
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "deleted"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1555
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getDeletedTimeMs()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "del_time"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1556
    const-string/jumbo v1, "group"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1557
    const-string v1, "blockable_system"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isBlockable()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1558
    const-string v1, "allow_bubbles"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAllowBubbles()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1560
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationChannel{mId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/NotificationChannel;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/NotificationChannel;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1739
    invoke-direct {p0}, Landroid/app/NotificationChannel;->getFieldsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1736
    return-object v0
.end method

.method public greylist-max-o unlockFields(I)V
    .registers 4
    .param p1, "field"    # I

    .line 554
    iget v0, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    .line 555
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 440
    iget-object v0, p0, Landroid/app/NotificationChannel;->mId:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    .line 441
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 442
    iget-object v0, p0, Landroid/app/NotificationChannel;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_12

    .line 444
    :cond_f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 446
    :goto_12
    iget-object v0, p0, Landroid/app/NotificationChannel;->mName:Ljava/lang/String;

    if-eqz v0, :cond_1f

    .line 447
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 448
    iget-object v0, p0, Landroid/app/NotificationChannel;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_22

    .line 450
    :cond_1f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 452
    :goto_22
    iget-object v0, p0, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    if-eqz v0, :cond_2f

    .line 453
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 454
    iget-object v0, p0, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_32

    .line 456
    :cond_2f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 458
    :goto_32
    iget v0, p0, Landroid/app/NotificationChannel;->mImportance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 459
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mBypassDnd:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 460
    iget v0, p0, Landroid/app/NotificationChannel;->mLockscreenVisibility:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 461
    iget-object v0, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    if-eqz v0, :cond_4e

    .line 462
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 463
    iget-object v0, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    invoke-virtual {v0, p1, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_51

    .line 465
    :cond_4e
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 467
    :goto_51
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mLights:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 468
    iget v0, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 469
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mUserVisibleTaskShown:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 470
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 471
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mShowBadge:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 472
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mDeleted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 473
    iget-object v0, p0, Landroid/app/NotificationChannel;->mGroup:Ljava/lang/String;

    if-eqz v0, :cond_7c

    .line 474
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 475
    iget-object v0, p0, Landroid/app/NotificationChannel;->mGroup:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_7f

    .line 477
    :cond_7c
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 479
    :goto_7f
    iget-object v0, p0, Landroid/app/NotificationChannel;->mAudioAttributes:Landroid/media/AudioAttributes;

    if-eqz v0, :cond_8c

    .line 480
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 481
    iget-object v0, p0, Landroid/app/NotificationChannel;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0, p1, v2}, Landroid/media/AudioAttributes;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8f

    .line 483
    :cond_8c
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 485
    :goto_8f
    iget v0, p0, Landroid/app/NotificationChannel;->mLightColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 486
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mBlockableSystem:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 487
    iget v0, p0, Landroid/app/NotificationChannel;->mAllowBubbles:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 488
    iget v0, p0, Landroid/app/NotificationChannel;->mOriginalImportance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 489
    iget-object v0, p0, Landroid/app/NotificationChannel;->mParentId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 490
    iget-object v0, p0, Landroid/app/NotificationChannel;->mConversationId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 491
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mDemoted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 492
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mImportantConvo:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 493
    iget-wide v3, p0, Landroid/app/NotificationChannel;->mDeletedTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 494
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mImportanceLockedDefaultApp:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 497
    iget-object v0, p0, Landroid/app/NotificationChannel;->mVibrationPattern:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 498
    invoke-static {}, Landroid/app/Flags;->notificationChannelVibrationEffectApi()Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 499
    iget-object v0, p0, Landroid/app/NotificationChannel;->mVibrationEffect:Landroid/os/VibrationEffect;

    if-eqz v0, :cond_d9

    .line 500
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 501
    iget-object v0, p0, Landroid/app/NotificationChannel;->mVibrationEffect:Landroid/os/VibrationEffect;

    invoke-virtual {v0, p1, v2}, Landroid/os/VibrationEffect;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_dc

    .line 503
    :cond_d9
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 506
    :cond_dc
    :goto_dc
    return-void
.end method

.method public whitelist writeXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 5
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1390
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlSerializer;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/app/NotificationChannel;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;ZLandroid/content/Context;)V

    .line 1391
    return-void
.end method

.method public greylist-max-o writeXmlForBackup(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/Context;)V
    .registers 5
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1397
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlSerializer;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p2}, Landroid/app/NotificationChannel;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;ZLandroid/content/Context;)V

    .line 1398
    return-void
.end method
