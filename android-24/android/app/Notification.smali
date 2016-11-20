.class public Landroid/app/Notification;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Notification$-void_writeToParcel_android_os_Parcel_parcel_int_flags_LambdaImpl0;,
        Landroid/app/Notification$1;,
        Landroid/app/Notification$Action;,
        Landroid/app/Notification$BigPictureStyle;,
        Landroid/app/Notification$BigTextStyle;,
        Landroid/app/Notification$Builder;,
        Landroid/app/Notification$BuilderRemoteViews;,
        Landroid/app/Notification$CarExtender;,
        Landroid/app/Notification$DecoratedCustomViewStyle;,
        Landroid/app/Notification$DecoratedMediaCustomViewStyle;,
        Landroid/app/Notification$Extender;,
        Landroid/app/Notification$InboxStyle;,
        Landroid/app/Notification$MediaStyle;,
        Landroid/app/Notification$MessagingStyle;,
        Landroid/app/Notification$Style;,
        Landroid/app/Notification$WearableExtender;
    }
.end annotation


# static fields
.field public static final AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

.field public static final CATEGORY_ALARM:Ljava/lang/String; = "alarm"

.field public static final CATEGORY_CALL:Ljava/lang/String; = "call"

.field public static final CATEGORY_EMAIL:Ljava/lang/String; = "email"

.field public static final CATEGORY_ERROR:Ljava/lang/String; = "err"

.field public static final CATEGORY_EVENT:Ljava/lang/String; = "event"

.field public static final CATEGORY_MESSAGE:Ljava/lang/String; = "msg"

.field public static final CATEGORY_PROGRESS:Ljava/lang/String; = "progress"

.field public static final CATEGORY_PROMO:Ljava/lang/String; = "promo"

.field public static final CATEGORY_RECOMMENDATION:Ljava/lang/String; = "recommendation"

.field public static final CATEGORY_REMINDER:Ljava/lang/String; = "reminder"

.field public static final CATEGORY_SERVICE:Ljava/lang/String; = "service"

.field public static final CATEGORY_SOCIAL:Ljava/lang/String; = "social"

.field public static final CATEGORY_STATUS:Ljava/lang/String; = "status"

.field public static final CATEGORY_SYSTEM:Ljava/lang/String; = "sys"

.field public static final CATEGORY_TRANSPORT:Ljava/lang/String; = "transport"

.field public static final COLOR_DEFAULT:I = 0x0

.field private static final COLOR_INVALID:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_ALL:I = -0x1

.field public static final DEFAULT_LIGHTS:I = 0x4

.field public static final DEFAULT_SOUND:I = 0x1

.field public static final DEFAULT_VIBRATE:I = 0x2

.field public static final EXTRA_ALLOW_DURING_SETUP:Ljava/lang/String; = "android.allowDuringSetup"

.field public static final EXTRA_BACKGROUND_IMAGE_URI:Ljava/lang/String; = "android.backgroundImageUri"

.field public static final EXTRA_BIG_TEXT:Ljava/lang/String; = "android.bigText"

.field public static final EXTRA_BUILDER_APPLICATION_INFO:Ljava/lang/String; = "android.appInfo"

.field public static final EXTRA_CHRONOMETER_COUNT_DOWN:Ljava/lang/String; = "android.chronometerCountDown"

.field public static final EXTRA_COMPACT_ACTIONS:Ljava/lang/String; = "android.compactActions"

.field public static final EXTRA_CONTAINS_CUSTOM_VIEW:Ljava/lang/String; = "android.contains.customView"

.field public static final EXTRA_CONVERSATION_TITLE:Ljava/lang/String; = "android.conversationTitle"

.field public static final EXTRA_INFO_TEXT:Ljava/lang/String; = "android.infoText"

.field public static final EXTRA_LARGE_ICON:Ljava/lang/String; = "android.largeIcon"

.field public static final EXTRA_LARGE_ICON_BIG:Ljava/lang/String; = "android.largeIcon.big"

.field public static final EXTRA_MEDIA_SESSION:Ljava/lang/String; = "android.mediaSession"

.field public static final EXTRA_MESSAGES:Ljava/lang/String; = "android.messages"

.field public static final EXTRA_ORIGINATING_USERID:Ljava/lang/String; = "android.originatingUserId"

.field public static final EXTRA_PEOPLE:Ljava/lang/String; = "android.people"

.field public static final EXTRA_PICTURE:Ljava/lang/String; = "android.picture"

.field public static final EXTRA_PROGRESS:Ljava/lang/String; = "android.progress"

.field public static final EXTRA_PROGRESS_INDETERMINATE:Ljava/lang/String; = "android.progressIndeterminate"

.field public static final EXTRA_PROGRESS_MAX:Ljava/lang/String; = "android.progressMax"

.field public static final EXTRA_REMOTE_INPUT_HISTORY:Ljava/lang/String; = "android.remoteInputHistory"

.field public static final EXTRA_SELF_DISPLAY_NAME:Ljava/lang/String; = "android.selfDisplayName"

.field public static final EXTRA_SHOW_CHRONOMETER:Ljava/lang/String; = "android.showChronometer"

.field public static final EXTRA_SHOW_WHEN:Ljava/lang/String; = "android.showWhen"

.field public static final EXTRA_SMALL_ICON:Ljava/lang/String; = "android.icon"

.field public static final EXTRA_SUBSTITUTE_APP_NAME:Ljava/lang/String; = "android.substName"

.field public static final EXTRA_SUB_TEXT:Ljava/lang/String; = "android.subText"

.field public static final EXTRA_SUMMARY_TEXT:Ljava/lang/String; = "android.summaryText"

.field public static final EXTRA_TEMPLATE:Ljava/lang/String; = "android.template"

.field public static final EXTRA_TEXT:Ljava/lang/String; = "android.text"

.field public static final EXTRA_TEXT_LINES:Ljava/lang/String; = "android.textLines"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "android.title"

.field public static final EXTRA_TITLE_BIG:Ljava/lang/String; = "android.title.big"

.field public static final FLAG_AUTOGROUP_SUMMARY:I = 0x400

.field public static final FLAG_AUTO_CANCEL:I = 0x10

.field public static final FLAG_FOREGROUND_SERVICE:I = 0x40

.field public static final FLAG_GROUP_SUMMARY:I = 0x200

.field public static final FLAG_HIGH_PRIORITY:I = 0x80

.field public static final FLAG_INSISTENT:I = 0x4

.field public static final FLAG_LOCAL_ONLY:I = 0x100

.field public static final FLAG_NO_CLEAR:I = 0x20

.field public static final FLAG_ONGOING_EVENT:I = 0x2

.field public static final FLAG_ONLY_ALERT_ONCE:I = 0x8

.field public static final FLAG_SHOW_LIGHTS:I = 0x1

.field public static final INTENT_CATEGORY_NOTIFICATION_PREFERENCES:Ljava/lang/String; = "android.intent.category.NOTIFICATION_PREFERENCES"

.field private static final MAX_CHARSEQUENCE_LENGTH:I = 0x1400

.field private static final MAX_REPLY_HISTORY:I = 0x5

.field public static final PRIORITY_DEFAULT:I = 0x0

.field public static final PRIORITY_HIGH:I = 0x1

.field public static final PRIORITY_LOW:I = -0x1

.field public static final PRIORITY_MAX:I = 0x2

.field public static final PRIORITY_MIN:I = -0x2

.field public static final STREAM_DEFAULT:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Notification"

.field public static final VISIBILITY_PRIVATE:I = 0x0

.field public static final VISIBILITY_PUBLIC:I = 0x1

.field public static final VISIBILITY_SECRET:I = -0x1


# instance fields
.field public actions:[Landroid/app/Notification$Action;

.field public allPendingIntents:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field public audioAttributes:Landroid/media/AudioAttributes;

.field public audioStreamType:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public bigContentView:Landroid/widget/RemoteViews;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public category:Ljava/lang/String;

.field public color:I

.field public contentIntent:Landroid/app/PendingIntent;

.field public contentView:Landroid/widget/RemoteViews;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private creationTime:J

.field public defaults:I

.field public deleteIntent:Landroid/app/PendingIntent;

.field public extras:Landroid/os/Bundle;

.field public flags:I

.field public fullScreenIntent:Landroid/app/PendingIntent;

.field public headsUpContentView:Landroid/widget/RemoteViews;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public icon:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public iconLevel:I

.field public largeIcon:Landroid/graphics/Bitmap;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public ledARGB:I

.field public ledOffMS:I

.field public ledOnMS:I

.field private mGroupKey:Ljava/lang/String;

.field private mLargeIcon:Landroid/graphics/drawable/Icon;

.field private mSmallIcon:Landroid/graphics/drawable/Icon;

.field private mSortKey:Ljava/lang/String;

.field public number:I

.field public priority:I

.field public publicVersion:Landroid/app/Notification;

.field public sound:Landroid/net/Uri;

.field public tickerText:Ljava/lang/CharSequence;

.field public tickerView:Landroid/widget/RemoteViews;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public vibrate:[J

.field public visibility:I

.field public when:J


# direct methods
.method static synthetic -get0(Landroid/app/Notification;)J
    .locals 2

    #@0
    iget-wide v0, p0, Landroid/app/Notification;->creationTime:J

    #@2
    return-wide v0
.end method

.method static synthetic -get1(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/app/Notification;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/app/Notification;->creationTime:J

    #@2
    return-wide p1
.end method

.method static synthetic -set1(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    #@2
    return-object p1
.end method

.method static synthetic -set3(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    #@2
    return-object p1
.end method

.method static synthetic -set4(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/app/Notification;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/app/Notification;->getNotificationArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/app/Notification;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Landroid/app/Notification;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/app/Notification;->hasLargeIcon()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 363
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    #@2
    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    #@5
    .line 364
    const/4 v1, 0x4

    #@6
    .line 363
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    #@9
    move-result-object v0

    #@a
    .line 365
    const/4 v1, 0x5

    #@b
    .line 363
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    #@12
    move-result-object v0

    #@13
    sput-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    #@15
    .line 2011
    new-instance v0, Landroid/app/Notification$1;

    #@17
    invoke-direct {v0}, Landroid/app/Notification$1;-><init>()V

    #@1a
    .line 2010
    sput-object v0, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1c
    .line 95
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 358
    const/4 v0, -0x1

    #@5
    iput v0, p0, Landroid/app/Notification;->audioStreamType:I

    #@7
    .line 371
    sget-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    #@9
    iput-object v0, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    #@b
    .line 586
    iput v2, p0, Landroid/app/Notification;->color:I

    #@d
    .line 762
    new-instance v0, Landroid/os/Bundle;

    #@f
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@12
    iput-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@14
    .line 1520
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@17
    move-result-wide v0

    #@18
    iput-wide v0, p0, Landroid/app/Notification;->when:J

    #@1a
    .line 1521
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@1d
    move-result-wide v0

    #@1e
    iput-wide v0, p0, Landroid/app/Notification;->creationTime:J

    #@20
    .line 1522
    iput v2, p0, Landroid/app/Notification;->priority:I

    #@22
    .line 1518
    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;J)V
    .locals 3
    .param p1, "icon"    # I
    .param p2, "tickerText"    # Ljava/lang/CharSequence;
    .param p3, "when"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 358
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/app/Notification;->audioStreamType:I

    #@6
    .line 371
    sget-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    #@8
    iput-object v0, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    #@a
    .line 586
    const/4 v0, 0x0

    #@b
    iput v0, p0, Landroid/app/Notification;->color:I

    #@d
    .line 762
    new-instance v0, Landroid/os/Bundle;

    #@f
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@12
    iput-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@14
    .line 1556
    iput p1, p0, Landroid/app/Notification;->icon:I

    #@16
    .line 1557
    iput-object p2, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    #@18
    .line 1558
    iput-wide p3, p0, Landroid/app/Notification;->when:J

    #@1a
    .line 1559
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@1d
    move-result-wide v0

    #@1e
    iput-wide v0, p0, Landroid/app/Notification;->creationTime:J

    #@20
    .line 1554
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;JLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "icon"    # I
    .param p3, "tickerText"    # Ljava/lang/CharSequence;
    .param p4, "when"    # J
    .param p6, "contentTitle"    # Ljava/lang/CharSequence;
    .param p7, "contentText"    # Ljava/lang/CharSequence;
    .param p8, "contentIntent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 358
    const/4 v0, -0x1

    #@5
    iput v0, p0, Landroid/app/Notification;->audioStreamType:I

    #@7
    .line 371
    sget-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    #@9
    iput-object v0, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    #@b
    .line 586
    iput v1, p0, Landroid/app/Notification;->color:I

    #@d
    .line 762
    new-instance v0, Landroid/os/Bundle;

    #@f
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@12
    iput-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@14
    .line 1531
    new-instance v0, Landroid/app/Notification$Builder;

    #@16
    invoke-direct {v0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@19
    invoke-virtual {v0, p4, p5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0, p6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v0, p7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@2c
    move-result-object v0

    #@2d
    .line 1537
    invoke-static {p1, v1, p8, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@30
    move-result-object v1

    #@31
    .line 1531
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->buildInto(Landroid/app/Notification;)Landroid/app/Notification;

    #@38
    .line 1529
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 358
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/app/Notification;->audioStreamType:I

    #@6
    .line 371
    sget-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    #@8
    iput-object v0, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    #@a
    .line 586
    const/4 v0, 0x0

    #@b
    iput v0, p0, Landroid/app/Notification;->color:I

    #@d
    .line 762
    new-instance v0, Landroid/os/Bundle;

    #@f
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@12
    iput-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@14
    .line 1569
    invoke-direct {p0, p1}, Landroid/app/Notification;->readFromParcelImpl(Landroid/os/Parcel;)V

    #@17
    .line 1571
    const/4 v0, 0x0

    #@18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    #@1b
    move-result-object v0

    #@1c
    iput-object v0, p0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    #@1e
    .line 1566
    return-void
.end method

.method public static addFieldsFromContext(Landroid/content/Context;Landroid/app/Notification;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notification"    # Landroid/app/Notification;

    #@0
    .prologue
    .line 2074
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    #@7
    move-result v1

    #@8
    invoke-static {v0, v1, p1}, Landroid/app/Notification;->addFieldsFromContext(Landroid/content/pm/ApplicationInfo;ILandroid/app/Notification;)V

    #@b
    .line 2073
    return-void
.end method

.method public static addFieldsFromContext(Landroid/content/pm/ApplicationInfo;ILandroid/app/Notification;)V
    .locals 2
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "userId"    # I
    .param p2, "notification"    # Landroid/app/Notification;

    #@0
    .prologue
    .line 2082
    iget-object v0, p2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@2
    const-string/jumbo v1, "android.appInfo"

    #@5
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@8
    .line 2083
    iget-object v0, p2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@a
    const-string/jumbo v1, "android.originatingUserId"

    #@d
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@10
    .line 2081
    return-void
.end method

.method private static getNotificationArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/app/Notification;
    .locals 4
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 6724
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    #@3
    move-result-object v0

    #@4
    .line 6725
    .local v0, "array":[Landroid/os/Parcelable;
    instance-of v2, v0, [Landroid/app/Notification;

    #@6
    if-nez v2, :cond_0

    #@8
    if-nez v0, :cond_1

    #@a
    .line 6726
    :cond_0
    check-cast v0, [Landroid/app/Notification;

    #@c
    .end local v0    # "array":[Landroid/os/Parcelable;
    return-object v0

    #@d
    .line 6728
    .restart local v0    # "array":[Landroid/os/Parcelable;
    :cond_1
    array-length v2, v0

    #@e
    .line 6729
    const-class v3, [Landroid/app/Notification;

    #@10
    .line 6728
    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, [Landroid/app/Notification;

    #@16
    .line 6730
    .local v1, "typedArray":[Landroid/app/Notification;
    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    #@19
    .line 6731
    return-object v1
.end method

.method private hasLargeIcon()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 3964
    iget-object v1, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    #@3
    if-nez v1, :cond_0

    #@5
    iget-object v1, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    #@7
    if-eqz v1, :cond_1

    #@9
    :cond_0
    :goto_0
    return v0

    #@a
    :cond_1
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public static priorityToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "pri"    # I

    #@0
    .prologue
    .line 2178
    packed-switch p0, :pswitch_data_0

    #@3
    .line 2190
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v1, "UNKNOWN("

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    const-string/jumbo v1, ")"

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    return-object v0

    #@23
    .line 2180
    :pswitch_0
    const-string/jumbo v0, "MIN"

    #@26
    return-object v0

    #@27
    .line 2182
    :pswitch_1
    const-string/jumbo v0, "LOW"

    #@2a
    return-object v0

    #@2b
    .line 2184
    :pswitch_2
    const-string/jumbo v0, "DEFAULT"

    #@2e
    return-object v0

    #@2f
    .line 2186
    :pswitch_3
    const-string/jumbo v0, "HIGH"

    #@32
    return-object v0

    #@33
    .line 2188
    :pswitch_4
    const-string/jumbo v0, "MAX"

    #@36
    return-object v0

    #@37
    .line 2178
    nop

    #@38
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private readFromParcelImpl(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1576
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 1578
    .local v0, "version":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@7
    move-result-wide v2

    #@8
    iput-wide v2, p0, Landroid/app/Notification;->when:J

    #@a
    .line 1579
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@d
    move-result-wide v2

    #@e
    iput-wide v2, p0, Landroid/app/Notification;->creationTime:J

    #@10
    .line 1580
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_0

    #@16
    .line 1581
    sget-object v1, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    #@18
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    check-cast v1, Landroid/graphics/drawable/Icon;

    #@1e
    iput-object v1, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    #@20
    .line 1582
    iget-object v1, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    #@22
    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getType()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x2

    #@27
    if-ne v1, v2, :cond_0

    #@29
    .line 1583
    iget-object v1, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    #@2b
    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getResId()I

    #@2e
    move-result v1

    #@2f
    iput v1, p0, Landroid/app/Notification;->icon:I

    #@31
    .line 1586
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@34
    move-result v1

    #@35
    iput v1, p0, Landroid/app/Notification;->number:I

    #@37
    .line 1587
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3a
    move-result v1

    #@3b
    if-eqz v1, :cond_1

    #@3d
    .line 1588
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3f
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@42
    move-result-object v1

    #@43
    check-cast v1, Landroid/app/PendingIntent;

    #@45
    iput-object v1, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    #@47
    .line 1590
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4a
    move-result v1

    #@4b
    if-eqz v1, :cond_2

    #@4d
    .line 1591
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4f
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@52
    move-result-object v1

    #@53
    check-cast v1, Landroid/app/PendingIntent;

    #@55
    iput-object v1, p0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    #@57
    .line 1593
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@5a
    move-result v1

    #@5b
    if-eqz v1, :cond_3

    #@5d
    .line 1594
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@5f
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@62
    move-result-object v1

    #@63
    check-cast v1, Ljava/lang/CharSequence;

    #@65
    iput-object v1, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    #@67
    .line 1596
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6a
    move-result v1

    #@6b
    if-eqz v1, :cond_4

    #@6d
    .line 1597
    sget-object v1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    #@6f
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@72
    move-result-object v1

    #@73
    check-cast v1, Landroid/widget/RemoteViews;

    #@75
    iput-object v1, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    #@77
    .line 1599
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7a
    move-result v1

    #@7b
    if-eqz v1, :cond_5

    #@7d
    .line 1600
    sget-object v1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7f
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@82
    move-result-object v1

    #@83
    check-cast v1, Landroid/widget/RemoteViews;

    #@85
    iput-object v1, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    #@87
    .line 1602
    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8a
    move-result v1

    #@8b
    if-eqz v1, :cond_6

    #@8d
    .line 1603
    sget-object v1, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    #@8f
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@92
    move-result-object v1

    #@93
    check-cast v1, Landroid/graphics/drawable/Icon;

    #@95
    iput-object v1, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    #@97
    .line 1605
    :cond_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@9a
    move-result v1

    #@9b
    iput v1, p0, Landroid/app/Notification;->defaults:I

    #@9d
    .line 1606
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@a0
    move-result v1

    #@a1
    iput v1, p0, Landroid/app/Notification;->flags:I

    #@a3
    .line 1607
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@a6
    move-result v1

    #@a7
    if-eqz v1, :cond_7

    #@a9
    .line 1608
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@ab
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@ae
    move-result-object v1

    #@af
    check-cast v1, Landroid/net/Uri;

    #@b1
    iput-object v1, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    #@b3
    .line 1611
    :cond_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@b6
    move-result v1

    #@b7
    iput v1, p0, Landroid/app/Notification;->audioStreamType:I

    #@b9
    .line 1612
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@bc
    move-result v1

    #@bd
    if-eqz v1, :cond_8

    #@bf
    .line 1613
    sget-object v1, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    #@c1
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c4
    move-result-object v1

    #@c5
    check-cast v1, Landroid/media/AudioAttributes;

    #@c7
    iput-object v1, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    #@c9
    .line 1615
    :cond_8
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    #@cc
    move-result-object v1

    #@cd
    iput-object v1, p0, Landroid/app/Notification;->vibrate:[J

    #@cf
    .line 1616
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@d2
    move-result v1

    #@d3
    iput v1, p0, Landroid/app/Notification;->ledARGB:I

    #@d5
    .line 1617
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@d8
    move-result v1

    #@d9
    iput v1, p0, Landroid/app/Notification;->ledOnMS:I

    #@db
    .line 1618
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@de
    move-result v1

    #@df
    iput v1, p0, Landroid/app/Notification;->ledOffMS:I

    #@e1
    .line 1619
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@e4
    move-result v1

    #@e5
    iput v1, p0, Landroid/app/Notification;->iconLevel:I

    #@e7
    .line 1621
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@ea
    move-result v1

    #@eb
    if-eqz v1, :cond_9

    #@ed
    .line 1622
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@ef
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@f2
    move-result-object v1

    #@f3
    check-cast v1, Landroid/app/PendingIntent;

    #@f5
    iput-object v1, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    #@f7
    .line 1625
    :cond_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@fa
    move-result v1

    #@fb
    iput v1, p0, Landroid/app/Notification;->priority:I

    #@fd
    .line 1627
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@100
    move-result-object v1

    #@101
    iput-object v1, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    #@103
    .line 1629
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@106
    move-result-object v1

    #@107
    iput-object v1, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    #@109
    .line 1631
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@10c
    move-result-object v1

    #@10d
    iput-object v1, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    #@10f
    .line 1633
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@112
    move-result-object v1

    #@113
    const/4 v2, 0x1

    #@114
    invoke-static {v1, v2}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    #@117
    move-result-object v1

    #@118
    iput-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@11a
    .line 1635
    sget-object v1, Landroid/app/Notification$Action;->CREATOR:Landroid/os/Parcelable$Creator;

    #@11c
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@11f
    move-result-object v1

    #@120
    check-cast v1, [Landroid/app/Notification$Action;

    #@122
    iput-object v1, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    #@124
    .line 1637
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@127
    move-result v1

    #@128
    if-eqz v1, :cond_a

    #@12a
    .line 1638
    sget-object v1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    #@12c
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@12f
    move-result-object v1

    #@130
    check-cast v1, Landroid/widget/RemoteViews;

    #@132
    iput-object v1, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    #@134
    .line 1641
    :cond_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@137
    move-result v1

    #@138
    if-eqz v1, :cond_b

    #@13a
    .line 1642
    sget-object v1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    #@13c
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@13f
    move-result-object v1

    #@140
    check-cast v1, Landroid/widget/RemoteViews;

    #@142
    iput-object v1, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    #@144
    .line 1645
    :cond_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@147
    move-result v1

    #@148
    iput v1, p0, Landroid/app/Notification;->visibility:I

    #@14a
    .line 1647
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@14d
    move-result v1

    #@14e
    if-eqz v1, :cond_c

    #@150
    .line 1648
    sget-object v1, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    #@152
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@155
    move-result-object v1

    #@156
    check-cast v1, Landroid/app/Notification;

    #@158
    iput-object v1, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    #@15a
    .line 1651
    :cond_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@15d
    move-result v1

    #@15e
    iput v1, p0, Landroid/app/Notification;->color:I

    #@160
    .line 1574
    return-void
.end method

.method private static removeTextSizeSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 13
    .param p0, "charSequence"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1810
    instance-of v2, p0, Landroid/text/Spanned;

    #@3
    if-eqz v2, :cond_4

    #@5
    move-object v10, p0

    #@6
    .line 1811
    check-cast v10, Landroid/text/Spanned;

    #@8
    .line 1812
    .local v10, "ss":Landroid/text/Spanned;
    invoke-interface {v10}, Landroid/text/Spanned;->length()I

    #@b
    move-result v2

    #@c
    const-class v3, Ljava/lang/Object;

    #@e
    invoke-interface {v10, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@11
    move-result-object v9

    #@12
    .line 1813
    .local v9, "spans":[Ljava/lang/Object;
    new-instance v6, Landroid/text/SpannableStringBuilder;

    #@14
    invoke-interface {v10}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    invoke-direct {v6, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    #@1b
    .line 1814
    .local v6, "builder":Landroid/text/SpannableStringBuilder;
    array-length v12, v9

    #@1c
    move v11, v1

    #@1d
    :goto_0
    if-ge v11, v12, :cond_3

    #@1f
    aget-object v8, v9, v11

    #@21
    .line 1815
    .local v8, "span":Ljava/lang/Object;
    move-object v0, v8

    #@22
    .line 1816
    .local v0, "resultSpan":Ljava/lang/Object;
    instance-of v1, v8, Landroid/text/style/CharacterStyle;

    #@24
    if-eqz v1, :cond_0

    #@26
    move-object v1, v8

    #@27
    .line 1817
    check-cast v1, Landroid/text/style/CharacterStyle;

    #@29
    invoke-virtual {v1}, Landroid/text/style/CharacterStyle;->getUnderlying()Landroid/text/style/CharacterStyle;

    #@2c
    move-result-object v0

    #@2d
    .line 1819
    :cond_0
    instance-of v1, v0, Landroid/text/style/TextAppearanceSpan;

    #@2f
    if-eqz v1, :cond_2

    #@31
    move-object v7, v0

    #@32
    .line 1820
    check-cast v7, Landroid/text/style/TextAppearanceSpan;

    #@34
    .line 1821
    .local v7, "originalSpan":Landroid/text/style/TextAppearanceSpan;
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    #@36
    .line 1822
    .end local v0    # "resultSpan":Ljava/lang/Object;
    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getFamily()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    .line 1823
    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    #@3d
    move-result v2

    #@3e
    .line 1825
    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    #@41
    move-result-object v4

    #@42
    .line 1826
    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    #@45
    move-result-object v5

    #@46
    .line 1824
    const/4 v3, -0x1

    #@47
    .line 1821
    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    #@4a
    .line 1833
    .end local v7    # "originalSpan":Landroid/text/style/TextAppearanceSpan;
    .restart local v0    # "resultSpan":Ljava/lang/Object;
    :goto_1
    invoke-interface {v10, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    #@4d
    move-result v1

    #@4e
    invoke-interface {v10, v8}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    #@51
    move-result v2

    #@52
    .line 1834
    invoke-interface {v10, v8}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    #@55
    move-result v3

    #@56
    .line 1833
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@59
    .line 1814
    :cond_1
    add-int/lit8 v1, v11, 0x1

    #@5b
    move v11, v1

    #@5c
    goto :goto_0

    #@5d
    .line 1827
    :cond_2
    instance-of v1, v0, Landroid/text/style/RelativeSizeSpan;

    #@5f
    if-nez v1, :cond_1

    #@61
    .line 1828
    instance-of v1, v0, Landroid/text/style/AbsoluteSizeSpan;

    #@63
    .line 1827
    if-nez v1, :cond_1

    #@65
    .line 1831
    move-object v0, v8

    #@66
    goto :goto_1

    #@67
    .line 1836
    .end local v0    # "resultSpan":Ljava/lang/Object;
    .end local v8    # "span":Ljava/lang/Object;
    :cond_3
    return-object v6

    #@68
    .line 1838
    .end local v6    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v9    # "spans":[Ljava/lang/Object;
    .end local v10    # "ss":Landroid/text/Spanned;
    :cond_4
    return-object p0
.end method

.method public static safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "cs"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/16 v1, 0x1400

    #@2
    .line 1797
    if-nez p0, :cond_0

    #@4
    return-object p0

    #@5
    .line 1798
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@8
    move-result v0

    #@9
    if-le v0, v1, :cond_1

    #@b
    .line 1799
    const/4 v0, 0x0

    #@c
    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@f
    move-result-object p0

    #@10
    .line 1801
    :cond_1
    instance-of v0, p0, Landroid/os/Parcelable;

    #@12
    if-eqz v0, :cond_2

    #@14
    .line 1802
    const-string/jumbo v0, "Notification"

    #@17
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v2, "warning: "

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    .line 1803
    const-string/jumbo v2, " instance is a custom Parcelable and not allowed in Notification"

    #@32
    .line 1802
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3d
    .line 1804
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    return-object v0

    #@42
    .line 1806
    :cond_2
    invoke-static {p0}, Landroid/app/Notification;->removeTextSizeSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@45
    move-result-object v0

    #@46
    return-object v0
.end method

.method public static visibilityToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "vis"    # I

    #@0
    .prologue
    .line 2162
    packed-switch p0, :pswitch_data_0

    #@3
    .line 2170
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v1, "UNKNOWN("

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    const-string/jumbo v1, ")"

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    return-object v0

    #@23
    .line 2164
    :pswitch_0
    const-string/jumbo v0, "PRIVATE"

    #@26
    return-object v0

    #@27
    .line 2166
    :pswitch_1
    const-string/jumbo v0, "PUBLIC"

    #@2a
    return-object v0

    #@2b
    .line 2168
    :pswitch_2
    const-string/jumbo v0, "SECRET"

    #@2e
    return-object v0

    #@2f
    .line 2162
    nop

    #@30
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private writeToParcelImpl(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1882
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 1884
    iget-wide v0, p0, Landroid/app/Notification;->when:J

    #@7
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@a
    .line 1885
    iget-wide v0, p0, Landroid/app/Notification;->creationTime:J

    #@c
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@f
    .line 1886
    iget-object v0, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    #@11
    if-nez v0, :cond_0

    #@13
    iget v0, p0, Landroid/app/Notification;->icon:I

    #@15
    if-eqz v0, :cond_0

    #@17
    .line 1888
    const-string/jumbo v0, ""

    #@1a
    iget v1, p0, Landroid/app/Notification;->icon:I

    #@1c
    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    #@1f
    move-result-object v0

    #@20
    iput-object v0, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    #@22
    .line 1890
    :cond_0
    iget-object v0, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    #@24
    if-eqz v0, :cond_2

    #@26
    .line 1891
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    .line 1892
    iget-object v0, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    #@2b
    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    #@2e
    .line 1896
    :goto_0
    iget v0, p0, Landroid/app/Notification;->number:I

    #@30
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@33
    .line 1897
    iget-object v0, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    #@35
    if-eqz v0, :cond_3

    #@37
    .line 1898
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@3a
    .line 1899
    iget-object v0, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    #@3c
    invoke-virtual {v0, p1, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    #@3f
    .line 1903
    :goto_1
    iget-object v0, p0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    #@41
    if-eqz v0, :cond_4

    #@43
    .line 1904
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@46
    .line 1905
    iget-object v0, p0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    #@48
    invoke-virtual {v0, p1, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    #@4b
    .line 1909
    :goto_2
    iget-object v0, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    #@4d
    if-eqz v0, :cond_5

    #@4f
    .line 1910
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@52
    .line 1911
    iget-object v0, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    #@54
    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@57
    .line 1915
    :goto_3
    iget-object v0, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    #@59
    if-eqz v0, :cond_6

    #@5b
    .line 1916
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@5e
    .line 1917
    iget-object v0, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    #@60
    invoke-virtual {v0, p1, v2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    #@63
    .line 1921
    :goto_4
    iget-object v0, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    #@65
    if-eqz v0, :cond_7

    #@67
    .line 1922
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@6a
    .line 1923
    iget-object v0, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    #@6c
    invoke-virtual {v0, p1, v2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    #@6f
    .line 1927
    :goto_5
    iget-object v0, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    #@71
    if-nez v0, :cond_1

    #@73
    iget-object v0, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    #@75
    if-eqz v0, :cond_1

    #@77
    .line 1929
    iget-object v0, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    #@79
    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    #@7c
    move-result-object v0

    #@7d
    iput-object v0, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    #@7f
    .line 1931
    :cond_1
    iget-object v0, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    #@81
    if-eqz v0, :cond_8

    #@83
    .line 1932
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@86
    .line 1933
    iget-object v0, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    #@88
    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    #@8b
    .line 1938
    :goto_6
    iget v0, p0, Landroid/app/Notification;->defaults:I

    #@8d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@90
    .line 1939
    iget v0, p0, Landroid/app/Notification;->flags:I

    #@92
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@95
    .line 1941
    iget-object v0, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    #@97
    if-eqz v0, :cond_9

    #@99
    .line 1942
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@9c
    .line 1943
    iget-object v0, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    #@9e
    invoke-virtual {v0, p1, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@a1
    .line 1947
    :goto_7
    iget v0, p0, Landroid/app/Notification;->audioStreamType:I

    #@a3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a6
    .line 1949
    iget-object v0, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    #@a8
    if-eqz v0, :cond_a

    #@aa
    .line 1950
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@ad
    .line 1951
    iget-object v0, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    #@af
    invoke-virtual {v0, p1, v2}, Landroid/media/AudioAttributes;->writeToParcel(Landroid/os/Parcel;I)V

    #@b2
    .line 1956
    :goto_8
    iget-object v0, p0, Landroid/app/Notification;->vibrate:[J

    #@b4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    #@b7
    .line 1957
    iget v0, p0, Landroid/app/Notification;->ledARGB:I

    #@b9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@bc
    .line 1958
    iget v0, p0, Landroid/app/Notification;->ledOnMS:I

    #@be
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@c1
    .line 1959
    iget v0, p0, Landroid/app/Notification;->ledOffMS:I

    #@c3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@c6
    .line 1960
    iget v0, p0, Landroid/app/Notification;->iconLevel:I

    #@c8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@cb
    .line 1962
    iget-object v0, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    #@cd
    if-eqz v0, :cond_b

    #@cf
    .line 1963
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@d2
    .line 1964
    iget-object v0, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    #@d4
    invoke-virtual {v0, p1, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    #@d7
    .line 1969
    :goto_9
    iget v0, p0, Landroid/app/Notification;->priority:I

    #@d9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@dc
    .line 1971
    iget-object v0, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    #@de
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e1
    .line 1973
    iget-object v0, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    #@e3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e6
    .line 1975
    iget-object v0, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    #@e8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@eb
    .line 1977
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@ed
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@f0
    .line 1979
    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    #@f2
    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@f5
    .line 1981
    iget-object v0, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    #@f7
    if-eqz v0, :cond_c

    #@f9
    .line 1982
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@fc
    .line 1983
    iget-object v0, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    #@fe
    invoke-virtual {v0, p1, v2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    #@101
    .line 1988
    :goto_a
    iget-object v0, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    #@103
    if-eqz v0, :cond_d

    #@105
    .line 1989
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@108
    .line 1990
    iget-object v0, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    #@10a
    invoke-virtual {v0, p1, v2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    #@10d
    .line 1995
    :goto_b
    iget v0, p0, Landroid/app/Notification;->visibility:I

    #@10f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@112
    .line 1997
    iget-object v0, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    #@114
    if-eqz v0, :cond_e

    #@116
    .line 1998
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@119
    .line 1999
    iget-object v0, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    #@11b
    invoke-virtual {v0, p1, v2}, Landroid/app/Notification;->writeToParcel(Landroid/os/Parcel;I)V

    #@11e
    .line 2004
    :goto_c
    iget v0, p0, Landroid/app/Notification;->color:I

    #@120
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@123
    .line 1881
    return-void

    #@124
    .line 1894
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@127
    goto/16 :goto_0

    #@129
    .line 1901
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@12c
    goto/16 :goto_1

    #@12e
    .line 1907
    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@131
    goto/16 :goto_2

    #@133
    .line 1913
    :cond_5
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@136
    goto/16 :goto_3

    #@138
    .line 1919
    :cond_6
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@13b
    goto/16 :goto_4

    #@13d
    .line 1925
    :cond_7
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@140
    goto/16 :goto_5

    #@142
    .line 1935
    :cond_8
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@145
    goto/16 :goto_6

    #@147
    .line 1945
    :cond_9
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14a
    goto/16 :goto_7

    #@14c
    .line 1953
    :cond_a
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14f
    goto/16 :goto_8

    #@151
    .line 1966
    :cond_b
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@154
    goto :goto_9

    #@155
    .line 1985
    :cond_c
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@158
    goto :goto_a

    #@159
    .line 1992
    :cond_d
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15c
    goto :goto_b

    #@15d
    .line 2001
    :cond_e
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@160
    goto :goto_c
.end method


# virtual methods
.method synthetic -android_app_Notification_lambda$1(Landroid/os/Parcel;Landroid/app/PendingIntent;Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "out"    # Landroid/os/Parcel;
    .param p4, "outFlags"    # I

    #@0
    .prologue
    .line 1860
    if-ne p1, p3, :cond_1

    #@2
    .line 1861
    iget-object v0, p0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1862
    new-instance v0, Landroid/util/ArraySet;

    #@8
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@b
    iput-object v0, p0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    #@d
    .line 1864
    :cond_0
    iget-object v0, p0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    #@f
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@12
    .line 0
    :cond_1
    return-void
.end method

.method public clone()Landroid/app/Notification;
    .locals 2

    #@0
    .prologue
    .line 1656
    new-instance v0, Landroid/app/Notification;

    #@2
    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    #@5
    .line 1657
    .local v0, "that":Landroid/app/Notification;
    const/4 v1, 0x1

    #@6
    invoke-virtual {p0, v0, v1}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    #@9
    .line 1658
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 1655
    invoke-virtual {p0}, Landroid/app/Notification;->clone()Landroid/app/Notification;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public cloneInto(Landroid/app/Notification;Z)V
    .locals 10
    .param p1, "that"    # Landroid/app/Notification;
    .param p2, "heavy"    # Z

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    .line 1667
    iget-wide v6, p0, Landroid/app/Notification;->when:J

    #@4
    iput-wide v6, p1, Landroid/app/Notification;->when:J

    #@6
    .line 1668
    iget-wide v6, p0, Landroid/app/Notification;->creationTime:J

    #@8
    iput-wide v6, p1, Landroid/app/Notification;->creationTime:J

    #@a
    .line 1669
    iget-object v5, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    #@c
    iput-object v5, p1, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    #@e
    .line 1670
    iget v5, p0, Landroid/app/Notification;->number:I

    #@10
    iput v5, p1, Landroid/app/Notification;->number:I

    #@12
    .line 1673
    iget-object v5, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    #@14
    iput-object v5, p1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    #@16
    .line 1674
    iget-object v5, p0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    #@18
    iput-object v5, p1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    #@1a
    .line 1675
    iget-object v5, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    #@1c
    iput-object v5, p1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    #@1e
    .line 1677
    iget-object v5, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    #@20
    if-eqz v5, :cond_0

    #@22
    .line 1678
    iget-object v5, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    #@24
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@27
    move-result-object v5

    #@28
    iput-object v5, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    #@2a
    .line 1680
    :cond_0
    if-eqz p2, :cond_1

    #@2c
    iget-object v5, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    #@2e
    if-eqz v5, :cond_1

    #@30
    .line 1681
    iget-object v5, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    #@32
    invoke-virtual {v5}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    #@35
    move-result-object v5

    #@36
    iput-object v5, p1, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    #@38
    .line 1683
    :cond_1
    if-eqz p2, :cond_2

    #@3a
    iget-object v5, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    #@3c
    if-eqz v5, :cond_2

    #@3e
    .line 1684
    iget-object v5, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    #@40
    invoke-virtual {v5}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    #@43
    move-result-object v5

    #@44
    iput-object v5, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    #@46
    .line 1686
    :cond_2
    if-eqz p2, :cond_3

    #@48
    iget-object v5, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    #@4a
    if-eqz v5, :cond_3

    #@4c
    .line 1687
    iget-object v5, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    #@4e
    iput-object v5, p1, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    #@50
    .line 1689
    :cond_3
    iget v5, p0, Landroid/app/Notification;->iconLevel:I

    #@52
    iput v5, p1, Landroid/app/Notification;->iconLevel:I

    #@54
    .line 1690
    iget-object v5, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    #@56
    iput-object v5, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    #@58
    .line 1691
    iget v5, p0, Landroid/app/Notification;->audioStreamType:I

    #@5a
    iput v5, p1, Landroid/app/Notification;->audioStreamType:I

    #@5c
    .line 1692
    iget-object v5, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    #@5e
    if-eqz v5, :cond_4

    #@60
    .line 1693
    new-instance v5, Landroid/media/AudioAttributes$Builder;

    #@62
    iget-object v6, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    #@64
    invoke-direct {v5, v6}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    #@67
    invoke-virtual {v5}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    #@6a
    move-result-object v5

    #@6b
    iput-object v5, p1, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    #@6d
    .line 1696
    :cond_4
    iget-object v4, p0, Landroid/app/Notification;->vibrate:[J

    #@6f
    .line 1697
    .local v4, "vibrate":[J
    if-eqz v4, :cond_5

    #@71
    .line 1698
    array-length v0, v4

    #@72
    .line 1699
    .local v0, "N":I
    new-array v3, v0, [J

    #@74
    iput-object v3, p1, Landroid/app/Notification;->vibrate:[J

    #@76
    .line 1700
    .local v3, "vib":[J
    invoke-static {v4, v9, v3, v9, v0}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@79
    .line 1703
    .end local v0    # "N":I
    .end local v3    # "vib":[J
    :cond_5
    iget v5, p0, Landroid/app/Notification;->ledARGB:I

    #@7b
    iput v5, p1, Landroid/app/Notification;->ledARGB:I

    #@7d
    .line 1704
    iget v5, p0, Landroid/app/Notification;->ledOnMS:I

    #@7f
    iput v5, p1, Landroid/app/Notification;->ledOnMS:I

    #@81
    .line 1705
    iget v5, p0, Landroid/app/Notification;->ledOffMS:I

    #@83
    iput v5, p1, Landroid/app/Notification;->ledOffMS:I

    #@85
    .line 1706
    iget v5, p0, Landroid/app/Notification;->defaults:I

    #@87
    iput v5, p1, Landroid/app/Notification;->defaults:I

    #@89
    .line 1708
    iget v5, p0, Landroid/app/Notification;->flags:I

    #@8b
    iput v5, p1, Landroid/app/Notification;->flags:I

    #@8d
    .line 1710
    iget v5, p0, Landroid/app/Notification;->priority:I

    #@8f
    iput v5, p1, Landroid/app/Notification;->priority:I

    #@91
    .line 1712
    iget-object v5, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    #@93
    iput-object v5, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    #@95
    .line 1714
    iget-object v5, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    #@97
    iput-object v5, p1, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    #@99
    .line 1716
    iget-object v5, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    #@9b
    iput-object v5, p1, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    #@9d
    .line 1718
    iget-object v5, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@9f
    if-eqz v5, :cond_6

    #@a1
    .line 1720
    :try_start_0
    new-instance v5, Landroid/os/Bundle;

    #@a3
    iget-object v6, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@a5
    invoke-direct {v5, v6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@a8
    iput-object v5, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@aa
    .line 1722
    iget-object v5, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@ac
    invoke-virtual {v5}, Landroid/os/Bundle;->size()I
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    #@af
    .line 1729
    :cond_6
    :goto_0
    iget-object v5, p0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    #@b1
    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    #@b4
    move-result v5

    #@b5
    if-nez v5, :cond_7

    #@b7
    .line 1730
    new-instance v5, Landroid/util/ArraySet;

    #@b9
    iget-object v6, p0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    #@bb
    invoke-direct {v5, v6}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    #@be
    iput-object v5, p1, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    #@c0
    .line 1733
    :cond_7
    iget-object v5, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    #@c2
    if-eqz v5, :cond_8

    #@c4
    .line 1734
    iget-object v5, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    #@c6
    array-length v5, v5

    #@c7
    new-array v5, v5, [Landroid/app/Notification$Action;

    #@c9
    iput-object v5, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    #@cb
    .line 1735
    const/4 v2, 0x0

    #@cc
    .local v2, "i":I
    :goto_1
    iget-object v5, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    #@ce
    array-length v5, v5

    #@cf
    if-ge v2, v5, :cond_8

    #@d1
    .line 1736
    iget-object v5, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    #@d3
    iget-object v6, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    #@d5
    aget-object v6, v6, v2

    #@d7
    invoke-virtual {v6}, Landroid/app/Notification$Action;->clone()Landroid/app/Notification$Action;

    #@da
    move-result-object v6

    #@db
    aput-object v6, v5, v2

    #@dd
    .line 1735
    add-int/lit8 v2, v2, 0x1

    #@df
    goto :goto_1

    #@e0
    .line 1723
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    #@e1
    .line 1724
    .local v1, "e":Landroid/os/BadParcelableException;
    const-string/jumbo v5, "Notification"

    #@e4
    new-instance v6, Ljava/lang/StringBuilder;

    #@e6
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@e9
    const-string/jumbo v7, "could not unparcel extras from notification: "

    #@ec
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v6

    #@f0
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f3
    move-result-object v6

    #@f4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f7
    move-result-object v6

    #@f8
    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@fb
    .line 1725
    iput-object v8, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@fd
    goto :goto_0

    #@fe
    .line 1740
    .end local v1    # "e":Landroid/os/BadParcelableException;
    :cond_8
    if-eqz p2, :cond_9

    #@100
    iget-object v5, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    #@102
    if-eqz v5, :cond_9

    #@104
    .line 1741
    iget-object v5, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    #@106
    invoke-virtual {v5}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    #@109
    move-result-object v5

    #@10a
    iput-object v5, p1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    #@10c
    .line 1744
    :cond_9
    if-eqz p2, :cond_a

    #@10e
    iget-object v5, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    #@110
    if-eqz v5, :cond_a

    #@112
    .line 1745
    iget-object v5, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    #@114
    invoke-virtual {v5}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    #@117
    move-result-object v5

    #@118
    iput-object v5, p1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    #@11a
    .line 1748
    :cond_a
    iget v5, p0, Landroid/app/Notification;->visibility:I

    #@11c
    iput v5, p1, Landroid/app/Notification;->visibility:I

    #@11e
    .line 1750
    iget-object v5, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    #@120
    if-eqz v5, :cond_b

    #@122
    .line 1751
    new-instance v5, Landroid/app/Notification;

    #@124
    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    #@127
    iput-object v5, p1, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    #@129
    .line 1752
    iget-object v5, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    #@12b
    iget-object v6, p1, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    #@12d
    invoke-virtual {v5, v6, p2}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    #@130
    .line 1755
    :cond_b
    iget v5, p0, Landroid/app/Notification;->color:I

    #@132
    iput v5, p1, Landroid/app/Notification;->color:I

    #@134
    .line 1757
    if-nez p2, :cond_c

    #@136
    .line 1758
    invoke-virtual {p1}, Landroid/app/Notification;->lightenPayload()V

    #@139
    .line 1666
    :cond_c
    return-void
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 1842
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getGroup()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 733
    iget-object v0, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getLargeIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    #@0
    .prologue
    .line 2220
    iget-object v0, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    #@2
    return-object v0
.end method

.method public getSmallIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    #@0
    .prologue
    .line 2203
    iget-object v0, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    #@2
    return-object v0
.end method

.method public getSortKey()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 751
    iget-object v0, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public isGroupChild()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2234
    iget-object v1, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget v1, p0, Landroid/app/Notification;->flags:I

    #@7
    and-int/lit16 v1, v1, 0x200

    #@9
    if-nez v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    return v0
.end method

.method public isGroupSummary()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2227
    iget-object v1, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget v1, p0, Landroid/app/Notification;->flags:I

    #@7
    and-int/lit16 v1, v1, 0x200

    #@9
    if-eqz v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    return v0
.end method

.method public final lightenPayload()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1768
    iput-object v6, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    #@3
    .line 1769
    iput-object v6, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    #@5
    .line 1770
    iput-object v6, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    #@7
    .line 1771
    iput-object v6, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    #@9
    .line 1772
    iput-object v6, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    #@b
    .line 1773
    iget-object v6, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@d
    if-eqz v6, :cond_0

    #@f
    iget-object v6, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@11
    invoke-virtual {v6}, Landroid/os/Bundle;->isEmpty()Z

    #@14
    move-result v6

    #@15
    if-eqz v6, :cond_1

    #@17
    .line 1767
    :cond_0
    return-void

    #@18
    .line 1774
    :cond_1
    iget-object v6, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@1a
    invoke-virtual {v6}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@1d
    move-result-object v4

    #@1e
    .line 1775
    .local v4, "keyset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->size()I

    #@21
    move-result v0

    #@22
    .line 1776
    .local v0, "N":I
    new-array v6, v0, [Ljava/lang/String;

    #@24
    invoke-interface {v4, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@27
    move-result-object v3

    #@28
    check-cast v3, [Ljava/lang/String;

    #@2a
    .line 1777
    .local v3, "keys":[Ljava/lang/String;
    const/4 v1, 0x0

    #@2b
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@2d
    .line 1778
    aget-object v2, v3, v1

    #@2f
    .line 1779
    .local v2, "key":Ljava/lang/String;
    iget-object v6, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@31
    invoke-virtual {v6, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@34
    move-result-object v5

    #@35
    .line 1780
    .local v5, "obj":Ljava/lang/Object;
    if-eqz v5, :cond_3

    #@37
    .line 1781
    instance-of v6, v5, Landroid/os/Parcelable;

    #@39
    if-nez v6, :cond_2

    #@3b
    .line 1782
    instance-of v6, v5, [Landroid/os/Parcelable;

    #@3d
    .line 1781
    if-nez v6, :cond_2

    #@3f
    .line 1783
    instance-of v6, v5, Landroid/util/SparseArray;

    #@41
    .line 1781
    if-nez v6, :cond_2

    #@43
    .line 1784
    instance-of v6, v5, Ljava/util/ArrayList;

    #@45
    .line 1780
    if-eqz v6, :cond_3

    #@47
    .line 1785
    :cond_2
    iget-object v6, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@49
    invoke-virtual {v6, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@4c
    .line 1777
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@4e
    goto :goto_0
.end method

.method public setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentTitle"    # Ljava/lang/CharSequence;
    .param p3, "contentText"    # Ljava/lang/CharSequence;
    .param p4, "contentIntent"    # Landroid/app/PendingIntent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2046
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@3
    move-result-object v1

    #@4
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@6
    const/16 v2, 0x16

    #@8
    if-le v1, v2, :cond_0

    #@a
    .line 2047
    const-string/jumbo v1, "Notification"

    #@d
    const-string/jumbo v2, "setLatestEventInfo() is deprecated and you should feel deprecated."

    #@10
    .line 2048
    new-instance v3, Ljava/lang/Throwable;

    #@12
    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    #@15
    .line 2047
    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@18
    .line 2051
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@1b
    move-result-object v1

    #@1c
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@1e
    const/16 v2, 0x18

    #@20
    if-ge v1, v2, :cond_1

    #@22
    .line 2052
    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@24
    const-string/jumbo v2, "android.showWhen"

    #@27
    const/4 v3, 0x1

    #@28
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@2b
    .line 2056
    :cond_1
    new-instance v0, Landroid/app/Notification$Builder;

    #@2d
    invoke-direct {v0, p1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;)V

    #@30
    .line 2059
    .local v0, "builder":Landroid/app/Notification$Builder;
    if-eqz p2, :cond_2

    #@32
    .line 2060
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@35
    .line 2062
    :cond_2
    if-eqz p3, :cond_3

    #@37
    .line 2063
    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@3a
    .line 2065
    :cond_3
    invoke-virtual {v0, p4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@3d
    .line 2067
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    #@40
    .line 2045
    return-void
.end method

.method public setSmallIcon(Landroid/graphics/drawable/Icon;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    #@0
    .prologue
    .line 2211
    iput-object p1, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    #@2
    .line 2210
    return-void
.end method

.method public showsChronometer()Z
    .locals 4

    #@0
    .prologue
    .line 3980
    iget-wide v0, p0, Landroid/app/Notification;->when:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@a
    const-string/jumbo v1, "android.showChronometer"

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@10
    move-result v0

    #@11
    :goto_0
    return v0

    #@12
    :cond_0
    const/4 v0, 0x0

    #@13
    goto :goto_0
.end method

.method public showsTime()Z
    .locals 4

    #@0
    .prologue
    .line 3972
    iget-wide v0, p0, Landroid/app/Notification;->when:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@a
    const-string/jumbo v1, "android.showWhen"

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@10
    move-result v0

    #@11
    :goto_0
    return v0

    #@12
    :cond_0
    const/4 v0, 0x0

    #@13
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 2088
    new-instance v2, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    .line 2089
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "Notification(pri="

    #@9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    .line 2090
    iget v3, p0, Landroid/app/Notification;->priority:I

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    .line 2091
    const-string/jumbo v3, " contentView="

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    .line 2092
    iget-object v3, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    #@19
    if-eqz v3, :cond_6

    #@1b
    .line 2093
    iget-object v3, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    #@1d
    invoke-virtual {v3}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    .line 2094
    const-string/jumbo v3, "/0x"

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    .line 2095
    iget-object v3, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    #@2c
    invoke-virtual {v3}, Landroid/widget/RemoteViews;->getLayoutId()I

    #@2f
    move-result v3

    #@30
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    .line 2099
    :goto_0
    const-string/jumbo v3, " vibrate="

    #@3a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    .line 2100
    iget v3, p0, Landroid/app/Notification;->defaults:I

    #@3f
    and-int/lit8 v3, v3, 0x2

    #@41
    if-eqz v3, :cond_7

    #@43
    .line 2101
    const-string/jumbo v3, "default"

    #@46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    .line 2116
    :goto_1
    const-string/jumbo v3, " sound="

    #@4c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    .line 2117
    iget v3, p0, Landroid/app/Notification;->defaults:I

    #@51
    and-int/lit8 v3, v3, 0x1

    #@53
    if-eqz v3, :cond_b

    #@55
    .line 2118
    const-string/jumbo v3, "default"

    #@58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    .line 2124
    :goto_2
    iget-object v3, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    #@5d
    if-eqz v3, :cond_0

    #@5f
    .line 2125
    const-string/jumbo v3, " tick"

    #@62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    .line 2127
    :cond_0
    const-string/jumbo v3, " defaults=0x"

    #@68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    .line 2128
    iget v3, p0, Landroid/app/Notification;->defaults:I

    #@6d
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@70
    move-result-object v3

    #@71
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    .line 2129
    const-string/jumbo v3, " flags=0x"

    #@77
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    .line 2130
    iget v3, p0, Landroid/app/Notification;->flags:I

    #@7c
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@7f
    move-result-object v3

    #@80
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    .line 2131
    const-string/jumbo v3, " color=0x%08x"

    #@86
    const/4 v4, 0x1

    #@87
    new-array v4, v4, [Ljava/lang/Object;

    #@89
    iget v5, p0, Landroid/app/Notification;->color:I

    #@8b
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8e
    move-result-object v5

    #@8f
    aput-object v5, v4, v6

    #@91
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@94
    move-result-object v3

    #@95
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    .line 2132
    iget-object v3, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    #@9a
    if-eqz v3, :cond_1

    #@9c
    .line 2133
    const-string/jumbo v3, " category="

    #@9f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    .line 2134
    iget-object v3, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    #@a4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    .line 2136
    :cond_1
    iget-object v3, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    #@a9
    if-eqz v3, :cond_2

    #@ab
    .line 2137
    const-string/jumbo v3, " groupKey="

    #@ae
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    .line 2138
    iget-object v3, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    #@b3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    .line 2140
    :cond_2
    iget-object v3, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    #@b8
    if-eqz v3, :cond_3

    #@ba
    .line 2141
    const-string/jumbo v3, " sortKey="

    #@bd
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    .line 2142
    iget-object v3, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    #@c2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    .line 2144
    :cond_3
    iget-object v3, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    #@c7
    if-eqz v3, :cond_4

    #@c9
    .line 2145
    const-string/jumbo v3, " actions="

    #@cc
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf
    .line 2146
    iget-object v3, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    #@d1
    array-length v3, v3

    #@d2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d5
    .line 2148
    :cond_4
    const-string/jumbo v3, " vis="

    #@d8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    .line 2149
    iget v3, p0, Landroid/app/Notification;->visibility:I

    #@dd
    invoke-static {v3}, Landroid/app/Notification;->visibilityToString(I)Ljava/lang/String;

    #@e0
    move-result-object v3

    #@e1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e4
    .line 2150
    iget-object v3, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    #@e6
    if-eqz v3, :cond_5

    #@e8
    .line 2151
    const-string/jumbo v3, " publicVersion="

    #@eb
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    .line 2152
    iget-object v3, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    #@f0
    invoke-virtual {v3}, Landroid/app/Notification;->toString()Ljava/lang/String;

    #@f3
    move-result-object v3

    #@f4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f7
    .line 2154
    :cond_5
    const-string/jumbo v3, ")"

    #@fa
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fd
    .line 2155
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@100
    move-result-object v3

    #@101
    return-object v3

    #@102
    .line 2097
    :cond_6
    const-string/jumbo v3, "null"

    #@105
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@108
    goto/16 :goto_0

    #@10a
    .line 2102
    :cond_7
    iget-object v3, p0, Landroid/app/Notification;->vibrate:[J

    #@10c
    if-eqz v3, :cond_a

    #@10e
    .line 2103
    iget-object v3, p0, Landroid/app/Notification;->vibrate:[J

    #@110
    array-length v3, v3

    #@111
    add-int/lit8 v0, v3, -0x1

    #@113
    .line 2104
    .local v0, "N":I
    const-string/jumbo v3, "["

    #@116
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@119
    .line 2105
    const/4 v1, 0x0

    #@11a
    .local v1, "i":I
    :goto_3
    if-ge v1, v0, :cond_8

    #@11c
    .line 2106
    iget-object v3, p0, Landroid/app/Notification;->vibrate:[J

    #@11e
    aget-wide v4, v3, v1

    #@120
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@123
    .line 2107
    const/16 v3, 0x2c

    #@125
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@128
    .line 2105
    add-int/lit8 v1, v1, 0x1

    #@12a
    goto :goto_3

    #@12b
    .line 2109
    :cond_8
    const/4 v3, -0x1

    #@12c
    if-eq v0, v3, :cond_9

    #@12e
    .line 2110
    iget-object v3, p0, Landroid/app/Notification;->vibrate:[J

    #@130
    aget-wide v4, v3, v0

    #@132
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@135
    .line 2112
    :cond_9
    const-string/jumbo v3, "]"

    #@138
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13b
    goto/16 :goto_1

    #@13d
    .line 2114
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_a
    const-string/jumbo v3, "null"

    #@140
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@143
    goto/16 :goto_1

    #@145
    .line 2119
    :cond_b
    iget-object v3, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    #@147
    if-eqz v3, :cond_c

    #@149
    .line 2120
    iget-object v3, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    #@14b
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@14e
    move-result-object v3

    #@14f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@152
    goto/16 :goto_2

    #@154
    .line 2122
    :cond_c
    const-string/jumbo v3, "null"

    #@157
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15a
    goto/16 :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1856
    iget-object v1, p0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    #@3
    if-nez v1, :cond_2

    #@5
    const/4 v0, 0x1

    #@6
    .line 1857
    .local v0, "collectPendingIntents":Z
    :goto_0
    if-eqz v0, :cond_0

    #@8
    .line 1859
    new-instance v1, Landroid/app/Notification$-void_writeToParcel_android_os_Parcel_parcel_int_flags_LambdaImpl0;

    #@a
    invoke-direct {v1, p0, p1}, Landroid/app/Notification$-void_writeToParcel_android_os_Parcel_parcel_int_flags_LambdaImpl0;-><init>(Landroid/app/Notification;Landroid/os/Parcel;)V

    #@d
    .line 1858
    invoke-static {v1}, Landroid/app/PendingIntent;->setOnMarshaledListener(Landroid/app/PendingIntent$OnMarshaledListener;)V

    #@10
    .line 1871
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/app/Notification;->writeToParcelImpl(Landroid/os/Parcel;I)V

    #@13
    .line 1873
    iget-object v1, p0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    #@15
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 1875
    if-eqz v0, :cond_1

    #@1a
    .line 1876
    invoke-static {v2}, Landroid/app/PendingIntent;->setOnMarshaledListener(Landroid/app/PendingIntent$OnMarshaledListener;)V

    #@1d
    .line 1848
    :cond_1
    return-void

    #@1e
    .line 1856
    .end local v0    # "collectPendingIntents":Z
    :cond_2
    const/4 v0, 0x0

    #@1f
    goto :goto_0

    #@20
    .line 1874
    .restart local v0    # "collectPendingIntents":Z
    :catchall_0
    move-exception v1

    #@21
    .line 1875
    if-eqz v0, :cond_3

    #@23
    .line 1876
    invoke-static {v2}, Landroid/app/PendingIntent;->setOnMarshaledListener(Landroid/app/PendingIntent$OnMarshaledListener;)V

    #@26
    .line 1874
    :cond_3
    throw v1
.end method
