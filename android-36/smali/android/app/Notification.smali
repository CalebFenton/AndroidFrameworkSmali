.class public Landroid/app/Notification;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Notification$ProgressStyle;,
        Landroid/app/Notification$Builder;,
        Landroid/app/Notification$Action;,
        Landroid/app/Notification$BubbleMetadata;,
        Landroid/app/Notification$MessagingStyle;,
        Landroid/app/Notification$WearableExtender;,
        Landroid/app/Notification$CallStyle;,
        Landroid/app/Notification$BigTextStyle;,
        Landroid/app/Notification$TvExtender;,
        Landroid/app/Notification$Style;,
        Landroid/app/Notification$MediaStyle;,
        Landroid/app/Notification$DecoratedMediaCustomViewStyle;,
        Landroid/app/Notification$StandardTemplateParams;,
        Landroid/app/Notification$TemplateBindResult;,
        Landroid/app/Notification$BigPictureStyle;,
        Landroid/app/Notification$InboxStyle;,
        Landroid/app/Notification$DecoratedCustomViewStyle;,
        Landroid/app/Notification$Colors;,
        Landroid/app/Notification$BuilderRemoteViews;,
        Landroid/app/Notification$CarExtender;,
        Landroid/app/Notification$Extender;,
        Landroid/app/Notification$GroupAlertBehavior;,
        Landroid/app/Notification$NotificationVisibilityOverride;,
        Landroid/app/Notification$Visibility;,
        Landroid/app/Notification$Priority;,
        Landroid/app/Notification$NotificationFlags;,
        Landroid/app/Notification$ServiceNotificationPolicy;
    }
.end annotation


# static fields
.field public static final whitelist AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

.field public static final whitelist BADGE_ICON_LARGE:I = 0x2

.field public static final whitelist BADGE_ICON_NONE:I = 0x0

.field public static final whitelist BADGE_ICON_SMALL:I = 0x1

.field public static final whitelist CATEGORY_ALARM:Ljava/lang/String; = "alarm"

.field public static final whitelist CATEGORY_CALL:Ljava/lang/String; = "call"

.field public static final whitelist CATEGORY_CAR_EMERGENCY:Ljava/lang/String; = "car_emergency"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CATEGORY_CAR_INFORMATION:Ljava/lang/String; = "car_information"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CATEGORY_CAR_WARNING:Ljava/lang/String; = "car_warning"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CATEGORY_EMAIL:Ljava/lang/String; = "email"

.field public static final whitelist CATEGORY_ERROR:Ljava/lang/String; = "err"

.field public static final whitelist CATEGORY_EVENT:Ljava/lang/String; = "event"

.field public static final whitelist CATEGORY_LOCATION_SHARING:Ljava/lang/String; = "location_sharing"

.field public static final whitelist CATEGORY_MESSAGE:Ljava/lang/String; = "msg"

.field public static final whitelist CATEGORY_MISSED_CALL:Ljava/lang/String; = "missed_call"

.field public static final whitelist CATEGORY_NAVIGATION:Ljava/lang/String; = "navigation"

.field public static final whitelist CATEGORY_PROGRESS:Ljava/lang/String; = "progress"

.field public static final whitelist CATEGORY_PROMO:Ljava/lang/String; = "promo"

.field public static final whitelist CATEGORY_RECOMMENDATION:Ljava/lang/String; = "recommendation"

.field public static final whitelist CATEGORY_REMINDER:Ljava/lang/String; = "reminder"

.field public static final whitelist CATEGORY_SERVICE:Ljava/lang/String; = "service"

.field public static final whitelist CATEGORY_SOCIAL:Ljava/lang/String; = "social"

.field public static final whitelist CATEGORY_STATUS:Ljava/lang/String; = "status"

.field public static final whitelist CATEGORY_STOPWATCH:Ljava/lang/String; = "stopwatch"

.field public static final whitelist CATEGORY_SYSTEM:Ljava/lang/String; = "sys"

.field public static final whitelist CATEGORY_TRANSPORT:Ljava/lang/String; = "transport"

.field public static final whitelist CATEGORY_VOICEMAIL:Ljava/lang/String; = "voicemail"

.field public static final whitelist CATEGORY_WORKOUT:Ljava/lang/String; = "workout"

.field public static final whitelist COLOR_DEFAULT:I = 0x0

.field public static final greylist-max-o COLOR_INVALID:I = 0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DEFAULT_ALL:I = -0x1

.field public static final whitelist DEFAULT_LIGHTS:I = 0x4

.field public static final whitelist DEFAULT_SOUND:I = 0x1

.field public static final whitelist DEFAULT_VIBRATE:I = 0x2

.field public static final whitelist EXTRA_ALLOW_DURING_SETUP:Ljava/lang/String; = "android.allowDuringSetup"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_ANSWER_COLOR:Ljava/lang/String; = "android.answerColor"

.field public static final whitelist EXTRA_ANSWER_INTENT:Ljava/lang/String; = "android.answerIntent"

.field public static final whitelist EXTRA_AUDIO_CONTENTS_URI:Ljava/lang/String; = "android.audioContents"

.field public static final whitelist EXTRA_BACKGROUND_IMAGE_URI:Ljava/lang/String; = "android.backgroundImageUri"

.field public static final whitelist EXTRA_BIG_TEXT:Ljava/lang/String; = "android.bigText"

.field public static final greylist-max-o EXTRA_BUILDER_APPLICATION_INFO:Ljava/lang/String; = "android.appInfo"

.field public static final whitelist EXTRA_CALL_IS_VIDEO:Ljava/lang/String; = "android.callIsVideo"

.field public static final whitelist EXTRA_CALL_PERSON:Ljava/lang/String; = "android.callPerson"

.field public static final whitelist EXTRA_CALL_TYPE:Ljava/lang/String; = "android.callType"

.field public static final whitelist EXTRA_CHANNEL_GROUP_ID:Ljava/lang/String; = "android.intent.extra.CHANNEL_GROUP_ID"

.field public static final whitelist EXTRA_CHANNEL_ID:Ljava/lang/String; = "android.intent.extra.CHANNEL_ID"

.field public static final whitelist EXTRA_CHRONOMETER_COUNT_DOWN:Ljava/lang/String; = "android.chronometerCountDown"

.field public static final whitelist EXTRA_COLORIZED:Ljava/lang/String; = "android.colorized"

.field public static final whitelist EXTRA_COMPACT_ACTIONS:Ljava/lang/String; = "android.compactActions"

.field public static final greylist-max-o EXTRA_CONTAINS_CUSTOM_VIEW:Ljava/lang/String; = "android.contains.customView"

.field public static final blacklist EXTRA_CONVERSATION_ICON:Ljava/lang/String; = "android.conversationIcon"

.field public static final whitelist EXTRA_CONVERSATION_TITLE:Ljava/lang/String; = "android.conversationTitle"

.field public static final blacklist EXTRA_CONVERSATION_UNREAD_MESSAGE_COUNT:Ljava/lang/String; = "android.conversationUnreadMessageCount"

.field public static final whitelist EXTRA_DECLINE_COLOR:Ljava/lang/String; = "android.declineColor"

.field public static final whitelist EXTRA_DECLINE_INTENT:Ljava/lang/String; = "android.declineIntent"

.field public static final greylist-max-o EXTRA_FOREGROUND_APPS:Ljava/lang/String; = "android.foregroundApps"

.field public static final whitelist EXTRA_HANG_UP_INTENT:Ljava/lang/String; = "android.hangUpIntent"

.field public static final greylist-max-o EXTRA_HIDE_SMART_REPLIES:Ljava/lang/String; = "android.hideSmartReplies"

.field public static final whitelist EXTRA_HISTORIC_MESSAGES:Ljava/lang/String; = "android.messages.historic"

.field public static final whitelist EXTRA_INFO_TEXT:Ljava/lang/String; = "android.infoText"

.field public static final whitelist EXTRA_IS_GROUP_CONVERSATION:Ljava/lang/String; = "android.isGroupConversation"

.field public static final whitelist EXTRA_LARGE_ICON:Ljava/lang/String; = "android.largeIcon"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_LARGE_ICON_BIG:Ljava/lang/String; = "android.largeIcon.big"

.field public static final blacklist EXTRA_MEDIA_REMOTE_DEVICE:Ljava/lang/String; = "android.mediaRemoteDevice"

.field public static final blacklist EXTRA_MEDIA_REMOTE_ICON:Ljava/lang/String; = "android.mediaRemoteIcon"

.field public static final blacklist EXTRA_MEDIA_REMOTE_INTENT:Ljava/lang/String; = "android.mediaRemoteIntent"

.field public static final whitelist EXTRA_MEDIA_SESSION:Ljava/lang/String; = "android.mediaSession"

.field public static final whitelist EXTRA_MESSAGES:Ljava/lang/String; = "android.messages"

.field public static final whitelist EXTRA_MESSAGING_PERSON:Ljava/lang/String; = "android.messagingUser"

.field public static final whitelist EXTRA_NOTIFICATION_ID:Ljava/lang/String; = "android.intent.extra.NOTIFICATION_ID"

.field public static final whitelist EXTRA_NOTIFICATION_TAG:Ljava/lang/String; = "android.intent.extra.NOTIFICATION_TAG"

.field public static final whitelist EXTRA_PEOPLE:Ljava/lang/String; = "android.people"

.field public static final whitelist EXTRA_PEOPLE_LIST:Ljava/lang/String; = "android.people.list"

.field public static final whitelist EXTRA_PICTURE:Ljava/lang/String; = "android.picture"

.field public static final whitelist EXTRA_PICTURE_CONTENT_DESCRIPTION:Ljava/lang/String; = "android.pictureContentDescription"

.field public static final whitelist EXTRA_PICTURE_ICON:Ljava/lang/String; = "android.pictureIcon"

.field public static final whitelist EXTRA_PROGRESS:Ljava/lang/String; = "android.progress"

.field public static final blacklist EXTRA_PROGRESS_END_ICON:Ljava/lang/String; = "android.progressEndIcon"

.field public static final whitelist EXTRA_PROGRESS_INDETERMINATE:Ljava/lang/String; = "android.progressIndeterminate"

.field public static final whitelist EXTRA_PROGRESS_MAX:Ljava/lang/String; = "android.progressMax"

.field public static final blacklist EXTRA_PROGRESS_POINTS:Ljava/lang/String; = "android.progressPoints"

.field public static final blacklist EXTRA_PROGRESS_SEGMENTS:Ljava/lang/String; = "android.progressSegments"

.field public static final blacklist EXTRA_PROGRESS_START_ICON:Ljava/lang/String; = "android.progressStartIcon"

.field public static final blacklist EXTRA_PROGRESS_TRACKER_ICON:Ljava/lang/String; = "android.progressTrackerIcon"

.field public static final greylist-max-o EXTRA_REDUCED_IMAGES:Ljava/lang/String; = "android.reduced.images"

.field public static final whitelist EXTRA_REMOTE_INPUT_DRAFT:Ljava/lang/String; = "android.remoteInputDraft"

.field public static final whitelist EXTRA_REMOTE_INPUT_HISTORY:Ljava/lang/String; = "android.remoteInputHistory"

.field public static final blacklist EXTRA_REMOTE_INPUT_HISTORY_ITEMS:Ljava/lang/String; = "android.remoteInputHistoryItems"

.field public static final whitelist EXTRA_SELF_DISPLAY_NAME:Ljava/lang/String; = "android.selfDisplayName"

.field public static final blacklist EXTRA_SHORT_CRITICAL_TEXT:Ljava/lang/String; = "android.shortCriticalText"

.field public static final whitelist EXTRA_SHOW_BIG_PICTURE_WHEN_COLLAPSED:Ljava/lang/String; = "android.showBigPictureWhenCollapsed"

.field public static final whitelist EXTRA_SHOW_CHRONOMETER:Ljava/lang/String; = "android.showChronometer"

.field public static final greylist-max-o EXTRA_SHOW_REMOTE_INPUT_SPINNER:Ljava/lang/String; = "android.remoteInputSpinner"

.field public static final whitelist EXTRA_SHOW_WHEN:Ljava/lang/String; = "android.showWhen"

.field public static final whitelist EXTRA_SMALL_ICON:Ljava/lang/String; = "android.icon"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist EXTRA_STYLED_BY_PROGRESS:Ljava/lang/String; = "android.styledByProgress"

.field public static final whitelist EXTRA_SUBSTITUTE_APP_NAME:Ljava/lang/String; = "android.substName"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_SUB_TEXT:Ljava/lang/String; = "android.subText"

.field public static final blacklist EXTRA_SUMMARIZED_CONTENT:Ljava/lang/String; = "android.summarization"

.field public static final whitelist EXTRA_SUMMARY_TEXT:Ljava/lang/String; = "android.summaryText"

.field public static final whitelist EXTRA_TEMPLATE:Ljava/lang/String; = "android.template"

.field public static final whitelist EXTRA_TEXT:Ljava/lang/String; = "android.text"

.field public static final whitelist EXTRA_TEXT_LINES:Ljava/lang/String; = "android.textLines"

.field public static final whitelist EXTRA_TITLE:Ljava/lang/String; = "android.title"

.field public static final whitelist EXTRA_TITLE_BIG:Ljava/lang/String; = "android.title.big"

.field public static final whitelist EXTRA_VERIFICATION_ICON:Ljava/lang/String; = "android.verificationIcon"

.field public static final whitelist EXTRA_VERIFICATION_TEXT:Ljava/lang/String; = "android.verificationText"

.field public static final whitelist FLAG_AUTOGROUP_SUMMARY:I = 0x400
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_AUTO_CANCEL:I = 0x10

.field public static final whitelist FLAG_BUBBLE:I = 0x1000

.field public static final greylist-max-o FLAG_CAN_COLORIZE:I = 0x800

.field public static final whitelist FLAG_FOREGROUND_SERVICE:I = 0x40

.field public static final blacklist FLAG_FSI_REQUESTED_BUT_DENIED:I = 0x4000

.field public static final whitelist FLAG_GROUP_SUMMARY:I = 0x200

.field public static final whitelist FLAG_HIGH_PRIORITY:I = 0x80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_INSISTENT:I = 0x4

.field public static final blacklist FLAG_LIFETIME_EXTENDED_BY_DIRECT_REPLY:I = 0x10000

.field public static final whitelist FLAG_LOCAL_ONLY:I = 0x100

.field public static final whitelist FLAG_NO_CLEAR:I = 0x20

.field public static final blacklist FLAG_NO_DISMISS:I = 0x2000

.field public static final whitelist FLAG_ONGOING_EVENT:I = 0x2

.field public static final whitelist FLAG_ONLY_ALERT_ONCE:I = 0x8

.field public static final whitelist FLAG_PROMOTED_ONGOING:I = 0x40000

.field public static final whitelist FLAG_SHOW_LIGHTS:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist FLAG_SILENT:I = 0x20000

.field public static final blacklist FLAG_USER_INITIATED_JOB:I = 0x8000

.field public static final whitelist FOREGROUND_SERVICE_DEFAULT:I = 0x0

.field public static final whitelist FOREGROUND_SERVICE_DEFERRED:I = 0x2

.field public static final whitelist FOREGROUND_SERVICE_IMMEDIATE:I = 0x1

.field public static final whitelist GROUP_ALERT_ALL:I = 0x0

.field public static final whitelist GROUP_ALERT_CHILDREN:I = 0x2

.field public static final whitelist GROUP_ALERT_SUMMARY:I = 0x1

.field public static final blacklist GROUP_KEY_SILENT:Ljava/lang/String; = "silent"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist INTENT_CATEGORY_NOTIFICATION_PREFERENCES:Ljava/lang/String; = "android.intent.category.NOTIFICATION_PREFERENCES"

.field public static final blacklist MAX_ACTION_BUTTONS:I = 0x3

.field private static final greylist-max-o MAX_CHARSEQUENCE_LENGTH:I = 0x400

.field private static final blacklist MAX_LARGE_ICON_ASPECT_RATIO:F = 1.7777778f

.field private static final greylist-max-o MAX_REPLY_HISTORY:I = 0x5

.field private static final blacklist PLATFORM_STYLE_CLASSES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Notification$Style;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final whitelist PRIORITY_DEFAULT:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PRIORITY_HIGH:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PRIORITY_LOW:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PRIORITY_MAX:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PRIORITY_MIN:I = -0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist-max-o STANDARD_LAYOUTS:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist STREAM_DEFAULT:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Notification"

.field public static final whitelist VISIBILITY_PRIVATE:I = 0x0

.field public static final whitelist VISIBILITY_PUBLIC:I = 0x1

.field public static final whitelist VISIBILITY_SECRET:I = -0x1

.field static final blacklist WEARABLE_EXTENDER_BACKGROUND_BLOCKED:J = 0x10204890L

.field public static blacklist processAllowlistToken:Landroid/os/IBinder;


# instance fields
.field public whitelist actions:[Landroid/app/Notification$Action;

.field public greylist allPendingIntents:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field public whitelist audioAttributes:Landroid/media/AudioAttributes;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist audioStreamType:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist bigContentView:Landroid/widget/RemoteViews;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist category:Ljava/lang/String;

.field public whitelist color:I

.field public whitelist contentIntent:Landroid/app/PendingIntent;

.field public whitelist contentView:Landroid/widget/RemoteViews;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public greylist-max-o creationTime:J

.field public whitelist defaults:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist deleteIntent:Landroid/app/PendingIntent;

.field public whitelist extras:Landroid/os/Bundle;

.field public whitelist flags:I

.field public whitelist fullScreenIntent:Landroid/app/PendingIntent;

.field public whitelist headsUpContentView:Landroid/widget/RemoteViews;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist icon:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist iconLevel:I

.field public whitelist largeIcon:Landroid/graphics/Bitmap;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist ledARGB:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist ledOffMS:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist ledOnMS:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private blacklist mAllowSystemGeneratedContextualActions:Z

.field private blacklist mAllowlistToken:Landroid/os/IBinder;

.field private greylist-max-o mBadgeIcon:I

.field private blacklist mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

.field private greylist mChannelId:Ljava/lang/String;

.field private blacklist mFgsDeferBehavior:I

.field private greylist-max-o mGroupAlertBehavior:I

.field private greylist mGroupKey:Ljava/lang/String;

.field private greylist mLargeIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mLocusId:Landroid/content/LocusId;

.field private greylist-max-o mSettingsText:Ljava/lang/CharSequence;

.field private greylist-max-o mShortcutId:Ljava/lang/String;

.field private greylist mSmallIcon:Landroid/graphics/drawable/Icon;

.field private greylist-max-o mSortKey:Ljava/lang/String;

.field private greylist-max-o mTimeout:J

.field private greylist-max-o mUsesStandardHeader:Z

.field public whitelist number:I

.field public whitelist priority:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist publicVersion:Landroid/app/Notification;

.field public whitelist sound:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist tickerText:Ljava/lang/CharSequence;

.field public whitelist tickerView:Landroid/widget/RemoteViews;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist vibrate:[J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist visibility:I

.field public whitelist when:J


# direct methods
.method public static synthetic blacklist $r8$lambda$xKxPSlWQf-Ov1AyfI7OJBxzS3vM(Landroid/app/Notification;Landroid/os/Parcel;Landroid/app/PendingIntent;Landroid/os/Parcel;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/Notification;->lambda$writeToParcel$0(Landroid/os/Parcel;Landroid/app/PendingIntent;Landroid/os/Parcel;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBubbleMetadata(Landroid/app/Notification;)Landroid/app/Notification$BubbleMetadata;
    .registers 1

    iget-object p0, p0, Landroid/app/Notification;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGroupKey(Landroid/app/Notification;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLargeIcon(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;
    .registers 1

    iget-object p0, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShortcutId(Landroid/app/Notification;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/app/Notification;->mShortcutId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSmallIcon(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;
    .registers 1

    iget-object p0, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUsesStandardHeader(Landroid/app/Notification;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/app/Notification;->mUsesStandardHeader:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAllowSystemGeneratedContextualActions(Landroid/app/Notification;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/app/Notification;->mAllowSystemGeneratedContextualActions:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBadgeIcon(Landroid/app/Notification;I)V
    .registers 2

    iput p1, p0, Landroid/app/Notification;->mBadgeIcon:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBubbleMetadata(Landroid/app/Notification;Landroid/app/Notification$BubbleMetadata;)V
    .registers 2

    iput-object p1, p0, Landroid/app/Notification;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmChannelId(Landroid/app/Notification;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/app/Notification;->mChannelId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFgsDeferBehavior(Landroid/app/Notification;I)V
    .registers 2

    iput p1, p0, Landroid/app/Notification;->mFgsDeferBehavior:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmGroupAlertBehavior(Landroid/app/Notification;I)V
    .registers 2

    iput p1, p0, Landroid/app/Notification;->mGroupAlertBehavior:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmGroupKey(Landroid/app/Notification;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLargeIcon(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)V
    .registers 2

    iput-object p1, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLocusId(Landroid/app/Notification;Landroid/content/LocusId;)V
    .registers 2

    iput-object p1, p0, Landroid/app/Notification;->mLocusId:Landroid/content/LocusId;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSettingsText(Landroid/app/Notification;Ljava/lang/CharSequence;)V
    .registers 2

    iput-object p1, p0, Landroid/app/Notification;->mSettingsText:Ljava/lang/CharSequence;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmShortcutId(Landroid/app/Notification;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/app/Notification;->mShortcutId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSmallIcon(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)V
    .registers 2

    iput-object p1, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSortKey(Landroid/app/Notification;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTimeout(Landroid/app/Notification;J)V
    .registers 3

    iput-wide p1, p0, Landroid/app/Notification;->mTimeout:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUsesStandardHeader(Landroid/app/Notification;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/app/Notification;->mUsesStandardHeader:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smareIconsMaybeDifferent(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)Z
    .registers 2

    invoke-static {p0, p1}, Landroid/app/Notification;->areIconsMaybeDifferent(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smbuildCustomContentIntoTemplate(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/app/Notification;->buildCustomContentIntoTemplate(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smgetParcelableArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)[Landroid/os/Parcelable;
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/app/Notification;->getParcelableArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smisPlatformStyle(Landroid/app/Notification$Style;)Z
    .registers 1

    invoke-static {p0}, Landroid/app/Notification;->isPlatformStyle(Landroid/app/Notification$Style;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smisStandardLayout(I)Z
    .registers 1

    invoke-static {p0}, Landroid/app/Notification;->isStandardLayout(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnormalizeBigText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 1

    invoke-static {p0}, Landroid/app/Notification;->normalizeBigText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smstripStyling(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 1

    invoke-static {p0}, Landroid/app/Notification;->stripStyling(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smvisitIconUri(Ljava/util/function/Consumer;Landroid/graphics/drawable/Icon;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/app/Notification;->visitIconUri(Ljava/util/function/Consumer;Landroid/graphics/drawable/Icon;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 9

    .line 474
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/app/Notification;->STANDARD_LAYOUTS:Landroid/util/ArraySet;

    .line 476
    sget-object v0, Landroid/app/Notification;->STANDARD_LAYOUTS:Landroid/util/ArraySet;

    const v1, 0x10900df

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 477
    sget-object v0, Landroid/app/Notification;->STANDARD_LAYOUTS:Landroid/util/ArraySet;

    const v1, 0x10900e9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 478
    sget-object v0, Landroid/app/Notification;->STANDARD_LAYOUTS:Landroid/util/ArraySet;

    const v1, 0x10900e0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 479
    sget-object v0, Landroid/app/Notification;->STANDARD_LAYOUTS:Landroid/util/ArraySet;

    const v1, 0x10900e4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 480
    sget-object v0, Landroid/app/Notification;->STANDARD_LAYOUTS:Landroid/util/ArraySet;

    const v1, 0x10900e5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 481
    sget-object v0, Landroid/app/Notification;->STANDARD_LAYOUTS:Landroid/util/ArraySet;

    const v1, 0x10900ea

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 482
    sget-object v0, Landroid/app/Notification;->STANDARD_LAYOUTS:Landroid/util/ArraySet;

    const v1, 0x10900ec

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 483
    sget-object v0, Landroid/app/Notification;->STANDARD_LAYOUTS:Landroid/util/ArraySet;

    const v1, 0x10900e3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 484
    sget-object v0, Landroid/app/Notification;->STANDARD_LAYOUTS:Landroid/util/ArraySet;

    const v1, 0x10900e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 485
    sget-object v0, Landroid/app/Notification;->STANDARD_LAYOUTS:Landroid/util/ArraySet;

    const v1, 0x10900eb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 486
    sget-object v0, Landroid/app/Notification;->STANDARD_LAYOUTS:Landroid/util/ArraySet;

    const v1, 0x10900e2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 487
    sget-object v0, Landroid/app/Notification;->STANDARD_LAYOUTS:Landroid/util/ArraySet;

    const v1, 0x10900e6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 488
    sget-object v0, Landroid/app/Notification;->STANDARD_LAYOUTS:Landroid/util/ArraySet;

    const v1, 0x10900e1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 489
    sget-object v0, Landroid/app/Notification;->STANDARD_LAYOUTS:Landroid/util/ArraySet;

    const v1, 0x10900de

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 538
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 539
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 540
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 541
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    .line 791
    const-class v1, Landroid/app/Notification$BigTextStyle;

    const-class v2, Landroid/app/Notification$BigPictureStyle;

    const-class v3, Landroid/app/Notification$InboxStyle;

    const-class v4, Landroid/app/Notification$MediaStyle;

    const-class v5, Landroid/app/Notification$DecoratedCustomViewStyle;

    const-class v6, Landroid/app/Notification$DecoratedMediaCustomViewStyle;

    const-class v7, Landroid/app/Notification$MessagingStyle;

    const-class v8, Landroid/app/Notification$CallStyle;

    invoke-static/range {v1 .. v8}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/app/Notification;->PLATFORM_STYLE_CLASSES:Ljava/util/Set;

    .line 3685
    new-instance v0, Landroid/app/Notification$1;

    invoke-direct {v0}, Landroid/app/Notification$1;-><init>()V

    sput-object v0, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 5

    .line 2760
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Notification;->number:I

    .line 532
    const/4 v1, -0x1

    iput v1, p0, Landroid/app/Notification;->audioStreamType:I

    .line 548
    sget-object v1, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v1, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 960
    iput v0, p0, Landroid/app/Notification;->color:I

    .line 1216
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 1848
    iput v0, p0, Landroid/app/Notification;->mGroupAlertBehavior:I

    .line 1866
    iput v0, p0, Landroid/app/Notification;->mBadgeIcon:I

    .line 1871
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Notification;->mAllowSystemGeneratedContextualActions:Z

    .line 2761
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/app/Notification;->when:J

    .line 2762
    invoke-static {}, Landroid/app/Flags;->sortSectionByTime()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 2763
    iget-wide v2, p0, Landroid/app/Notification;->when:J

    iput-wide v2, p0, Landroid/app/Notification;->creationTime:J

    .line 2764
    iget-object v2, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.showWhen"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_3b

    .line 2766
    :cond_35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/app/Notification;->creationTime:J

    .line 2768
    :goto_3b
    iput v0, p0, Landroid/app/Notification;->priority:I

    .line 2769
    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/CharSequence;J)V
    .registers 8
    .param p1, "icon"    # I
    .param p2, "tickerText"    # Ljava/lang/CharSequence;
    .param p3, "when"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2807
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Notification;->number:I

    .line 532
    const/4 v1, -0x1

    iput v1, p0, Landroid/app/Notification;->audioStreamType:I

    .line 548
    sget-object v1, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v1, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 960
    iput v0, p0, Landroid/app/Notification;->color:I

    .line 1216
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 1848
    iput v0, p0, Landroid/app/Notification;->mGroupAlertBehavior:I

    .line 1866
    iput v0, p0, Landroid/app/Notification;->mBadgeIcon:I

    .line 1871
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Notification;->mAllowSystemGeneratedContextualActions:Z

    .line 2808
    iput p1, p0, Landroid/app/Notification;->icon:I

    .line 2809
    iput-object p2, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2810
    iput-wide p3, p0, Landroid/app/Notification;->when:J

    .line 2811
    invoke-static {}, Landroid/app/Flags;->sortSectionByTime()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 2812
    iput-wide p3, p0, Landroid/app/Notification;->creationTime:J

    .line 2813
    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.showWhen"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_39

    .line 2815
    :cond_33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/Notification;->creationTime:J

    .line 2817
    :goto_39
    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;ILjava/lang/CharSequence;JLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "icon"    # I
    .param p3, "tickerText"    # Ljava/lang/CharSequence;
    .param p4, "when"    # J
    .param p6, "contentTitle"    # Ljava/lang/CharSequence;
    .param p7, "contentText"    # Ljava/lang/CharSequence;
    .param p8, "contentIntent"    # Landroid/content/Intent;

    .line 2777
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Notification;->number:I

    .line 532
    const/4 v1, -0x1

    iput v1, p0, Landroid/app/Notification;->audioStreamType:I

    .line 548
    sget-object v1, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v1, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 960
    iput v0, p0, Landroid/app/Notification;->color:I

    .line 1216
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 1848
    iput v0, p0, Landroid/app/Notification;->mGroupAlertBehavior:I

    .line 1866
    iput v0, p0, Landroid/app/Notification;->mBadgeIcon:I

    .line 1871
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Notification;->mAllowSystemGeneratedContextualActions:Z

    .line 2778
    invoke-static {}, Landroid/app/Flags;->sortSectionByTime()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 2779
    iput-wide p4, p0, Landroid/app/Notification;->creationTime:J

    .line 2780
    iget-object v2, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.showWhen"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2782
    :cond_2c
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 2783
    invoke-virtual {v1, p4, p5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 2784
    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 2785
    invoke-virtual {v1, p3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 2786
    invoke-virtual {v1, p6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 2787
    invoke-virtual {v1, p7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 2788
    const/high16 v2, 0x2000000

    invoke-static {p1, v0, p8, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 2790
    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->buildInto(Landroid/app/Notification;)Landroid/app/Notification;

    .line 2791
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 2823
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Notification;->number:I

    .line 532
    const/4 v1, -0x1

    iput v1, p0, Landroid/app/Notification;->audioStreamType:I

    .line 548
    sget-object v1, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v1, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 960
    iput v0, p0, Landroid/app/Notification;->color:I

    .line 1216
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 1848
    iput v0, p0, Landroid/app/Notification;->mGroupAlertBehavior:I

    .line 1866
    iput v0, p0, Landroid/app/Notification;->mBadgeIcon:I

    .line 1871
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Notification;->mAllowSystemGeneratedContextualActions:Z

    .line 2826
    invoke-direct {p0, p1}, Landroid/app/Notification;->readFromParcelImpl(Landroid/os/Parcel;)V

    .line 2828
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    .line 2829
    return-void
.end method

.method public static greylist-max-o addFieldsFromContext(Landroid/content/Context;Landroid/app/Notification;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notification"    # Landroid/app/Notification;

    .line 3926
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/app/Notification;->addFieldsFromContext(Landroid/content/pm/ApplicationInfo;Landroid/app/Notification;)V

    .line 3927
    return-void
.end method

.method public static greylist-max-o addFieldsFromContext(Landroid/content/pm/ApplicationInfo;Landroid/app/Notification;)V
    .registers 4
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "notification"    # Landroid/app/Notification;

    .line 3933
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.appInfo"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3934
    return-void
.end method

.method public static greylist-max-o areActionsVisiblyDifferent(Landroid/app/Notification;Landroid/app/Notification;)Z
    .registers 12
    .param p0, "first"    # Landroid/app/Notification;
    .param p1, "second"    # Landroid/app/Notification;

    .line 3703
    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 3704
    .local v0, "firstAs":[Landroid/app/Notification$Action;
    iget-object v1, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 3705
    .local v1, "secondAs":[Landroid/app/Notification$Action;
    const/4 v2, 0x1

    if-nez v0, :cond_9

    if-nez v1, :cond_d

    :cond_9
    if-eqz v0, :cond_e

    if-nez v1, :cond_e

    .line 3706
    :cond_d
    return v2

    .line 3708
    :cond_e
    const/4 v3, 0x0

    if-eqz v0, :cond_71

    if-eqz v1, :cond_71

    .line 3709
    array-length v4, v0

    array-length v5, v1

    if-eq v4, v5, :cond_18

    .line 3710
    return v2

    .line 3712
    :cond_18
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_19
    array-length v5, v0

    if-ge v4, v5, :cond_71

    .line 3713
    aget-object v5, v0, v4

    iget-object v5, v5, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aget-object v6, v1, v4

    iget-object v6, v6, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 3714
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 3713
    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_33

    .line 3715
    return v2

    .line 3717
    :cond_33
    aget-object v5, v0, v4

    invoke-virtual {v5}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v5

    .line 3718
    .local v5, "firstRs":[Landroid/app/RemoteInput;
    aget-object v6, v1, v4

    invoke-virtual {v6}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v6

    .line 3719
    .local v6, "secondRs":[Landroid/app/RemoteInput;
    if-nez v5, :cond_43

    .line 3720
    new-array v5, v3, [Landroid/app/RemoteInput;

    .line 3722
    :cond_43
    if-nez v6, :cond_47

    .line 3723
    new-array v6, v3, [Landroid/app/RemoteInput;

    .line 3725
    :cond_47
    array-length v7, v5

    array-length v8, v6

    if-eq v7, v8, :cond_4c

    .line 3726
    return v2

    .line 3728
    :cond_4c
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_4d
    array-length v8, v5

    if-ge v7, v8, :cond_6e

    .line 3729
    aget-object v8, v5, v7

    invoke-virtual {v8}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aget-object v9, v6, v7

    .line 3730
    invoke-virtual {v9}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 3729
    invoke-static {v8, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6b

    .line 3731
    return v2

    .line 3728
    :cond_6b
    add-int/lit8 v7, v7, 0x1

    goto :goto_4d

    .line 3712
    .end local v5    # "firstRs":[Landroid/app/RemoteInput;
    .end local v6    # "secondRs":[Landroid/app/RemoteInput;
    .end local v7    # "j":I
    :cond_6e
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 3736
    .end local v4    # "i":I
    :cond_71
    return v3
.end method

.method public static blacklist areIconsDifferent(Landroid/app/Notification;Landroid/app/Notification;)Z
    .registers 4
    .param p0, "first"    # Landroid/app/Notification;
    .param p1, "second"    # Landroid/app/Notification;

    .line 3743
    invoke-virtual {p0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/Notification;->areIconsMaybeDifferent(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 3744
    invoke-virtual {p0}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/Notification;->areIconsMaybeDifferent(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v0, 0x1

    .line 3743
    :goto_20
    return v0
.end method

.method private static blacklist areIconsMaybeDifferent(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)Z
    .registers 9
    .param p0, "a"    # Landroid/graphics/drawable/Icon;
    .param p1, "b"    # Landroid/graphics/drawable/Icon;

    .line 3752
    const/4 v0, 0x0

    if-ne p0, p1, :cond_4

    .line 3753
    return v0

    .line 3755
    :cond_4
    const/4 v1, 0x1

    if-eqz p0, :cond_55

    if-nez p1, :cond_a

    goto :goto_55

    .line 3758
    :cond_a
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Icon;->sameAs(Landroid/graphics/drawable/Icon;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 3759
    return v0

    .line 3761
    :cond_11
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v2

    .line 3762
    .local v2, "aType":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v3

    if-eq v2, v3, :cond_1c

    .line 3763
    return v1

    .line 3765
    :cond_1c
    if-eq v2, v1, :cond_23

    const/4 v3, 0x5

    if-ne v2, v3, :cond_22

    goto :goto_23

    .line 3773
    :cond_22
    return v1

    .line 3766
    :cond_23
    :goto_23
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 3767
    .local v3, "aBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 3768
    .local v4, "bBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-ne v5, v6, :cond_53

    .line 3769
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-ne v5, v6, :cond_53

    .line 3770
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    if-ne v5, v6, :cond_53

    .line 3771
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getGenerationId()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getGenerationId()I

    move-result v6

    if-eq v5, v6, :cond_54

    :cond_53
    move v0, v1

    .line 3768
    :cond_54
    return v0

    .line 3756
    .end local v2    # "aType":I
    .end local v3    # "aBitmap":Landroid/graphics/Bitmap;
    .end local v4    # "bBitmap":Landroid/graphics/Bitmap;
    :cond_55
    :goto_55
    return v1
.end method

.method public static greylist-max-o areRemoteViewsChanged(Landroid/app/Notification$Builder;Landroid/app/Notification$Builder;)Z
    .registers 5
    .param p0, "first"    # Landroid/app/Notification$Builder;
    .param p1, "second"    # Landroid/app/Notification$Builder;

    .line 3793
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->usesStandardHeader()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->usesStandardHeader()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_18

    .line 3794
    return v1

    .line 3797
    :cond_18
    invoke-static {p0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-static {p1}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-static {v0, v2}, Landroid/app/Notification;->areRemoteViewsChanged(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 3798
    return v1

    .line 3800
    :cond_2b
    invoke-static {p0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-static {p1}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-static {v0, v2}, Landroid/app/Notification;->areRemoteViewsChanged(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 3801
    return v1

    .line 3803
    :cond_3e
    invoke-static {p0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-static {p1}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-static {v0, v2}, Landroid/app/Notification;->areRemoteViewsChanged(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 3804
    return v1

    .line 3807
    :cond_51
    const/4 v0, 0x0

    return v0
.end method

.method private static greylist-max-o areRemoteViewsChanged(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z
    .registers 6
    .param p0, "first"    # Landroid/widget/RemoteViews;
    .param p1, "second"    # Landroid/widget/RemoteViews;

    .line 3811
    const/4 v0, 0x0

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    .line 3812
    return v0

    .line 3814
    :cond_6
    const/4 v1, 0x1

    if-nez p0, :cond_b

    if-nez p1, :cond_f

    :cond_b
    if-eqz p0, :cond_10

    if-nez p1, :cond_10

    .line 3815
    :cond_f
    return v1

    .line 3818
    :cond_10
    invoke-virtual {p0}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 3819
    return v1

    .line 3822
    :cond_27
    invoke-virtual {p0}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 3823
    return v1

    .line 3826
    :cond_3e
    return v0
.end method

.method public static greylist-max-o areStyledNotificationsVisiblyDifferent(Landroid/app/Notification$Builder;Landroid/app/Notification$Builder;)Z
    .registers 4
    .param p0, "first"    # Landroid/app/Notification$Builder;
    .param p1, "second"    # Landroid/app/Notification$Builder;

    .line 3780
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_10

    .line 3781
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    move-result-object v0

    if-eqz v0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1

    .line 3783
    :cond_10
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    move-result-object v0

    if-nez v0, :cond_17

    .line 3784
    return v1

    .line 3786
    :cond_17
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Style;->areNotificationsVisiblyDifferent(Landroid/app/Notification$Style;)Z

    move-result v0

    return v0
.end method

.method private static blacklist buildCustomContentIntoTemplate(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)V
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "template"    # Landroid/widget/RemoteViews;
    .param p2, "customContent"    # Landroid/widget/RemoteViews;
    .param p3, "p"    # Landroid/app/Notification$StandardTemplateParams;
    .param p4, "result"    # Landroid/app/Notification$TemplateBindResult;

    .line 8249
    const/4 v0, -0x1

    .line 8250
    .local v0, "childIndex":I
    const v1, 0x102042f

    if-eqz p2, :cond_3e

    .line 8253
    invoke-virtual {p2}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object p2

    .line 8254
    iget-boolean v2, p3, Landroid/app/Notification$StandardTemplateParams;->mHeaderless:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_19

    .line 8255
    const v2, 0x102043a

    invoke-virtual {p1, v2}, Landroid/widget/RemoteViews;->removeFromParent(I)V

    .line 8259
    invoke-static {p1, p3, v3}, Landroid/app/Notification$Builder;->-$$Nest$smsetHeaderlessVerticalMargins(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Z)V

    goto :goto_30

    .line 8262
    :cond_19
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 8263
    .local v2, "resources":Landroid/content/res/Resources;
    iget-object v4, p4, Landroid/app/Notification$TemplateBindResult;->mTitleMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;

    .line 8264
    const v5, 0x10502a9

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 8265
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v5, v6

    .line 8263
    invoke-virtual {v4, p1, v1, v5}, Landroid/app/Notification$TemplateBindResult$MarginSet;->applyToView(Landroid/widget/RemoteViews;IF)V

    .line 8267
    .end local v2    # "resources":Landroid/content/res/Resources;
    :goto_30
    const v2, 0x102000d

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->removeAllViewsExceptId(II)V

    .line 8268
    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;I)V

    .line 8269
    invoke-virtual {p1, v3}, Landroid/widget/RemoteViews;->addFlags(I)V

    .line 8270
    const/4 v0, 0x0

    .line 8272
    :cond_3e
    const v2, 0x102042b

    invoke-virtual {p1, v1, v2, v0}, Landroid/widget/RemoteViews;->setIntTag(III)V

    .line 8275
    return-void
.end method

.method public static blacklist defaultsToString(I)Ljava/lang/String;
    .registers 4
    .param p0, "defaults"    # I

    .line 4176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4177
    .local v0, "defaultStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    and-int/lit8 v1, p0, -0x1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_11

    .line 4178
    const-string v1, "ALL"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4179
    and-int/lit8 p0, p0, 0x0

    .line 4181
    :cond_11
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_1c

    .line 4182
    const-string v1, "SOUND"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4183
    and-int/lit8 p0, p0, -0x2

    .line 4185
    :cond_1c
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_27

    .line 4186
    const-string v1, "VIBRATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4187
    and-int/lit8 p0, p0, -0x3

    .line 4189
    :cond_27
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_32

    .line 4190
    const-string v1, "LIGHTS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4191
    and-int/lit8 p0, p0, -0x5

    .line 4194
    :cond_32
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 4195
    const-string v1, "0"

    return-object v1

    .line 4198
    :cond_3b
    if-eqz p0, :cond_4e

    .line 4199
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "UNKNOWN(0x%08x)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4202
    :cond_4e
    const-string/jumbo v1, "|"

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o fixDuplicateExtra(Landroid/os/Parcelable;Ljava/lang/String;)V
    .registers 5
    .param p1, "original"    # Landroid/os/Parcelable;
    .param p2, "extraName"    # Ljava/lang/String;

    .line 3850
    if-eqz p1, :cond_11

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-class v1, Landroid/os/Parcelable;

    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 3851
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3853
    :cond_11
    return-void
.end method

.method private greylist-max-o fixDuplicateExtras()V
    .registers 3

    .line 3840
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_b

    .line 3841
    iget-object v0, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    const-string v1, "android.largeIcon"

    invoke-direct {p0, v0, v1}, Landroid/app/Notification;->fixDuplicateExtra(Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 3843
    :cond_b
    return-void
.end method

.method public static blacklist flagsToString(I)Ljava/lang/String;
    .registers 4
    .param p0, "flags"    # I

    .line 4078
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4079
    .local v0, "flagStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_10

    .line 4080
    const-string v1, "SHOW_LIGHTS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4081
    and-int/lit8 p0, p0, -0x2

    .line 4083
    :cond_10
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1b

    .line 4084
    const-string v1, "ONGOING_EVENT"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4085
    and-int/lit8 p0, p0, -0x3

    .line 4087
    :cond_1b
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_26

    .line 4088
    const-string v1, "INSISTENT"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4089
    and-int/lit8 p0, p0, -0x5

    .line 4091
    :cond_26
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_31

    .line 4092
    const-string v1, "ONLY_ALERT_ONCE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4093
    and-int/lit8 p0, p0, -0x9

    .line 4095
    :cond_31
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_3c

    .line 4096
    const-string v1, "AUTO_CANCEL"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4097
    and-int/lit8 p0, p0, -0x11

    .line 4099
    :cond_3c
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_47

    .line 4100
    const-string v1, "NO_CLEAR"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4101
    and-int/lit8 p0, p0, -0x21

    .line 4103
    :cond_47
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_52

    .line 4104
    const-string v1, "FOREGROUND_SERVICE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4105
    and-int/lit8 p0, p0, -0x41

    .line 4107
    :cond_52
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_5d

    .line 4108
    const-string v1, "HIGH_PRIORITY"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4109
    and-int/lit16 p0, p0, -0x81

    .line 4111
    :cond_5d
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_68

    .line 4112
    const-string v1, "LOCAL_ONLY"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4113
    and-int/lit16 p0, p0, -0x101

    .line 4115
    :cond_68
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_73

    .line 4116
    const-string v1, "GROUP_SUMMARY"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4117
    and-int/lit16 p0, p0, -0x201

    .line 4119
    :cond_73
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_7e

    .line 4120
    const-string v1, "AUTOGROUP_SUMMARY"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4121
    and-int/lit16 p0, p0, -0x401

    .line 4123
    :cond_7e
    and-int/lit16 v1, p0, 0x800

    if-eqz v1, :cond_89

    .line 4124
    const-string v1, "CAN_COLORIZE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4125
    and-int/lit16 p0, p0, -0x801

    .line 4127
    :cond_89
    and-int/lit16 v1, p0, 0x1000

    if-eqz v1, :cond_94

    .line 4128
    const-string v1, "BUBBLE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4129
    and-int/lit16 p0, p0, -0x1001

    .line 4131
    :cond_94
    and-int/lit16 v1, p0, 0x2000

    if-eqz v1, :cond_9f

    .line 4132
    const-string v1, "NO_DISMISS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4133
    and-int/lit16 p0, p0, -0x2001

    .line 4135
    :cond_9f
    and-int/lit16 v1, p0, 0x4000

    if-eqz v1, :cond_aa

    .line 4136
    const-string v1, "FSI_REQUESTED_BUT_DENIED"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4137
    and-int/lit16 p0, p0, -0x4001

    .line 4139
    :cond_aa
    const v1, 0x8000

    and-int/2addr v1, p0

    if-eqz v1, :cond_b9

    .line 4140
    const-string v1, "USER_INITIATED_JOB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4141
    const v1, -0x8001

    and-int/2addr p0, v1

    .line 4143
    :cond_b9
    invoke-static {}, Landroid/app/Flags;->lifetimeExtensionRefactor()Z

    move-result v1

    if-eqz v1, :cond_cd

    .line 4144
    const/high16 v1, 0x10000

    and-int/2addr v1, p0

    if-eqz v1, :cond_cd

    .line 4145
    const-string v1, "LIFETIME_EXTENDED_BY_DIRECT_REPLY"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4146
    const v1, -0x10001

    and-int/2addr p0, v1

    .line 4149
    :cond_cd
    invoke-static {}, Landroid/app/Flags;->apiRichOngoing()Z

    move-result v1

    if-eqz v1, :cond_e1

    .line 4150
    const/high16 v1, 0x40000

    and-int/2addr v1, p0

    if-eqz v1, :cond_e1

    .line 4151
    const-string v1, "PROMOTED_ONGOING"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4152
    const v1, -0x40001

    and-int/2addr p0, v1

    .line 4156
    :cond_e1
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/Flags;->notificationSilentFlag()Z

    move-result v1

    if-eqz v1, :cond_f5

    .line 4157
    const/high16 v1, 0x20000

    and-int/2addr v1, p0

    if-eqz v1, :cond_f5

    .line 4158
    const-string v1, "SILENT"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4159
    const v1, -0x20001

    and-int/2addr p0, v1

    .line 4163
    :cond_f5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_fe

    .line 4164
    const-string v1, "0"

    return-object v1

    .line 4167
    :cond_fe
    if-eqz p0, :cond_111

    .line 4168
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "UNKNOWN(0x%08x)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4171
    :cond_111
    const-string/jumbo v1, "|"

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getApplicationInfo(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 3321
    const/4 v0, 0x0

    .line 3322
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.appInfo"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 3323
    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-class v3, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 3327
    :cond_16
    if-nez v0, :cond_20

    .line 3328
    if-nez p1, :cond_1c

    .line 3329
    const/4 v1, 0x0

    return-object v1

    .line 3331
    :cond_1c
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 3333
    :cond_20
    return-object v0
.end method

.method public static greylist getNotificationStyleClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "templateClass"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Notification$Style;",
            ">;"
        }
    .end annotation

    .line 8232
    sget-object v0, Landroid/app/Notification;->PLATFORM_STYLE_CLASSES:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 8233
    .local v1, "innerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 8234
    return-object v1

    .line 8236
    .end local v1    # "innerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    :cond_1d
    goto :goto_6

    .line 8238
    :cond_1e
    invoke-static {}, Landroid/app/Flags;->apiRichOngoing()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 8239
    const-class v0, Landroid/app/Notification$ProgressStyle;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 8240
    const-class v0, Landroid/app/Notification$ProgressStyle;

    return-object v0

    .line 8243
    :cond_33
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist getParcelableArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)[Landroid/os/Parcelable;
    .registers 8
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 14706
    .local p2, "itemClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Landroid/os/Parcelable;

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    .line 14707
    .local v0, "array":[Landroid/os/Parcelable;
    const/4 v1, 0x0

    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 14708
    .local v1, "arrayClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    if-nez v0, :cond_1a

    goto :goto_30

    .line 14711
    :cond_1a
    array-length v2, v0

    invoke-static {p2, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/os/Parcelable;

    .line 14712
    .local v2, "typedArray":[Landroid/os/Parcelable;, "[TT;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_22
    array-length v4, v0

    if-ge v3, v4, :cond_2c

    .line 14713
    aget-object v4, v0, v3

    aput-object v4, v2, v3

    .line 14712
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 14715
    .end local v3    # "i":I
    :cond_2c
    invoke-virtual {p0, p1, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 14716
    return-object v2

    .line 14709
    .end local v2    # "typedArray":[Landroid/os/Parcelable;, "[TT;"
    :cond_30
    :goto_30
    return-object v0
.end method

.method private greylist-max-o hasLargeIcon()Z
    .registers 2

    .line 8160
    iget-object v0, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    if-nez v0, :cond_b

    iget-object v0, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method private blacklist isColorizedRequested()Z
    .registers 3

    .line 8092
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.colorized"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private blacklist isOngoingCallStyle()Z
    .registers 4

    .line 3310
    const-class v0, Landroid/app/Notification$CallStyle;

    invoke-virtual {p0, v0}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 3311
    return v1

    .line 3313
    :cond_a
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.callType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3314
    .local v0, "callType":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1
.end method

.method private static blacklist isPlatformStyle(Landroid/app/Notification$Style;)Z
    .registers 5
    .param p0, "style"    # Landroid/app/Notification$Style;

    .line 803
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 804
    return v0

    .line 807
    :cond_4
    sget-object v1, Landroid/app/Notification;->PLATFORM_STYLE_CLASSES:Ljava/util/Set;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_12

    .line 808
    return v2

    .line 811
    :cond_12
    invoke-static {}, Landroid/app/Flags;->apiRichOngoing()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 812
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v3, Landroid/app/Notification$ProgressStyle;

    if-ne v1, v3, :cond_21

    move v0, v2

    :cond_21
    return v0

    .line 815
    :cond_22
    return v0
.end method

.method private static blacklist isStandardLayout(I)Z
    .registers 3
    .param p0, "layoutId"    # I

    .line 819
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    .line 820
    packed-switch p0, :pswitch_data_2a

    .line 838
    :pswitch_a
    const/4 v1, 0x0

    goto :goto_12

    .line 837
    :pswitch_c
    invoke-static {}, Landroid/app/Flags;->apiRichOngoing()Z

    move-result v1

    goto :goto_12

    .line 835
    :pswitch_11
    nop

    .line 820
    :goto_12
    return v1

    .line 841
    :cond_13
    invoke-static {}, Landroid/app/Flags;->apiRichOngoing()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 842
    const v0, 0x10900ee

    if-ne p0, v0, :cond_1f

    .line 843
    return v1

    .line 846
    :cond_1f
    sget-object v0, Landroid/app/Notification;->STANDARD_LAYOUTS:Landroid/util/ArraySet;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :pswitch_data_2a
    .packed-switch 0x10900bd
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_a
        :pswitch_a
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_c
        :pswitch_11
        :pswitch_11
    .end packed-switch
.end method

.method private synthetic blacklist lambda$writeToParcel$0(Landroid/os/Parcel;Landroid/app/PendingIntent;Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "out"    # Landroid/os/Parcel;
    .param p4, "outFlags"    # I

    .line 3465
    if-ne p1, p3, :cond_18

    .line 3466
    monitor-enter p0

    .line 3467
    :try_start_3
    iget-object v0, p0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    if-nez v0, :cond_e

    .line 3468
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    .line 3470
    :cond_e
    iget-object v0, p0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3471
    monitor-exit p0

    goto :goto_18

    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0

    .line 3473
    :cond_18
    :goto_18
    return-void
.end method

.method private static blacklist normalizeBigText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2
    .param p0, "charSequence"    # Ljava/lang/CharSequence;

    .line 3408
    if-nez p0, :cond_3

    .line 3409
    return-object p0

    .line 3412
    :cond_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/NotificationBigTextNormalizer;->normalizeBigText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o priorityToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "pri"    # I

    .line 4058
    packed-switch p0, :pswitch_data_30

    .line 4070
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4068
    :pswitch_21
    const-string v0, "MAX"

    return-object v0

    .line 4066
    :pswitch_24
    const-string v0, "HIGH"

    return-object v0

    .line 4064
    :pswitch_27
    const-string v0, "DEFAULT"

    return-object v0

    .line 4062
    :pswitch_2a
    const-string v0, "LOW"

    return-object v0

    .line 4060
    :pswitch_2d
    const-string v0, "MIN"

    return-object v0

    :pswitch_data_30
    .packed-switch -0x2
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
    .end packed-switch
.end method

.method private greylist-max-o readFromParcelImpl(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 2833
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2835
    .local v0, "version":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification;->mAllowlistToken:Landroid/os/IBinder;

    .line 2836
    iget-object v1, p0, Landroid/app/Notification;->mAllowlistToken:Landroid/os/IBinder;

    if-nez v1, :cond_12

    .line 2837
    sget-object v1, Landroid/app/Notification;->processAllowlistToken:Landroid/os/IBinder;

    iput-object v1, p0, Landroid/app/Notification;->mAllowlistToken:Landroid/os/IBinder;

    .line 2841
    :cond_12
    const-class v1, Landroid/app/PendingIntent;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->hasClassCookie(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 2842
    const-class v1, Landroid/app/PendingIntent;

    iget-object v2, p0, Landroid/app/Notification;->mAllowlistToken:Landroid/os/IBinder;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->setClassCookie(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 2845
    :cond_21
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/app/Notification;->when:J

    .line 2846
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/app/Notification;->creationTime:J

    .line 2847
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4e

    .line 2848
    sget-object v1, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Icon;

    iput-object v1, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    .line 2849
    iget-object v1, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4e

    .line 2850
    iget-object v1, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->icon:I

    .line 2853
    :cond_4e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->number:I

    .line 2854
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_64

    .line 2855
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 2857
    :cond_64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_74

    .line 2858
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, p0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 2860
    :cond_74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_84

    .line 2861
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    iput-object v1, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2863
    :cond_84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_94

    .line 2864
    sget-object v1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    iput-object v1, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    .line 2866
    :cond_94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a4

    .line 2867
    sget-object v1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    iput-object v1, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 2869
    :cond_a4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b4

    .line 2870
    sget-object v1, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Icon;

    iput-object v1, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    .line 2872
    :cond_b4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->defaults:I

    .line 2873
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->flags:I

    .line 2874
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d0

    .line 2875
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 2878
    :cond_d0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->audioStreamType:I

    .line 2879
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e6

    .line 2880
    sget-object v1, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    iput-object v1, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 2882
    :cond_e6
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification;->vibrate:[J

    .line 2883
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->ledARGB:I

    .line 2884
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->ledOnMS:I

    .line 2885
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->ledOffMS:I

    .line 2886
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->iconLevel:I

    .line 2888
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_114

    .line 2889
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 2892
    :cond_114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->priority:I

    .line 2894
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 2896
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    .line 2898
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    .line 2900
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 2901
    invoke-direct {p0}, Landroid/app/Notification;->fixDuplicateExtras()V

    .line 2903
    sget-object v1, Landroid/app/Notification$Action;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/app/Notification$Action;

    iput-object v1, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 2905
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_154

    .line 2906
    sget-object v1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    iput-object v1, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 2909
    :cond_154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_164

    .line 2910
    sget-object v1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    iput-object v1, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 2913
    :cond_164
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->visibility:I

    .line 2915
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_17a

    .line 2916
    sget-object v1, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification;

    iput-object v1, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    .line 2919
    :cond_17a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->color:I

    .line 2921
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_18c

    .line 2922
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification;->mChannelId:Ljava/lang/String;

    .line 2924
    :cond_18c
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/app/Notification;->mTimeout:J

    .line 2926
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_19e

    .line 2927
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification;->mShortcutId:Ljava/lang/String;

    .line 2930
    :cond_19e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1ae

    .line 2931
    sget-object v1, Landroid/content/LocusId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/LocusId;

    iput-object v1, p0, Landroid/app/Notification;->mLocusId:Landroid/content/LocusId;

    .line 2934
    :cond_1ae
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->mBadgeIcon:I

    .line 2936
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1c4

    .line 2937
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    iput-object v1, p0, Landroid/app/Notification;->mSettingsText:Ljava/lang/CharSequence;

    .line 2940
    :cond_1c4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->mGroupAlertBehavior:I

    .line 2941
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1da

    .line 2942
    sget-object v1, Landroid/app/Notification$BubbleMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification$BubbleMetadata;

    iput-object v1, p0, Landroid/app/Notification;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    .line 2945
    :cond_1da
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/app/Notification;->mAllowSystemGeneratedContextualActions:Z

    .line 2947
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->mFgsDeferBehavior:I

    .line 2948
    return-void
.end method

.method private greylist-max-o reduceImageSizesForRemoteView(Landroid/widget/RemoteViews;Landroid/content/Context;Z)V
    .registers 7
    .param p1, "remoteView"    # Landroid/widget/RemoteViews;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "isLowRam"    # Z

    .line 7957
    if-eqz p1, :cond_23

    .line 7958
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 7959
    .local v0, "resources":Landroid/content/res/Resources;
    if-eqz p3, :cond_c

    .line 7960
    const v1, 0x10502b0

    goto :goto_f

    .line 7961
    :cond_c
    const v1, 0x10502af

    .line 7959
    :goto_f
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 7962
    .local v1, "maxWidth":I
    if-eqz p3, :cond_19

    .line 7963
    const v2, 0x10502ae

    goto :goto_1c

    .line 7964
    :cond_19
    const v2, 0x10502ad

    .line 7962
    :goto_1c
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 7965
    .local v2, "maxHeight":I
    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->reduceImageSizes(II)V

    .line 7967
    .end local v0    # "resources":Landroid/content/res/Resources;
    .end local v1    # "maxWidth":I
    .end local v2    # "maxHeight":I
    :cond_23
    return-void
.end method

.method private static greylist-max-o removeTextSizeSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 15
    .param p0, "charSequence"    # Ljava/lang/CharSequence;

    .line 3416
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_67

    .line 3417
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    .line 3418
    .local v0, "ss":Landroid/text/Spanned;
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 3419
    .local v1, "spans":[Ljava/lang/Object;
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-interface {v0}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3420
    .local v2, "builder":Landroid/text/SpannableStringBuilder;
    array-length v4, v1

    :goto_1c
    if-ge v3, v4, :cond_66

    aget-object v5, v1, v3

    .line 3421
    .local v5, "span":Ljava/lang/Object;
    move-object v6, v5

    .line 3422
    .local v6, "resultSpan":Ljava/lang/Object;
    instance-of v7, v6, Landroid/text/style/CharacterStyle;

    if-eqz v7, :cond_2c

    .line 3423
    move-object v7, v5

    check-cast v7, Landroid/text/style/CharacterStyle;

    invoke-virtual {v7}, Landroid/text/style/CharacterStyle;->getUnderlying()Landroid/text/style/CharacterStyle;

    move-result-object v6

    .line 3425
    :cond_2c
    instance-of v7, v6, Landroid/text/style/TextAppearanceSpan;

    if-eqz v7, :cond_4a

    .line 3426
    move-object v7, v6

    check-cast v7, Landroid/text/style/TextAppearanceSpan;

    .line 3427
    .local v7, "originalSpan":Landroid/text/style/TextAppearanceSpan;
    new-instance v8, Landroid/text/style/TextAppearanceSpan;

    .line 3428
    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getFamily()Ljava/lang/String;

    move-result-object v9

    .line 3429
    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    move-result v10

    .line 3431
    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v12

    .line 3432
    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    move-result-object v13

    const/4 v11, -0x1

    invoke-direct/range {v8 .. v13}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    .line 3433
    .end local v6    # "resultSpan":Ljava/lang/Object;
    .end local v7    # "originalSpan":Landroid/text/style/TextAppearanceSpan;
    .local v8, "resultSpan":Ljava/lang/Object;
    goto :goto_54

    .end local v8    # "resultSpan":Ljava/lang/Object;
    .restart local v6    # "resultSpan":Ljava/lang/Object;
    :cond_4a
    instance-of v7, v6, Landroid/text/style/RelativeSizeSpan;

    if-nez v7, :cond_63

    instance-of v7, v6, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v7, :cond_53

    .line 3435
    goto :goto_63

    .line 3437
    :cond_53
    move-object v8, v5

    .line 3439
    .end local v6    # "resultSpan":Ljava/lang/Object;
    .restart local v8    # "resultSpan":Ljava/lang/Object;
    :goto_54
    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    .line 3440
    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v9

    .line 3439
    invoke-virtual {v2, v8, v6, v7, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3420
    .end local v5    # "span":Ljava/lang/Object;
    .end local v8    # "resultSpan":Ljava/lang/Object;
    :cond_63
    :goto_63
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 3442
    :cond_66
    return-object v2

    .line 3444
    .end local v0    # "ss":Landroid/text/Spanned;
    .end local v1    # "spans":[Ljava/lang/Object;
    .end local v2    # "builder":Landroid/text/SpannableStringBuilder;
    :cond_67
    return-object p0
.end method

.method public static greylist-max-o safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 3386
    if-nez p0, :cond_3

    return-object p0

    .line 3387
    :cond_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x400

    if-le v0, v1, :cond_10

    .line 3388
    const/4 v0, 0x0

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    .line 3390
    :cond_10
    instance-of v0, p0, Landroid/os/Parcelable;

    if-eqz v0, :cond_40

    .line 3391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "warning: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Ljava/lang/CharSequence;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " instance is a custom Parcelable and not allowed in Notification"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Notification"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3393
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3396
    :cond_40
    invoke-static {p0}, Landroid/app/Notification;->removeTextSizeSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist safeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .line 3373
    if-nez p0, :cond_3

    return-object p0

    .line 3374
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x400

    if-le v0, v1, :cond_10

    .line 3375
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 3377
    :cond_10
    return-object p0
.end method

.method private static blacklist stripStyling(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 3400
    if-nez p0, :cond_3

    .line 3401
    return-object p0

    .line 3404
    :cond_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o visibilityToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "vis"    # I

    .line 4042
    packed-switch p0, :pswitch_data_2a

    .line 4050
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4046
    :pswitch_21
    const-string v0, "PUBLIC"

    return-object v0

    .line 4044
    :pswitch_24
    const-string v0, "PRIVATE"

    return-object v0

    .line 4048
    :pswitch_27
    const-string v0, "SECRET"

    return-object v0

    :pswitch_data_2a
    .packed-switch -0x1
        :pswitch_27
        :pswitch_24
        :pswitch_21
    .end packed-switch
.end method

.method private static blacklist visitIconUri(Ljava/util/function/Consumer;Landroid/graphics/drawable/Icon;)V
    .registers 4
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/graphics/drawable/Icon;",
            ")V"
        }
    .end annotation

    .line 3073
    .local p0, "visitor":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/Uri;>;"
    if-nez p1, :cond_3

    return-void

    .line 3074
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    .line 3075
    .local v0, "iconType":I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_d

    const/4 v1, 0x6

    if-ne v0, v1, :cond_14

    .line 3076
    :cond_d
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3078
    :cond_14
    return-void
.end method

.method private greylist-max-o writeToParcelImpl(Landroid/os/Parcel;I)V
    .registers 9
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 3507
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3510
    const-class v1, Landroid/app/Notification;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->getClassCookie(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 3511
    .local v1, "rootNotificationToken":Landroid/os/IBinder;
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3513
    iget-wide v2, p0, Landroid/app/Notification;->when:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 3514
    iget-wide v2, p0, Landroid/app/Notification;->creationTime:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 3515
    iget-object v2, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    if-nez v2, :cond_2b

    iget v2, p0, Landroid/app/Notification;->icon:I

    if-eqz v2, :cond_2b

    .line 3517
    const-string v2, ""

    iget v3, p0, Landroid/app/Notification;->icon:I

    invoke-static {v2, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    iput-object v2, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    .line 3519
    :cond_2b
    iget-object v2, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    const/4 v3, 0x0

    if-eqz v2, :cond_39

    .line 3520
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3521
    iget-object v2, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v2, p1, v3}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3c

    .line 3523
    :cond_39
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3525
    :goto_3c
    iget v2, p0, Landroid/app/Notification;->number:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3526
    iget-object v2, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_4e

    .line 3527
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3528
    iget-object v2, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, p1, v3}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_51

    .line 3530
    :cond_4e
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3532
    :goto_51
    iget-object v2, p0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_5e

    .line 3533
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3534
    iget-object v2, p0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, p1, v3}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_61

    .line 3536
    :cond_5e
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3538
    :goto_61
    iget-object v2, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_6e

    .line 3539
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3540
    iget-object v2, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v2, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_71

    .line 3542
    :cond_6e
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3544
    :goto_71
    iget-object v2, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_7e

    .line 3545
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3546
    iget-object v2, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    invoke-virtual {v2, p1, v3}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_81

    .line 3548
    :cond_7e
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3550
    :goto_81
    iget-object v2, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_8e

    .line 3551
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3552
    iget-object v2, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v2, p1, v3}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_91

    .line 3554
    :cond_8e
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3556
    :goto_91
    iget-object v2, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    if-nez v2, :cond_a1

    iget-object v2, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_a1

    .line 3558
    iget-object v2, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    invoke-static {v2}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v2

    iput-object v2, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    .line 3560
    :cond_a1
    iget-object v2, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    if-eqz v2, :cond_ae

    .line 3561
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3562
    iget-object v2, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v2, p1, v3}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_b1

    .line 3564
    :cond_ae
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3567
    :goto_b1
    iget v2, p0, Landroid/app/Notification;->defaults:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3568
    iget v2, p0, Landroid/app/Notification;->flags:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3570
    iget-object v2, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v2, :cond_c8

    .line 3571
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3572
    iget-object v2, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {v2, p1, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_cb

    .line 3574
    :cond_c8
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3576
    :goto_cb
    iget v2, p0, Landroid/app/Notification;->audioStreamType:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3578
    iget-object v2, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    if-eqz v2, :cond_dd

    .line 3579
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3580
    iget-object v2, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v2, p1, v3}, Landroid/media/AudioAttributes;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_e0

    .line 3582
    :cond_dd
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3585
    :goto_e0
    iget-object v2, p0, Landroid/app/Notification;->vibrate:[J

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 3586
    iget v2, p0, Landroid/app/Notification;->ledARGB:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3587
    iget v2, p0, Landroid/app/Notification;->ledOnMS:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3588
    iget v2, p0, Landroid/app/Notification;->ledOffMS:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3589
    iget v2, p0, Landroid/app/Notification;->iconLevel:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3591
    iget-object v2, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_106

    .line 3592
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3593
    iget-object v2, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, p1, v3}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_109

    .line 3595
    :cond_106
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3598
    :goto_109
    iget v2, p0, Landroid/app/Notification;->priority:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3600
    iget-object v2, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 3602
    iget-object v2, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 3604
    iget-object v2, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 3606
    iget-object v2, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 3608
    iget-object v2, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 3610
    iget-object v2, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_134

    .line 3611
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3612
    iget-object v2, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v2, p1, v3}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_137

    .line 3614
    :cond_134
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3617
    :goto_137
    iget-object v2, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_144

    .line 3618
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3619
    iget-object v2, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v2, p1, v3}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_147

    .line 3621
    :cond_144
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3624
    :goto_147
    iget v2, p0, Landroid/app/Notification;->visibility:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3626
    iget-object v2, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v2, :cond_159

    .line 3627
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3628
    iget-object v2, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-virtual {v2, p1, v3}, Landroid/app/Notification;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_15c

    .line 3630
    :cond_159
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3633
    :goto_15c
    iget v2, p0, Landroid/app/Notification;->color:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3635
    iget-object v2, p0, Landroid/app/Notification;->mChannelId:Ljava/lang/String;

    if-eqz v2, :cond_16e

    .line 3636
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3637
    iget-object v2, p0, Landroid/app/Notification;->mChannelId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    goto :goto_171

    .line 3639
    :cond_16e
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3641
    :goto_171
    iget-wide v4, p0, Landroid/app/Notification;->mTimeout:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 3643
    iget-object v2, p0, Landroid/app/Notification;->mShortcutId:Ljava/lang/String;

    if-eqz v2, :cond_183

    .line 3644
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3645
    iget-object v2, p0, Landroid/app/Notification;->mShortcutId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    goto :goto_186

    .line 3647
    :cond_183
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3650
    :goto_186
    iget-object v2, p0, Landroid/app/Notification;->mLocusId:Landroid/content/LocusId;

    if-eqz v2, :cond_193

    .line 3651
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3652
    iget-object v2, p0, Landroid/app/Notification;->mLocusId:Landroid/content/LocusId;

    invoke-virtual {v2, p1, v3}, Landroid/content/LocusId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_196

    .line 3654
    :cond_193
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3657
    :goto_196
    iget v2, p0, Landroid/app/Notification;->mBadgeIcon:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3659
    iget-object v2, p0, Landroid/app/Notification;->mSettingsText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1a8

    .line 3660
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3661
    iget-object v2, p0, Landroid/app/Notification;->mSettingsText:Ljava/lang/CharSequence;

    invoke-static {v2, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_1ab

    .line 3663
    :cond_1a8
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3666
    :goto_1ab
    iget v2, p0, Landroid/app/Notification;->mGroupAlertBehavior:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3668
    iget-object v2, p0, Landroid/app/Notification;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    if-eqz v2, :cond_1bd

    .line 3669
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3670
    iget-object v0, p0, Landroid/app/Notification;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    invoke-virtual {v0, p1, v3}, Landroid/app/Notification$BubbleMetadata;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1c0

    .line 3672
    :cond_1bd
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3675
    :goto_1c0
    iget-boolean v0, p0, Landroid/app/Notification;->mAllowSystemGeneratedContextualActions:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3677
    iget v0, p0, Landroid/app/Notification;->mFgsDeferBehavior:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3680
    return-void
.end method


# virtual methods
.method public whitelist clone()Landroid/app/Notification;
    .registers 3

    .line 2952
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 2953
    .local v0, "that":Landroid/app/Notification;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    .line 2954
    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 149
    invoke-virtual {p0}, Landroid/app/Notification;->clone()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o cloneInto(Landroid/app/Notification;Z)V
    .registers 7
    .param p1, "that"    # Landroid/app/Notification;
    .param p2, "heavy"    # Z

    .line 2963
    iget-object v0, p0, Landroid/app/Notification;->mAllowlistToken:Landroid/os/IBinder;

    iput-object v0, p1, Landroid/app/Notification;->mAllowlistToken:Landroid/os/IBinder;

    .line 2964
    iget-wide v0, p0, Landroid/app/Notification;->when:J

    iput-wide v0, p1, Landroid/app/Notification;->when:J

    .line 2965
    iget-wide v0, p0, Landroid/app/Notification;->creationTime:J

    iput-wide v0, p1, Landroid/app/Notification;->creationTime:J

    .line 2966
    iget-object v0, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    iput-object v0, p1, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    .line 2967
    iget v0, p0, Landroid/app/Notification;->number:I

    iput v0, p1, Landroid/app/Notification;->number:I

    .line 2970
    iget-object v0, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iput-object v0, p1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 2971
    iget-object v0, p0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    iput-object v0, p1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 2972
    iget-object v0, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    iput-object v0, p1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 2974
    iget-object v0, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2c

    .line 2975
    iget-object v0, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2977
    :cond_2c
    if-eqz p2, :cond_3a

    iget-object v0, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_3a

    .line 2978
    iget-object v0, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p1, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    .line 2980
    :cond_3a
    if-eqz p2, :cond_48

    iget-object v0, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_48

    .line 2981
    iget-object v0, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 2983
    :cond_48
    if-eqz p2, :cond_52

    iget-object v0, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_52

    .line 2984
    iget-object v0, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    iput-object v0, p1, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    .line 2986
    :cond_52
    iget v0, p0, Landroid/app/Notification;->iconLevel:I

    iput v0, p1, Landroid/app/Notification;->iconLevel:I

    .line 2987
    iget-object v0, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iput-object v0, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 2988
    iget v0, p0, Landroid/app/Notification;->audioStreamType:I

    iput v0, p1, Landroid/app/Notification;->audioStreamType:I

    .line 2989
    iget-object v0, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    if-eqz v0, :cond_6f

    .line 2990
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    iget-object v1, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    invoke-direct {v0, v1}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p1, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 2993
    :cond_6f
    iget-object v0, p0, Landroid/app/Notification;->vibrate:[J

    .line 2994
    .local v0, "vibrate":[J
    if-eqz v0, :cond_7c

    .line 2995
    array-length v1, v0

    .line 2996
    .local v1, "N":I
    new-array v2, v1, [J

    iput-object v2, p1, Landroid/app/Notification;->vibrate:[J

    .line 2997
    .local v2, "vib":[J
    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3000
    .end local v1    # "N":I
    .end local v2    # "vib":[J
    :cond_7c
    iget v1, p0, Landroid/app/Notification;->ledARGB:I

    iput v1, p1, Landroid/app/Notification;->ledARGB:I

    .line 3001
    iget v1, p0, Landroid/app/Notification;->ledOnMS:I

    iput v1, p1, Landroid/app/Notification;->ledOnMS:I

    .line 3002
    iget v1, p0, Landroid/app/Notification;->ledOffMS:I

    iput v1, p1, Landroid/app/Notification;->ledOffMS:I

    .line 3003
    iget v1, p0, Landroid/app/Notification;->defaults:I

    iput v1, p1, Landroid/app/Notification;->defaults:I

    .line 3005
    iget v1, p0, Landroid/app/Notification;->flags:I

    iput v1, p1, Landroid/app/Notification;->flags:I

    .line 3007
    iget v1, p0, Landroid/app/Notification;->priority:I

    iput v1, p1, Landroid/app/Notification;->priority:I

    .line 3009
    iget-object v1, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    iput-object v1, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 3011
    iget-object v1, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    iput-object v1, p1, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    .line 3013
    iget-object v1, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    iput-object v1, p1, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    .line 3015
    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_cf

    .line 3017
    :try_start_a4
    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 3019
    iget-object v1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->size()I
    :try_end_b2
    .catch Landroid/os/BadParcelableException; {:try_start_a4 .. :try_end_b2} :catch_b3

    .line 3023
    goto :goto_cf

    .line 3020
    :catch_b3
    move-exception v1

    .line 3021
    .local v1, "e":Landroid/os/BadParcelableException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not unparcel extras from notification: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Notification"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3022
    const/4 v2, 0x0

    iput-object v2, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 3026
    .end local v1    # "e":Landroid/os/BadParcelableException;
    :cond_cf
    :goto_cf
    iget-object v1, p0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_e0

    .line 3027
    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    iput-object v1, p1, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    .line 3030
    :cond_e0
    iget-object v1, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v1, :cond_106

    .line 3031
    iget-object v1, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v1, v1

    new-array v1, v1, [Landroid/app/Notification$Action;

    iput-object v1, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 3032
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_ec
    iget-object v2, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v2, v2

    if-ge v1, v2, :cond_106

    .line 3033
    iget-object v2, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    aget-object v2, v2, v1

    if-eqz v2, :cond_103

    .line 3034
    iget-object v2, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    iget-object v3, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/app/Notification$Action;->clone()Landroid/app/Notification$Action;

    move-result-object v3

    aput-object v3, v2, v1

    .line 3032
    :cond_103
    add-int/lit8 v1, v1, 0x1

    goto :goto_ec

    .line 3039
    .end local v1    # "i":I
    :cond_106
    if-eqz p2, :cond_114

    iget-object v1, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_114

    .line 3040
    iget-object v1, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v1}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, p1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 3043
    :cond_114
    if-eqz p2, :cond_122

    iget-object v1, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_122

    .line 3044
    iget-object v1, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v1}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, p1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 3047
    :cond_122
    iget v1, p0, Landroid/app/Notification;->visibility:I

    iput v1, p1, Landroid/app/Notification;->visibility:I

    .line 3049
    iget-object v1, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v1, :cond_138

    .line 3050
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    iput-object v1, p1, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    .line 3051
    iget-object v1, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    iget-object v2, p1, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-virtual {v1, v2, p2}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    .line 3054
    :cond_138
    iget v1, p0, Landroid/app/Notification;->color:I

    iput v1, p1, Landroid/app/Notification;->color:I

    .line 3056
    iget-object v1, p0, Landroid/app/Notification;->mChannelId:Ljava/lang/String;

    iput-object v1, p1, Landroid/app/Notification;->mChannelId:Ljava/lang/String;

    .line 3057
    iget-wide v1, p0, Landroid/app/Notification;->mTimeout:J

    iput-wide v1, p1, Landroid/app/Notification;->mTimeout:J

    .line 3058
    iget-object v1, p0, Landroid/app/Notification;->mShortcutId:Ljava/lang/String;

    iput-object v1, p1, Landroid/app/Notification;->mShortcutId:Ljava/lang/String;

    .line 3059
    iget-object v1, p0, Landroid/app/Notification;->mLocusId:Landroid/content/LocusId;

    iput-object v1, p1, Landroid/app/Notification;->mLocusId:Landroid/content/LocusId;

    .line 3060
    iget v1, p0, Landroid/app/Notification;->mBadgeIcon:I

    iput v1, p1, Landroid/app/Notification;->mBadgeIcon:I

    .line 3061
    iget-object v1, p0, Landroid/app/Notification;->mSettingsText:Ljava/lang/CharSequence;

    iput-object v1, p1, Landroid/app/Notification;->mSettingsText:Ljava/lang/CharSequence;

    .line 3062
    iget v1, p0, Landroid/app/Notification;->mGroupAlertBehavior:I

    iput v1, p1, Landroid/app/Notification;->mGroupAlertBehavior:I

    .line 3063
    iget v1, p0, Landroid/app/Notification;->mFgsDeferBehavior:I

    iput v1, p1, Landroid/app/Notification;->mFgsDeferBehavior:I

    .line 3064
    iget-object v1, p0, Landroid/app/Notification;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    iput-object v1, p1, Landroid/app/Notification;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    .line 3065
    iget-boolean v1, p0, Landroid/app/Notification;->mAllowSystemGeneratedContextualActions:Z

    iput-boolean v1, p1, Landroid/app/Notification;->mAllowSystemGeneratedContextualActions:Z

    .line 3067
    if-nez p2, :cond_169

    .line 3068
    invoke-virtual {p1}, Landroid/app/Notification;->lightenPayload()V

    .line 3070
    :cond_169
    return-void
.end method

.method public blacklist containsCustomViews()Z
    .registers 2

    .line 3243
    iget-object v0, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_25

    iget-object v0, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_25

    iget-object v0, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_25

    iget-object v0, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_25

    iget-object v0, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_25

    iget-object v0, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_23

    goto :goto_25

    :cond_23
    const/4 v0, 0x0

    goto :goto_26

    :cond_25
    :goto_25
    const/4 v0, 0x1

    :goto_26
    return v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 3448
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 10
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 3940
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 3941
    .local v0, "token":J
    const-wide v2, 0x10900000001L

    invoke-virtual {p0}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3942
    iget-object v2, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    const/4 v3, 0x1

    if-eqz v2, :cond_17

    move v2, v3

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    const-wide v4, 0x10800000002L

    invoke-virtual {p1, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3943
    const-wide v4, 0x10500000003L

    iget v2, p0, Landroid/app/Notification;->flags:I

    invoke-virtual {p1, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3944
    const-wide v4, 0x10500000004L

    iget v2, p0, Landroid/app/Notification;->color:I

    invoke-virtual {p1, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3945
    const-wide v4, 0x10900000005L

    iget-object v2, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-virtual {p1, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3946
    const-wide v4, 0x10900000006L

    iget-object v2, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    invoke-virtual {p1, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3947
    const-wide v4, 0x10900000007L

    iget-object v2, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    invoke-virtual {p1, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3948
    iget-object v2, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v2, :cond_61

    .line 3949
    iget-object v2, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v2, v2

    const-wide v4, 0x10500000008L

    invoke-virtual {p1, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3951
    :cond_61
    iget v2, p0, Landroid/app/Notification;->visibility:I

    const/4 v4, -0x1

    if-lt v2, v4, :cond_74

    iget v2, p0, Landroid/app/Notification;->visibility:I

    if-gt v2, v3, :cond_74

    .line 3952
    const-wide v2, 0x10e00000009L

    iget v4, p0, Landroid/app/Notification;->visibility:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3954
    :cond_74
    iget-object v2, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v2, :cond_82

    .line 3955
    iget-object v2, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    const-wide v3, 0x10b0000000aL

    invoke-virtual {v2, p1, v3, v4}, Landroid/app/Notification;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3957
    :cond_82
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3958
    return-void
.end method

.method public whitelist findRemoteInputActionPair(Z)Landroid/util/Pair;
    .registers 14
    .param p1, "requiresFreeform"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/util/Pair<",
            "Landroid/app/RemoteInput;",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation

    .line 4431
    invoke-virtual {p0}, Landroid/app/Notification;->isPromotedOngoing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 4432
    return-object v1

    .line 4434
    :cond_8
    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-nez v0, :cond_d

    .line 4435
    return-object v1

    .line 4437
    :cond_d
    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_12
    if-ge v4, v2, :cond_3e

    aget-object v5, v0, v4

    .line 4438
    .local v5, "action":Landroid/app/Notification$Action;
    invoke-virtual {v5}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v6

    if-nez v6, :cond_1d

    .line 4439
    goto :goto_3b

    .line 4441
    :cond_1d
    const/4 v6, 0x0

    .line 4442
    .local v6, "resultRemoteInput":Landroid/app/RemoteInput;
    invoke-virtual {v5}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v7

    array-length v8, v7

    move v9, v3

    :goto_24
    if-ge v9, v8, :cond_34

    aget-object v10, v7, v9

    .line 4443
    .local v10, "remoteInput":Landroid/app/RemoteInput;
    invoke-virtual {v10}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v11

    if-nez v11, :cond_30

    if-nez p1, :cond_31

    .line 4444
    :cond_30
    move-object v6, v10

    .line 4442
    .end local v10    # "remoteInput":Landroid/app/RemoteInput;
    :cond_31
    add-int/lit8 v9, v9, 0x1

    goto :goto_24

    .line 4447
    :cond_34
    if-eqz v6, :cond_3b

    .line 4448
    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 4437
    .end local v5    # "action":Landroid/app/Notification$Action;
    .end local v6    # "resultRemoteInput":Landroid/app/RemoteInput;
    :cond_3b
    :goto_3b
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 4451
    :cond_3e
    return-object v1
.end method

.method public blacklist fixSilentGroup()V
    .registers 3

    .line 4474
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/Flags;->notificationSilentFlag()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 4475
    const-string/jumbo v0, "silent"

    iget-object v1, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 4476
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    .line 4477
    iget v0, p0, Landroid/app/Notification;->flags:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/app/Notification;->flags:I

    .line 4480
    :cond_1b
    return-void
.end method

.method public whitelist getAllowSystemGeneratedContextualActions()Z
    .registers 2

    .line 4352
    iget-boolean v0, p0, Landroid/app/Notification;->mAllowSystemGeneratedContextualActions:Z

    return v0
.end method

.method public blacklist getAllowlistToken()Landroid/os/IBinder;
    .registers 2

    .line 3919
    iget-object v0, p0, Landroid/app/Notification;->mAllowlistToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist getBadgeIconType()I
    .registers 2

    .line 4279
    iget v0, p0, Landroid/app/Notification;->mBadgeIcon:I

    return v0
.end method

.method public whitelist getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;
    .registers 2

    .line 4336
    iget-object v0, p0, Landroid/app/Notification;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    return-object v0
.end method

.method public greylist getChannel()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4242
    iget-object v0, p0, Landroid/app/Notification;->mChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getChannelId()Ljava/lang/String;
    .registers 2

    .line 4249
    iget-object v0, p0, Landroid/app/Notification;->mChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getContextualActions()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation

    .line 4459
    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Landroid/app/Notification;->isPromotedOngoing()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_25

    .line 4460
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4461
    .local v0, "contextualActions":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$Action;>;"
    iget-object v1, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_24

    aget-object v4, v1, v3

    .line 4462
    .local v4, "action":Landroid/app/Notification$Action;
    invoke-virtual {v4}, Landroid/app/Notification$Action;->isContextual()Z

    move-result v5

    if-eqz v5, :cond_21

    .line 4463
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4461
    .end local v4    # "action":Landroid/app/Notification$Action;
    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 4466
    :cond_24
    return-object v0

    .line 4459
    .end local v0    # "contextualActions":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$Action;>;"
    :cond_25
    :goto_25
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getGroup()Ljava/lang/String;
    .registers 2

    .line 1187
    iget-object v0, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getGroupAlertBehavior()I
    .registers 2

    .line 4316
    iget v0, p0, Landroid/app/Notification;->mGroupAlertBehavior:I

    return v0
.end method

.method public whitelist getLargeIcon()Landroid/graphics/drawable/Icon;
    .registers 2

    .line 4382
    iget-object v0, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public whitelist getLocusId()Landroid/content/LocusId;
    .registers 2

    .line 4300
    iget-object v0, p0, Landroid/app/Notification;->mLocusId:Landroid/content/LocusId;

    return-object v0
.end method

.method public greylist-max-o getNotificationStyle()Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Notification$Style;",
            ">;"
        }
    .end annotation

    .line 8058
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.template"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8060
    .local v0, "templateClass":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 8061
    invoke-static {v0}, Landroid/app/Notification;->getNotificationStyleClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    return-object v1

    .line 8063
    :cond_13
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getSettingsText()Ljava/lang/CharSequence;
    .registers 2

    .line 4307
    iget-object v0, p0, Landroid/app/Notification;->mSettingsText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getShortCriticalText()Ljava/lang/String;
    .registers 3

    .line 4213
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.shortCriticalText"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getShortcutId()Ljava/lang/String;
    .registers 2

    .line 4289
    iget-object v0, p0, Landroid/app/Notification;->mShortcutId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSmallIcon()Landroid/graphics/drawable/Icon;
    .registers 2

    .line 4364
    iget-object v0, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public whitelist getSortKey()Ljava/lang/String;
    .registers 2

    .line 1205
    iget-object v0, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getTimeout()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4255
    iget-wide v0, p0, Landroid/app/Notification;->mTimeout:J

    return-wide v0
.end method

.method public whitelist getTimeoutAfter()J
    .registers 3

    .line 4263
    iget-wide v0, p0, Landroid/app/Notification;->mTimeout:J

    return-wide v0
.end method

.method public blacklist getWhen()J
    .registers 5

    .line 8171
    invoke-static {}, Landroid/app/Flags;->sortSectionByTime()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 8172
    iget-wide v0, p0, Landroid/app/Notification;->when:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    .line 8173
    iget-wide v0, p0, Landroid/app/Notification;->creationTime:J

    return-wide v0

    .line 8176
    :cond_11
    iget-wide v0, p0, Landroid/app/Notification;->when:J

    return-wide v0
.end method

.method public blacklist hasAppProvidedWhen()Z
    .registers 5

    .line 4389
    iget-wide v0, p0, Landroid/app/Notification;->when:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_12

    iget-wide v0, p0, Landroid/app/Notification;->when:J

    iget-wide v2, p0, Landroid/app/Notification;->creationTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public greylist-max-o hasColorizedPermission()Z
    .registers 2

    .line 8102
    iget v0, p0, Landroid/app/Notification;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public greylist-max-o hasCompletedProgress()Z
    .registers 5

    .line 4228
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.progress"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 4229
    const-string v3, "android.progressMax"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_2f

    .line 4233
    :cond_16
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1f

    .line 4234
    return v2

    .line 4236
    :cond_1f
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2e

    const/4 v2, 0x1

    :cond_2e
    return v2

    .line 4230
    :cond_2f
    :goto_2f
    return v2
.end method

.method public whitelist hasImage()Z
    .registers 7

    .line 8205
    const-class v0, Landroid/app/Notification$MessagingStyle;

    invoke-virtual {p0, v0}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_50

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_50

    .line 8206
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.messages"

    const-class v3, Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    .line 8208
    .local v0, "messages":[Landroid/os/Parcelable;
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 8209
    nop

    .line 8210
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v2

    .line 8209
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Notification$MessagingStyle$Message;

    .line 8211
    .local v3, "m":Landroid/app/Notification$MessagingStyle$Message;
    invoke-virtual {v3}, Landroid/app/Notification$MessagingStyle$Message;->getDataUri()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_4e

    .line 8212
    invoke-virtual {v3}, Landroid/app/Notification$MessagingStyle$Message;->getDataMimeType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4e

    .line 8213
    invoke-virtual {v3}, Landroid/app/Notification$MessagingStyle$Message;->getDataMimeType()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "image/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 8214
    return v1

    .line 8216
    .end local v3    # "m":Landroid/app/Notification$MessagingStyle$Message;
    :cond_4e
    goto :goto_28

    .line 8218
    .end local v0    # "messages":[Landroid/os/Parcelable;
    :cond_4f
    goto :goto_62

    :cond_50
    invoke-direct {p0}, Landroid/app/Notification;->hasLargeIcon()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 8219
    return v1

    .line 8220
    :cond_57
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.backgroundImageUri"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 8221
    return v1

    .line 8223
    :cond_62
    :goto_62
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist hasPromotableCharacteristics()Z
    .registers 4

    .line 3298
    invoke-virtual {p0}, Landroid/app/Notification;->isOngoingEvent()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    invoke-virtual {p0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    if-nez v0, :cond_30

    invoke-virtual {p0}, Landroid/app/Notification;->containsCustomViews()Z

    move-result v0

    if-nez v0, :cond_30

    invoke-virtual {p0}, Landroid/app/Notification;->hasTitle()Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_30

    .line 3302
    :cond_1a
    invoke-direct {p0}, Landroid/app/Notification;->isOngoingCallStyle()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_22

    .line 3303
    return v2

    .line 3305
    :cond_22
    invoke-direct {p0}, Landroid/app/Notification;->isColorizedRequested()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Landroid/app/Notification;->hasPromotableStyle()Z

    move-result v0

    if-eqz v0, :cond_2f

    move v1, v2

    :cond_2f
    return v1

    .line 3299
    :cond_30
    :goto_30
    return v1
.end method

.method public blacklist hasPromotableStyle()Z
    .registers 3

    .line 3281
    invoke-virtual {p0}, Landroid/app/Notification;->getNotificationStyle()Ljava/lang/Class;

    move-result-object v0

    .line 3283
    .local v0, "notificationStyle":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    if-eqz v0, :cond_21

    const-class v1, Landroid/app/Notification$BigTextStyle;

    .line 3284
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    const-class v1, Landroid/app/Notification$CallStyle;

    .line 3285
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    const-class v1, Landroid/app/Notification$ProgressStyle;

    .line 3286
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v1, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v1, 0x1

    .line 3283
    :goto_22
    return v1
.end method

.method public blacklist hasTitle()Z
    .registers 6

    .line 3256
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 3257
    return v1

    .line 3260
    :cond_6
    const-class v0, Landroid/app/Notification$CallStyle;

    invoke-virtual {p0, v0}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_29

    .line 3261
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.callPerson"

    const-class v4, Landroid/app/Person;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Person;

    .line 3262
    .local v0, "person":Landroid/app/Person;
    if-eqz v0, :cond_28

    invoke-virtual {v0}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_28

    move v1, v2

    :cond_28
    return v1

    .line 3265
    .end local v0    # "person":Landroid/app/Person;
    :cond_29
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.title"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 3266
    return v2

    .line 3269
    :cond_38
    const-class v0, Landroid/app/Notification$BigTextStyle;

    invoke-virtual {p0, v0}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 3270
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.title.big"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v2

    return v0

    .line 3272
    :cond_4e
    return v1
.end method

.method public blacklist isBubbleNotification()Z
    .registers 2

    .line 8156
    iget v0, p0, Landroid/app/Notification;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public greylist-max-o isColorized()Z
    .registers 2

    .line 8083
    invoke-direct {p0}, Landroid/app/Notification;->isColorizedRequested()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 8084
    invoke-virtual {p0}, Landroid/app/Notification;->hasColorizedPermission()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Landroid/app/Notification;->isFgsOrUij()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Landroid/app/Notification;->isPromotedOngoing()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 8083
    :goto_1b
    return v0
.end method

.method public blacklist isCustomNotification()Ljava/lang/Boolean;
    .registers 2

    .line 8142
    iget-object v0, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_12

    iget-object v0, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_12

    iget-object v0, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_12

    .line 8145
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 8147
    :cond_12
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isFgsOrUij()Z
    .registers 2

    .line 7992
    invoke-virtual {p0}, Landroid/app/Notification;->isForegroundService()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Landroid/app/Notification;->isUserInitiatedJob()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public blacklist isForegroundDisplayForceDeferred()Z
    .registers 3

    .line 8050
    const/4 v0, 0x2

    iget v1, p0, Landroid/app/Notification;->mFgsDeferBehavior:I

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public greylist-max-o isForegroundService()Z
    .registers 2

    .line 7974
    iget v0, p0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public greylist isGroupChild()Z
    .registers 2

    .line 4405
    iget-object v0, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget v0, p0, Landroid/app/Notification;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public greylist isGroupSummary()Z
    .registers 2

    .line 4397
    iget-object v0, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget v0, p0, Landroid/app/Notification;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public greylist-max-o isMediaNotification()Z
    .registers 8

    .line 8124
    invoke-virtual {p0}, Landroid/app/Notification;->getNotificationStyle()Ljava/lang/Class;

    move-result-object v0

    .line 8125
    .local v0, "style":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    const-class v1, Landroid/app/Notification$MediaStyle;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_19

    const-class v1, Landroid/app/Notification$DecoratedMediaCustomViewStyle;

    .line 8126
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_19

    :cond_17
    move v1, v2

    goto :goto_1a

    :cond_19
    :goto_19
    move v1, v3

    .line 8128
    .local v1, "isMediaStyle":Z
    :goto_1a
    iget-object v4, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v5, "android.mediaSession"

    const-class v6, Landroid/media/session/MediaSession$Token;

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_28

    move v4, v3

    goto :goto_29

    :cond_28
    move v4, v2

    .line 8131
    .local v4, "hasMediaSession":Z
    :goto_29
    if-eqz v1, :cond_2e

    if-eqz v4, :cond_2e

    move v2, v3

    :cond_2e
    return v2
.end method

.method public blacklist isOngoingEvent()Z
    .registers 2

    .line 4220
    iget v0, p0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isPromotedOngoing()Z
    .registers 3

    .line 8115
    invoke-static {}, Landroid/app/Flags;->uiRichOngoing()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Landroid/app/Notification;->flags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public blacklist isSilent()Z
    .registers 5

    .line 4487
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/Flags;->notificationSilentFlag()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_12

    .line 4488
    iget v0, p0, Landroid/app/Notification;->flags:I

    const/high16 v3, 0x20000

    and-int/2addr v0, v3

    if-eqz v0, :cond_10

    goto :goto_11

    :cond_10
    move v1, v2

    :goto_11
    return v1

    .line 4490
    :cond_12
    const-string/jumbo v0, "silent"

    invoke-virtual {p0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_27

    :cond_26
    move v1, v2

    :goto_27
    return v1
.end method

.method public blacklist isStyle(Ljava/lang/Class;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Notification$Style;",
            ">;)Z"
        }
    .end annotation

    .line 8071
    .local p1, "styleClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.template"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8072
    .local v0, "templateClass":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public blacklist isUserInitiatedJob()Z
    .registers 3

    .line 7983
    iget v0, p0, Landroid/app/Notification;->flags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public final greylist-max-o lightenPayload()V
    .registers 8

    .line 3342
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    .line 3343
    iput-object v0, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 3344
    iput-object v0, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 3345
    iput-object v0, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 3346
    iput-object v0, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    .line 3347
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_57

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_57

    .line 3348
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 3349
    .local v0, "keyset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    .line 3350
    .local v1, "N":I
    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 3351
    .local v2, "keys":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2a
    if-ge v3, v1, :cond_57

    .line 3352
    aget-object v4, v2, v3

    .line 3353
    .local v4, "key":Ljava/lang/String;
    const-string v5, "android.tv.EXTENSIONS"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 3354
    goto :goto_54

    .line 3356
    :cond_37
    iget-object v5, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 3357
    .local v5, "obj":Ljava/lang/Object;
    if-eqz v5, :cond_54

    instance-of v6, v5, Landroid/os/Parcelable;

    if-nez v6, :cond_4f

    instance-of v6, v5, [Landroid/os/Parcelable;

    if-nez v6, :cond_4f

    instance-of v6, v5, Landroid/util/SparseArray;

    if-nez v6, :cond_4f

    instance-of v6, v5, Ljava/util/ArrayList;

    if-eqz v6, :cond_54

    .line 3362
    :cond_4f
    iget-object v6, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v6, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 3351
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "obj":Ljava/lang/Object;
    :cond_54
    :goto_54
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 3366
    .end local v0    # "keyset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "N":I
    .end local v2    # "keys":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_57
    return-void
.end method

.method public blacklist loadHeaderAppName(Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 3207
    const-string v0, "android.substName"

    const-string v1, "Notification#loadHeaderAppName"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 3210
    const/4 v1, 0x0

    .line 3212
    .local v1, "name":Ljava/lang/CharSequence;
    :try_start_8
    iget-object v2, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 3213
    iget-object v2, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 3214
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 3215
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_59

    .line 3235
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 3215
    return-object v0

    .line 3219
    :cond_25
    const/4 v0, 0x0

    if-nez p1, :cond_2d

    .line 3220
    nop

    .line 3235
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 3220
    return-object v0

    .line 3222
    :cond_2d
    :try_start_2d
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 3223
    invoke-direct {p0, p1}, Landroid/app/Notification;->getApplicationInfo(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 3224
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_46

    .line 3225
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 3226
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-direct {p0, p1}, Landroid/app/Notification;->getApplicationInfo(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object v1, v4

    .line 3230
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_46
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_4a
    .catchall {:try_start_2d .. :try_end_4a} :catchall_59

    if-eqz v2, :cond_51

    .line 3231
    nop

    .line 3235
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 3231
    return-object v0

    .line 3233
    :cond_51
    :try_start_51
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_55
    .catchall {:try_start_51 .. :try_end_55} :catchall_59

    .line 3235
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 3233
    return-object v0

    .line 3235
    .end local v1    # "name":Ljava/lang/CharSequence;
    :catchall_59
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 3236
    throw v0
.end method

.method public blacklist overrideAllowlistToken(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 3911
    iput-object p1, p0, Landroid/app/Notification;->mAllowlistToken:Landroid/os/IBinder;

    .line 3912
    iget-object v0, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v0, :cond_b

    .line 3913
    iget-object v0, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-virtual {v0, p1}, Landroid/app/Notification;->overrideAllowlistToken(Landroid/os/IBinder;)V

    .line 3915
    :cond_b
    return-void
.end method

.method greylist-max-o reduceImageSizes(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .line 7921
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.reduced.images"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 7922
    return-void

    .line 7924
    :cond_b
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    .line 7926
    .local v0, "isLowRam":Z
    iget-object v2, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    const/4 v3, 0x1

    if-eqz v2, :cond_3c

    iget-object v2, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    .line 7928
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v2

    if-eq v2, v3, :cond_25

    iget-object v2, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    .line 7929
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_3c

    .line 7930
    :cond_25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 7931
    .local v2, "resources":Landroid/content/res/Resources;
    nop

    .line 7932
    if-eqz v0, :cond_30

    const v4, 0x10502e9

    goto :goto_33

    .line 7933
    :cond_30
    const v4, 0x10502e8

    .line 7931
    :goto_33
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 7934
    .local v4, "maxSize":I
    iget-object v5, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v5, v4, v4}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(II)V

    .line 7937
    .end local v2    # "resources":Landroid/content/res/Resources;
    .end local v4    # "maxSize":I
    :cond_3c
    iget-object v2, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    if-nez v2, :cond_44

    iget-object v2, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6a

    .line 7938
    :cond_44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 7939
    .restart local v2    # "resources":Landroid/content/res/Resources;
    if-eqz v0, :cond_4e

    .line 7940
    const v4, 0x10502e6

    goto :goto_51

    .line 7941
    :cond_4e
    const v4, 0x10502e5

    .line 7939
    :goto_51
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 7942
    .restart local v4    # "maxSize":I
    iget-object v5, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    if-eqz v5, :cond_5e

    .line 7943
    iget-object v5, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v5, v4, v4}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(II)V

    .line 7945
    :cond_5e
    iget-object v5, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_6a

    .line 7946
    iget-object v5, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    invoke-static {v5, v4, v4}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 7949
    .end local v2    # "resources":Landroid/content/res/Resources;
    .end local v4    # "maxSize":I
    :cond_6a
    iget-object v2, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v2, p1, v0}, Landroid/app/Notification;->reduceImageSizesForRemoteView(Landroid/widget/RemoteViews;Landroid/content/Context;Z)V

    .line 7950
    iget-object v2, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v2, p1, v0}, Landroid/app/Notification;->reduceImageSizesForRemoteView(Landroid/widget/RemoteViews;Landroid/content/Context;Z)V

    .line 7951
    iget-object v2, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v2, p1, v0}, Landroid/app/Notification;->reduceImageSizesForRemoteView(Landroid/widget/RemoteViews;Landroid/content/Context;Z)V

    .line 7952
    iget-object v2, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7953
    return-void
.end method

.method public blacklist setBubbleMetadata(Landroid/app/Notification$BubbleMetadata;)V
    .registers 2
    .param p1, "data"    # Landroid/app/Notification$BubbleMetadata;

    .line 4344
    iput-object p1, p0, Landroid/app/Notification;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    .line 4345
    return-void
.end method

.method public blacklist setGroupAlertBehavior(I)V
    .registers 2
    .param p1, "groupAlertBehavior"    # I

    .line 4327
    iput p1, p0, Landroid/app/Notification;->mGroupAlertBehavior:I

    .line 4328
    return-void
.end method

.method public greylist setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentTitle"    # Ljava/lang/CharSequence;
    .param p3, "contentText"    # Ljava/lang/CharSequence;
    .param p4, "contentIntent"    # Landroid/app/PendingIntent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3877
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x16

    if-le v0, v1, :cond_17

    .line 3878
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "Notification"

    const-string/jumbo v2, "setLatestEventInfo() is deprecated and you should feel deprecated."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3882
    :cond_17
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_29

    .line 3883
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.showWhen"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3887
    :cond_29
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;)V

    .line 3890
    .local v0, "builder":Landroid/app/Notification$Builder;
    if-eqz p2, :cond_33

    .line 3891
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 3893
    :cond_33
    if-eqz p3, :cond_38

    .line 3894
    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 3896
    :cond_38
    invoke-virtual {v0, p4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 3898
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 3899
    return-void
.end method

.method public greylist setSmallIcon(Landroid/graphics/drawable/Icon;)V
    .registers 2
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 4373
    iput-object p1, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    .line 4374
    return-void
.end method

.method public blacklist setTimeoutAfter(J)V
    .registers 3
    .param p1, "timeout"    # J

    .line 4270
    iput-wide p1, p0, Landroid/app/Notification;->mTimeout:J

    .line 4271
    return-void
.end method

.method public blacklist shouldShowForegroundImmediately()Z
    .registers 5

    .line 8023
    iget v0, p0, Landroid/app/Notification;->mFgsDeferBehavior:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 8024
    return v1

    .line 8028
    :cond_6
    iget v0, p0, Landroid/app/Notification;->mFgsDeferBehavior:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_d

    .line 8029
    return v3

    .line 8034
    :cond_d
    invoke-virtual {p0}, Landroid/app/Notification;->isMediaNotification()Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 8035
    const-string v2, "call"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 8036
    const-string/jumbo v2, "navigation"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v0, :cond_32

    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v0, v0

    if-lez v0, :cond_32

    goto :goto_33

    .line 8042
    :cond_32
    return v3

    .line 8038
    :cond_33
    :goto_33
    return v1
.end method

.method public greylist-max-o showsChronometer()Z
    .registers 7

    .line 8195
    invoke-static {}, Landroid/app/Flags;->sortSectionByTime()Z

    move-result v0

    const-string v1, "android.showChronometer"

    if-eqz v0, :cond_f

    .line 8196
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 8198
    :cond_f
    iget-wide v2, p0, Landroid/app/Notification;->when:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    return v0
.end method

.method public greylist-max-o showsTime()Z
    .registers 7

    .line 8184
    invoke-static {}, Landroid/app/Flags;->sortSectionByTime()Z

    move-result v0

    const-string v1, "android.showWhen"

    if-eqz v0, :cond_f

    .line 8185
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 8187
    :cond_f
    iget-wide v2, p0, Landroid/app/Notification;->when:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    return v0
.end method

.method public greylist-max-o suppressAlertingDueToGrouping()Z
    .registers 4

    .line 4412
    invoke-virtual {p0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    .line 4413
    invoke-virtual {p0}, Landroid/app/Notification;->getGroupAlertBehavior()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_f

    .line 4414
    return v1

    .line 4415
    :cond_f
    invoke-virtual {p0}, Landroid/app/Notification;->isGroupChild()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 4416
    invoke-virtual {p0}, Landroid/app/Notification;->getGroupAlertBehavior()I

    move-result v0

    if-ne v0, v1, :cond_1c

    .line 4417
    return v1

    .line 4419
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 8

    .line 3962
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3963
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Notification(channel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3964
    invoke-virtual {p0}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3965
    const-string v1, " shortcut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3966
    invoke-virtual {p0}, Landroid/app/Notification;->getShortcutId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3967
    const-string v1, " contentView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3968
    iget-object v1, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string/jumbo v2, "null"

    if-eqz v1, :cond_45

    .line 3969
    iget-object v1, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v1}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3970
    const-string v1, "/0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3971
    iget-object v1, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_48

    .line 3973
    :cond_45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3975
    :goto_48
    const-string v1, " vibrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3976
    iget v1, p0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v1, v1, 0x2

    const-string v3, "default"

    if-eqz v1, :cond_59

    .line 3977
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8c

    .line 3978
    :cond_59
    iget-object v1, p0, Landroid/app/Notification;->vibrate:[J

    if-eqz v1, :cond_89

    .line 3979
    iget-object v1, p0, Landroid/app/Notification;->vibrate:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .line 3980
    .local v1, "N":I
    const-string v4, "["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3981
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_68
    if-ge v4, v1, :cond_79

    .line 3982
    iget-object v5, p0, Landroid/app/Notification;->vibrate:[J

    aget-wide v5, v5, v4

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3983
    const/16 v5, 0x2c

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3981
    add-int/lit8 v4, v4, 0x1

    goto :goto_68

    .line 3985
    .end local v4    # "i":I
    :cond_79
    const/4 v4, -0x1

    if-eq v1, v4, :cond_83

    .line 3986
    iget-object v4, p0, Landroid/app/Notification;->vibrate:[J

    aget-wide v4, v4, v1

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3988
    :cond_83
    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3989
    .end local v1    # "N":I
    goto :goto_8c

    .line 3990
    :cond_89
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3992
    :goto_8c
    const-string v1, " sound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3993
    iget v1, p0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_9b

    .line 3994
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ac

    .line 3995
    :cond_9b
    iget-object v1, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v1, :cond_a9

    .line 3996
    iget-object v1, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ac

    .line 3998
    :cond_a9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4000
    :goto_ac
    iget-object v1, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_b5

    .line 4001
    const-string v1, " tick"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4003
    :cond_b5
    const-string v1, " defaults="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4004
    iget v1, p0, Landroid/app/Notification;->defaults:I

    invoke-static {v1}, Landroid/app/Notification;->defaultsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4005
    const-string v1, " flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4006
    iget v1, p0, Landroid/app/Notification;->flags:I

    invoke-static {v1}, Landroid/app/Notification;->flagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4007
    iget v1, p0, Landroid/app/Notification;->color:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, " color=0x%08x"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4008
    iget-object v1, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    if-eqz v1, :cond_f2

    .line 4009
    const-string v1, " category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4010
    iget-object v1, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4012
    :cond_f2
    iget-object v1, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    if-eqz v1, :cond_100

    .line 4013
    const-string v1, " groupKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4014
    iget-object v1, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4016
    :cond_100
    iget-object v1, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    if-eqz v1, :cond_10e

    .line 4017
    const-string v1, " sortKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4018
    iget-object v1, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4020
    :cond_10e
    iget-object v1, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v1, :cond_11d

    .line 4021
    const-string v1, " actions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4022
    iget-object v1, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4024
    :cond_11d
    const-string v1, " vis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4025
    iget v1, p0, Landroid/app/Notification;->visibility:I

    invoke-static {v1}, Landroid/app/Notification;->visibilityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4026
    iget-object v1, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v1, :cond_13d

    .line 4027
    const-string v1, " publicVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4028
    iget-object v1, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-virtual {v1}, Landroid/app/Notification;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4030
    :cond_13d
    iget-object v1, p0, Landroid/app/Notification;->mLocusId:Landroid/content/LocusId;

    if-eqz v1, :cond_14b

    .line 4031
    const-string v1, " locusId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4032
    iget-object v1, p0, Landroid/app/Notification;->mLocusId:Landroid/content/LocusId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4034
    :cond_14b
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4035
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o visitUris(Ljava/util/function/Consumer;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 3090
    .local p1, "visitor":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/Uri;>;"
    iget-object v0, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v0, :cond_9

    .line 3091
    iget-object v0, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-virtual {v0, p1}, Landroid/app/Notification;->visitUris(Ljava/util/function/Consumer;)V

    .line 3094
    :cond_9
    iget-object v0, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3096
    iget-object v0, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->visitUris(Ljava/util/function/Consumer;)V

    .line 3097
    :cond_17
    iget-object v0, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->visitUris(Ljava/util/function/Consumer;)V

    .line 3098
    :cond_20
    iget-object v0, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_29

    iget-object v0, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->visitUris(Ljava/util/function/Consumer;)V

    .line 3099
    :cond_29
    iget-object v0, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_32

    iget-object v0, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->visitUris(Ljava/util/function/Consumer;)V

    .line 3101
    :cond_32
    iget-object v0, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    invoke-static {p1, v0}, Landroid/app/Notification;->visitIconUri(Ljava/util/function/Consumer;Landroid/graphics/drawable/Icon;)V

    .line 3102
    iget-object v0, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    invoke-static {p1, v0}, Landroid/app/Notification;->visitIconUri(Ljava/util/function/Consumer;Landroid/graphics/drawable/Icon;)V

    .line 3104
    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v0, :cond_4e

    .line 3105
    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_44
    if-ge v2, v1, :cond_4e

    aget-object v3, v0, v2

    .line 3106
    .local v3, "action":Landroid/app/Notification$Action;
    invoke-static {v3, p1}, Landroid/app/Notification$Action;->-$$Nest$mvisitUris(Landroid/app/Notification$Action;Ljava/util/function/Consumer;)V

    .line 3105
    .end local v3    # "action":Landroid/app/Notification$Action;
    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    .line 3110
    :cond_4e
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_1bb

    .line 3111
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.largeIcon.big"

    const-class v2, Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    invoke-static {p1, v0}, Landroid/app/Notification;->visitIconUri(Ljava/util/function/Consumer;Landroid/graphics/drawable/Icon;)V

    .line 3112
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.pictureIcon"

    const-class v2, Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    invoke-static {p1, v0}, Landroid/app/Notification;->visitIconUri(Ljava/util/function/Consumer;Landroid/graphics/drawable/Icon;)V

    .line 3118
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.audioContents"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 3119
    .local v0, "audioContentsUri":Ljava/lang/Object;
    instance-of v1, v0, Landroid/net/Uri;

    if-eqz v1, :cond_83

    .line 3120
    move-object v1, v0

    check-cast v1, Landroid/net/Uri;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_91

    .line 3121
    :cond_83
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_91

    .line 3122
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3125
    :cond_91
    :goto_91
    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.backgroundImageUri"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 3126
    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3129
    :cond_a8
    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.people.list"

    const-class v3, Landroid/app/Person;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3130
    .local v1, "people":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Person;>;"
    if-eqz v1, :cond_ce

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_ce

    .line 3131
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_be
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ce

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Person;

    .line 3132
    .local v3, "p":Landroid/app/Person;
    invoke-virtual {v3, p1}, Landroid/app/Person;->visitUris(Ljava/util/function/Consumer;)V

    .line 3133
    .end local v3    # "p":Landroid/app/Person;
    goto :goto_be

    .line 3136
    :cond_ce
    iget-object v2, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.remoteInputHistoryItems"

    const-class v4, Landroid/app/RemoteInputHistoryItem;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/app/RemoteInputHistoryItem;

    .line 3139
    .local v2, "history":[Landroid/app/RemoteInputHistoryItem;
    if-eqz v2, :cond_f2

    .line 3140
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_dd
    array-length v4, v2

    if-ge v3, v4, :cond_f2

    .line 3141
    aget-object v4, v2, v3

    .line 3142
    .local v4, "item":Landroid/app/RemoteInputHistoryItem;
    invoke-virtual {v4}, Landroid/app/RemoteInputHistoryItem;->getUri()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_ef

    .line 3143
    invoke-virtual {v4}, Landroid/app/RemoteInputHistoryItem;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3140
    .end local v4    # "item":Landroid/app/RemoteInputHistoryItem;
    :cond_ef
    add-int/lit8 v3, v3, 0x1

    goto :goto_dd

    .line 3150
    .end local v3    # "i":I
    :cond_f2
    iget-object v3, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.messagingUser"

    const-class v5, Landroid/app/Person;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Person;

    .line 3151
    .local v3, "person":Landroid/app/Person;
    if-eqz v3, :cond_103

    .line 3152
    invoke-virtual {v3, p1}, Landroid/app/Person;->visitUris(Ljava/util/function/Consumer;)V

    .line 3155
    :cond_103
    iget-object v4, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v5, "android.messages"

    const-class v6, Landroid/os/Parcelable;

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/os/Parcelable;

    .line 3157
    .local v4, "messages":[Landroid/os/Parcelable;
    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12e

    .line 3158
    nop

    .line 3159
    invoke-static {v4}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v5

    .line 3158
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_11e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Notification$MessagingStyle$Message;

    .line 3160
    .local v6, "message":Landroid/app/Notification$MessagingStyle$Message;
    invoke-virtual {v6, p1}, Landroid/app/Notification$MessagingStyle$Message;->visitUris(Ljava/util/function/Consumer;)V

    .line 3161
    .end local v6    # "message":Landroid/app/Notification$MessagingStyle$Message;
    goto :goto_11e

    .line 3164
    :cond_12e
    iget-object v5, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v6, "android.messages.historic"

    const-class v7, Landroid/os/Parcelable;

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/os/Parcelable;

    .line 3166
    .local v5, "historic":[Landroid/os/Parcelable;
    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_159

    .line 3167
    nop

    .line 3168
    invoke-static {v5}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v6

    .line 3167
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_149
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_159

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/Notification$MessagingStyle$Message;

    .line 3169
    .local v7, "message":Landroid/app/Notification$MessagingStyle$Message;
    invoke-virtual {v7, p1}, Landroid/app/Notification$MessagingStyle$Message;->visitUris(Ljava/util/function/Consumer;)V

    .line 3170
    .end local v7    # "message":Landroid/app/Notification$MessagingStyle$Message;
    goto :goto_149

    .line 3173
    :cond_159
    iget-object v6, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "android.conversationIcon"

    const-class v8, Landroid/graphics/drawable/Icon;

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/Icon;

    invoke-static {p1, v6}, Landroid/app/Notification;->visitIconUri(Ljava/util/function/Consumer;Landroid/graphics/drawable/Icon;)V

    .line 3176
    iget-object v6, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "android.callPerson"

    const-class v8, Landroid/app/Person;

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Person;

    .line 3177
    .local v6, "callPerson":Landroid/app/Person;
    if-eqz v6, :cond_179

    .line 3178
    invoke-virtual {v6, p1}, Landroid/app/Person;->visitUris(Ljava/util/function/Consumer;)V

    .line 3180
    :cond_179
    iget-object v7, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v8, "android.verificationIcon"

    const-class v9, Landroid/graphics/drawable/Icon;

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/Icon;

    invoke-static {p1, v7}, Landroid/app/Notification;->visitIconUri(Ljava/util/function/Consumer;Landroid/graphics/drawable/Icon;)V

    .line 3183
    invoke-static {}, Landroid/app/Flags;->apiRichOngoing()Z

    move-result v7

    if-eqz v7, :cond_1bb

    .line 3184
    iget-object v7, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v8, "android.progressTrackerIcon"

    const-class v9, Landroid/graphics/drawable/Icon;

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/Icon;

    invoke-static {p1, v7}, Landroid/app/Notification;->visitIconUri(Ljava/util/function/Consumer;Landroid/graphics/drawable/Icon;)V

    .line 3186
    iget-object v7, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v8, "android.progressStartIcon"

    const-class v9, Landroid/graphics/drawable/Icon;

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/Icon;

    invoke-static {p1, v7}, Landroid/app/Notification;->visitIconUri(Ljava/util/function/Consumer;Landroid/graphics/drawable/Icon;)V

    .line 3188
    iget-object v7, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v8, "android.progressEndIcon"

    const-class v9, Landroid/graphics/drawable/Icon;

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/Icon;

    invoke-static {p1, v7}, Landroid/app/Notification;->visitIconUri(Ljava/util/function/Consumer;Landroid/graphics/drawable/Icon;)V

    .line 3193
    .end local v0    # "audioContentsUri":Ljava/lang/Object;
    .end local v1    # "people":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Person;>;"
    .end local v2    # "history":[Landroid/app/RemoteInputHistoryItem;
    .end local v3    # "person":Landroid/app/Person;
    .end local v4    # "messages":[Landroid/os/Parcelable;
    .end local v5    # "historic":[Landroid/os/Parcelable;
    .end local v6    # "callPerson":Landroid/app/Person;
    :cond_1bb
    iget-object v0, p0, Landroid/app/Notification;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    if-eqz v0, :cond_1c8

    .line 3194
    iget-object v0, p0, Landroid/app/Notification;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/app/Notification;->visitIconUri(Ljava/util/function/Consumer;Landroid/graphics/drawable/Icon;)V

    .line 3197
    :cond_1c8
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_1de

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.wearable.EXTENSIONS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1de

    .line 3198
    new-instance v0, Landroid/app/Notification$WearableExtender;

    invoke-direct {v0, p0}, Landroid/app/Notification$WearableExtender;-><init>(Landroid/app/Notification;)V

    .line 3199
    .local v0, "extender":Landroid/app/Notification$WearableExtender;
    invoke-static {v0, p1}, Landroid/app/Notification$WearableExtender;->-$$Nest$mvisitUris(Landroid/app/Notification$WearableExtender;Ljava/util/function/Consumer;)V

    .line 3201
    .end local v0    # "extender":Landroid/app/Notification$WearableExtender;
    :cond_1de
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 3462
    const/4 v0, 0x0

    .line 3463
    .local v0, "addedListener":Landroid/app/PendingIntent$OnMarshaledListener;
    iget-object v1, p0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    if-nez v1, :cond_e

    .line 3464
    new-instance v1, Landroid/app/Notification$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/app/Notification$$ExternalSyntheticLambda0;-><init>(Landroid/app/Notification;Landroid/os/Parcel;)V

    move-object v0, v1

    .line 3474
    invoke-static {v0}, Landroid/app/PendingIntent;->addOnMarshaledListener(Landroid/app/PendingIntent$OnMarshaledListener;)V

    .line 3477
    :cond_e
    const/4 v1, 0x0

    .line 3478
    .local v1, "mustClearCookie":Z
    :try_start_f
    const-class v2, Landroid/app/Notification;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->hasClassCookie(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 3482
    const-class v2, Landroid/app/Notification;

    iget-object v3, p0, Landroid/app/Notification;->mAllowlistToken:Landroid/os/IBinder;

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->setClassCookie(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_47

    .line 3483
    const/4 v1, 0x1

    .line 3488
    :cond_1f
    :try_start_1f
    invoke-direct {p0, p1, p2}, Landroid/app/Notification;->writeToParcelImpl(Landroid/os/Parcel;I)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_3b

    .line 3490
    if-eqz v1, :cond_2b

    .line 3491
    :try_start_24
    const-class v2, Landroid/app/Notification;

    iget-object v3, p0, Landroid/app/Notification;->mAllowlistToken:Landroid/os/IBinder;

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->removeClassCookie(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 3495
    :cond_2b
    monitor-enter p0
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_47

    .line 3497
    :try_start_2c
    iget-object v2, p0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    .line 3498
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_38

    .line 3500
    .end local v1    # "mustClearCookie":Z
    if-eqz v0, :cond_37

    .line 3501
    invoke-static {v0}, Landroid/app/PendingIntent;->removeOnMarshaledListener(Landroid/app/PendingIntent$OnMarshaledListener;)V

    .line 3504
    :cond_37
    return-void

    .line 3498
    .restart local v1    # "mustClearCookie":Z
    :catchall_38
    move-exception v2

    :try_start_39
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    .end local v0    # "addedListener":Landroid/app/PendingIntent$OnMarshaledListener;
    .end local p0    # "this":Landroid/app/Notification;
    .end local p1    # "parcel":Landroid/os/Parcel;
    .end local p2    # "flags":I
    :try_start_3a
    throw v2

    .line 3490
    .restart local v0    # "addedListener":Landroid/app/PendingIntent$OnMarshaledListener;
    .restart local p0    # "this":Landroid/app/Notification;
    .restart local p1    # "parcel":Landroid/os/Parcel;
    .restart local p2    # "flags":I
    :catchall_3b
    move-exception v2

    if-eqz v1, :cond_45

    .line 3491
    const-class v3, Landroid/app/Notification;

    iget-object v4, p0, Landroid/app/Notification;->mAllowlistToken:Landroid/os/IBinder;

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->removeClassCookie(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 3493
    :cond_45
    nop

    .end local v0    # "addedListener":Landroid/app/PendingIntent$OnMarshaledListener;
    .end local p0    # "this":Landroid/app/Notification;
    .end local p1    # "parcel":Landroid/os/Parcel;
    .end local p2    # "flags":I
    throw v2
    :try_end_47
    .catchall {:try_start_3a .. :try_end_47} :catchall_47

    .line 3500
    .end local v1    # "mustClearCookie":Z
    .restart local v0    # "addedListener":Landroid/app/PendingIntent$OnMarshaledListener;
    .restart local p0    # "this":Landroid/app/Notification;
    .restart local p1    # "parcel":Landroid/os/Parcel;
    .restart local p2    # "flags":I
    :catchall_47
    move-exception v1

    if-eqz v0, :cond_4d

    .line 3501
    invoke-static {v0}, Landroid/app/PendingIntent;->removeOnMarshaledListener(Landroid/app/PendingIntent$OnMarshaledListener;)V

    .line 3503
    :cond_4d
    throw v1
.end method
