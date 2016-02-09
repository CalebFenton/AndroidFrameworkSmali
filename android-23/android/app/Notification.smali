.class public Landroid/app/Notification;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Notification$Action;,
        Landroid/app/Notification$Builder;,
        Landroid/app/Notification$Style;,
        Landroid/app/Notification$BigPictureStyle;,
        Landroid/app/Notification$BigTextStyle;,
        Landroid/app/Notification$InboxStyle;,
        Landroid/app/Notification$MediaStyle;,
        Landroid/app/Notification$Extender;,
        Landroid/app/Notification$WearableExtender;,
        Landroid/app/Notification$CarExtender;,
        Landroid/app/Notification$BuilderRemoteViews;,
        Landroid/app/Notification$1;
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

.field public static final EXTRA_AS_HEADS_UP:Ljava/lang/String; = "headsup"

.field public static final EXTRA_BACKGROUND_IMAGE_URI:Ljava/lang/String; = "android.backgroundImageUri"

.field public static final EXTRA_BIG_TEXT:Ljava/lang/String; = "android.bigText"

.field public static final EXTRA_COMPACT_ACTIONS:Ljava/lang/String; = "android.compactActions"

.field public static final EXTRA_INFO_TEXT:Ljava/lang/String; = "android.infoText"

.field public static final EXTRA_LARGE_ICON:Ljava/lang/String; = "android.largeIcon"

.field public static final EXTRA_LARGE_ICON_BIG:Ljava/lang/String; = "android.largeIcon.big"

.field public static final EXTRA_MEDIA_SESSION:Ljava/lang/String; = "android.mediaSession"

.field public static final EXTRA_ORIGINATING_USERID:Ljava/lang/String; = "android.originatingUserId"

.field public static final EXTRA_PEOPLE:Ljava/lang/String; = "android.people"

.field public static final EXTRA_PICTURE:Ljava/lang/String; = "android.picture"

.field public static final EXTRA_PROGRESS:Ljava/lang/String; = "android.progress"

.field public static final EXTRA_PROGRESS_INDETERMINATE:Ljava/lang/String; = "android.progressIndeterminate"

.field public static final EXTRA_PROGRESS_MAX:Ljava/lang/String; = "android.progressMax"

.field public static final EXTRA_SHOW_CHRONOMETER:Ljava/lang/String; = "android.showChronometer"

.field public static final EXTRA_SHOW_WHEN:Ljava/lang/String; = "android.showWhen"

.field public static final EXTRA_SMALL_ICON:Ljava/lang/String; = "android.icon"

.field public static final EXTRA_SUB_TEXT:Ljava/lang/String; = "android.subText"

.field public static final EXTRA_SUMMARY_TEXT:Ljava/lang/String; = "android.summaryText"

.field public static final EXTRA_TEMPLATE:Ljava/lang/String; = "android.template"

.field public static final EXTRA_TEXT:Ljava/lang/String; = "android.text"

.field public static final EXTRA_TEXT_LINES:Ljava/lang/String; = "android.textLines"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "android.title"

.field public static final EXTRA_TITLE_BIG:Ljava/lang/String; = "android.title.big"

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

.field public static final HEADS_UP_ALLOWED:I = 0x1

.field public static final HEADS_UP_NEVER:I = 0x0

.field public static final HEADS_UP_REQUESTED:I = 0x2

.field public static final INTENT_CATEGORY_NOTIFICATION_PREFERENCES:Ljava/lang/String; = "android.intent.category.NOTIFICATION_PREFERENCES"

.field private static final MAX_CHARSEQUENCE_LENGTH:I = 0x1400

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

.field public audioAttributes:Landroid/media/AudioAttributes;

.field public audioStreamType:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public bigContentView:Landroid/widget/RemoteViews;

.field public category:Ljava/lang/String;

.field public color:I

.field public contentIntent:Landroid/app/PendingIntent;

.field public contentView:Landroid/widget/RemoteViews;

.field public defaults:I

.field public deleteIntent:Landroid/app/PendingIntent;

.field public extras:Landroid/os/Bundle;

.field public flags:I

.field public fullScreenIntent:Landroid/app/PendingIntent;

.field public headsUpContentView:Landroid/widget/RemoteViews;

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
.method static synthetic -get0(Landroid/app/Notification;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    #@2
    return-object v0
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

.method static synthetic -get3(Landroid/app/Notification;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    #@2
    return-object p1
.end method

.method static synthetic -set3(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;
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

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 317
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    #@2
    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    #@5
    .line 318
    const/4 v1, 0x4

    #@6
    .line 317
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    #@9
    move-result-object v0

    #@a
    .line 319
    const/4 v1, 0x5

    #@b
    .line 317
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
    .line 1765
    new-instance v0, Landroid/app/Notification$1;

    #@17
    invoke-direct {v0}, Landroid/app/Notification$1;-><init>()V

    #@1a
    .line 1764
    sput-object v0, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1c
    .line 80
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 312
    const/4 v0, -0x1

    #@5
    iput v0, p0, Landroid/app/Notification;->audioStreamType:I

    #@7
    .line 325
    sget-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    #@9
    iput-object v0, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    #@b
    .line 531
    iput v2, p0, Landroid/app/Notification;->color:I

    #@d
    .line 701
    new-instance v0, Landroid/os/Bundle;

    #@f
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@12
    iput-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@14
    .line 1367
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@17
    move-result-wide v0

    #@18
    iput-wide v0, p0, Landroid/app/Notification;->when:J

    #@1a
    .line 1368
    iput v2, p0, Landroid/app/Notification;->priority:I

    #@1c
    .line 1365
    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;J)V
    .locals 1
    .param p1, "icon"    # I
    .param p2, "tickerText"    # Ljava/lang/CharSequence;
    .param p3, "when"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 312
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/app/Notification;->audioStreamType:I

    #@6
    .line 325
    sget-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    #@8
    iput-object v0, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    #@a
    .line 531
    const/4 v0, 0x0

    #@b
    iput v0, p0, Landroid/app/Notification;->color:I

    #@d
    .line 701
    new-instance v0, Landroid/os/Bundle;

    #@f
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@12
    iput-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@14
    .line 1402
    iput p1, p0, Landroid/app/Notification;->icon:I

    #@16
    .line 1403
    iput-object p2, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    #@18
    .line 1404
    iput-wide p3, p0, Landroid/app/Notification;->when:J

    #@1a
    .line 1400
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
    .line 1374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 312
    const/4 v0, -0x1

    #@5
    iput v0, p0, Landroid/app/Notification;->audioStreamType:I

    #@7
    .line 325
    sget-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    #@9
    iput-object v0, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    #@b
    .line 531
    iput v1, p0, Landroid/app/Notification;->color:I

    #@d
    .line 701
    new-instance v0, Landroid/os/Bundle;

    #@f
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@12
    iput-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@14
    .line 1377
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
    .line 1383
    invoke-static {p1, v1, p8, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@30
    move-result-object v1

    #@31
    .line 1377
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->buildInto(Landroid/app/Notification;)Landroid/app/Notification;

    #@38
    .line 1375
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 312
    const/4 v1, -0x1

    #@5
    iput v1, p0, Landroid/app/Notification;->audioStreamType:I

    #@7
    .line 325
    sget-object v1, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    #@9
    iput-object v1, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    #@b
    .line 531
    iput v2, p0, Landroid/app/Notification;->color:I

    #@d
    .line 701
    new-instance v1, Landroid/os/Bundle;

    #@f
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@12
    iput-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@14
    .line 1412
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@17
    move-result v0

    #@18
    .line 1414
    .local v0, "version":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@1b
    move-result-wide v2

    #@1c
    iput-wide v2, p0, Landroid/app/Notification;->when:J

    #@1e
    .line 1415
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_0

    #@24
    .line 1416
    sget-object v1, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    #@26
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@29
    move-result-object v1

    #@2a
    check-cast v1, Landroid/graphics/drawable/Icon;

    #@2c
    iput-object v1, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    #@2e
    .line 1417
    iget-object v1, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    #@30
    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getType()I

    #@33
    move-result v1

    #@34
    const/4 v2, 0x2

    #@35
    if-ne v1, v2, :cond_0

    #@37
    .line 1418
    iget-object v1, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    #@39
    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getResId()I

    #@3c
    move-result v1

    #@3d
    iput v1, p0, Landroid/app/Notification;->icon:I

    #@3f
    .line 1421
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@42
    move-result v1

    #@43
    iput v1, p0, Landroid/app/Notification;->number:I

    #@45
    .line 1422
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@48
    move-result v1

    #@49
    if-eqz v1, :cond_1

    #@4b
    .line 1423
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4d
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@50
    move-result-object v1

    #@51
    check-cast v1, Landroid/app/PendingIntent;

    #@53
    iput-object v1, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    #@55
    .line 1425
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@58
    move-result v1

    #@59
    if-eqz v1, :cond_2

    #@5b
    .line 1426
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5d
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@60
    move-result-object v1

    #@61
    check-cast v1, Landroid/app/PendingIntent;

    #@63
    iput-object v1, p0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    #@65
    .line 1428
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@68
    move-result v1

    #@69
    if-eqz v1, :cond_3

    #@6b
    .line 1429
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@6d
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@70
    move-result-object v1

    #@71
    check-cast v1, Ljava/lang/CharSequence;

    #@73
    iput-object v1, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    #@75
    .line 1431
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@78
    move-result v1

    #@79
    if-eqz v1, :cond_4

    #@7b
    .line 1432
    sget-object v1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7d
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@80
    move-result-object v1

    #@81
    check-cast v1, Landroid/widget/RemoteViews;

    #@83
    iput-object v1, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    #@85
    .line 1434
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@88
    move-result v1

    #@89
    if-eqz v1, :cond_5

    #@8b
    .line 1435
    sget-object v1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    #@8d
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@90
    move-result-object v1

    #@91
    check-cast v1, Landroid/widget/RemoteViews;

    #@93
    iput-object v1, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    #@95
    .line 1437
    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@98
    move-result v1

    #@99
    if-eqz v1, :cond_6

    #@9b
    .line 1438
    sget-object v1, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    #@9d
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@a0
    move-result-object v1

    #@a1
    check-cast v1, Landroid/graphics/drawable/Icon;

    #@a3
    iput-object v1, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    #@a5
    .line 1440
    :cond_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@a8
    move-result v1

    #@a9
    iput v1, p0, Landroid/app/Notification;->defaults:I

    #@ab
    .line 1441
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@ae
    move-result v1

    #@af
    iput v1, p0, Landroid/app/Notification;->flags:I

    #@b1
    .line 1442
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@b4
    move-result v1

    #@b5
    if-eqz v1, :cond_7

    #@b7
    .line 1443
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@b9
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@bc
    move-result-object v1

    #@bd
    check-cast v1, Landroid/net/Uri;

    #@bf
    iput-object v1, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    #@c1
    .line 1446
    :cond_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c4
    move-result v1

    #@c5
    iput v1, p0, Landroid/app/Notification;->audioStreamType:I

    #@c7
    .line 1447
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@ca
    move-result v1

    #@cb
    if-eqz v1, :cond_8

    #@cd
    .line 1448
    sget-object v1, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    #@cf
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@d2
    move-result-object v1

    #@d3
    check-cast v1, Landroid/media/AudioAttributes;

    #@d5
    iput-object v1, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    #@d7
    .line 1450
    :cond_8
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    #@da
    move-result-object v1

    #@db
    iput-object v1, p0, Landroid/app/Notification;->vibrate:[J

    #@dd
    .line 1451
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@e0
    move-result v1

    #@e1
    iput v1, p0, Landroid/app/Notification;->ledARGB:I

    #@e3
    .line 1452
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@e6
    move-result v1

    #@e7
    iput v1, p0, Landroid/app/Notification;->ledOnMS:I

    #@e9
    .line 1453
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@ec
    move-result v1

    #@ed
    iput v1, p0, Landroid/app/Notification;->ledOffMS:I

    #@ef
    .line 1454
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@f2
    move-result v1

    #@f3
    iput v1, p0, Landroid/app/Notification;->iconLevel:I

    #@f5
    .line 1456
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@f8
    move-result v1

    #@f9
    if-eqz v1, :cond_9

    #@fb
    .line 1457
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@fd
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@100
    move-result-object v1

    #@101
    check-cast v1, Landroid/app/PendingIntent;

    #@103
    iput-object v1, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    #@105
    .line 1460
    :cond_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@108
    move-result v1

    #@109
    iput v1, p0, Landroid/app/Notification;->priority:I

    #@10b
    .line 1462
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@10e
    move-result-object v1

    #@10f
    iput-object v1, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    #@111
    .line 1464
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@114
    move-result-object v1

    #@115
    iput-object v1, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    #@117
    .line 1466
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@11a
    move-result-object v1

    #@11b
    iput-object v1, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    #@11d
    .line 1468
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@120
    move-result-object v1

    #@121
    iput-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@123
    .line 1470
    sget-object v1, Landroid/app/Notification$Action;->CREATOR:Landroid/os/Parcelable$Creator;

    #@125
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@128
    move-result-object v1

    #@129
    check-cast v1, [Landroid/app/Notification$Action;

    #@12b
    iput-object v1, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    #@12d
    .line 1472
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@130
    move-result v1

    #@131
    if-eqz v1, :cond_a

    #@133
    .line 1473
    sget-object v1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    #@135
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@138
    move-result-object v1

    #@139
    check-cast v1, Landroid/widget/RemoteViews;

    #@13b
    iput-object v1, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    #@13d
    .line 1476
    :cond_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@140
    move-result v1

    #@141
    if-eqz v1, :cond_b

    #@143
    .line 1477
    sget-object v1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    #@145
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@148
    move-result-object v1

    #@149
    check-cast v1, Landroid/widget/RemoteViews;

    #@14b
    iput-object v1, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    #@14d
    .line 1480
    :cond_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@150
    move-result v1

    #@151
    iput v1, p0, Landroid/app/Notification;->visibility:I

    #@153
    .line 1482
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@156
    move-result v1

    #@157
    if-eqz v1, :cond_c

    #@159
    .line 1483
    sget-object v1, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    #@15b
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@15e
    move-result-object v1

    #@15f
    check-cast v1, Landroid/app/Notification;

    #@161
    iput-object v1, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    #@163
    .line 1486
    :cond_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@166
    move-result v1

    #@167
    iput v1, p0, Landroid/app/Notification;->color:I

    #@169
    .line 1410
    return-void
.end method

.method private static getNotificationArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/app/Notification;
    .locals 4
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 5670
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    #@3
    move-result-object v0

    #@4
    .line 5671
    .local v0, "array":[Landroid/os/Parcelable;
    instance-of v2, v0, [Landroid/app/Notification;

    #@6
    if-nez v2, :cond_0

    #@8
    if-nez v0, :cond_1

    #@a
    .line 5672
    :cond_0
    check-cast v0, [Landroid/app/Notification;

    #@c
    .end local v0    # "array":[Landroid/os/Parcelable;
    return-object v0

    #@d
    .line 5674
    .restart local v0    # "array":[Landroid/os/Parcelable;
    :cond_1
    array-length v2, v0

    #@e
    .line 5675
    const-class v3, [Landroid/app/Notification;

    #@10
    .line 5674
    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, [Landroid/app/Notification;

    #@16
    .line 5676
    .local v1, "typedArray":[Landroid/app/Notification;
    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    #@19
    .line 5677
    return-object v1
.end method

.method public static priorityToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "pri"    # I

    #@0
    .prologue
    .line 1919
    packed-switch p0, :pswitch_data_0

    #@3
    .line 1931
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
    .line 1921
    :pswitch_0
    const-string/jumbo v0, "MIN"

    #@26
    return-object v0

    #@27
    .line 1923
    :pswitch_1
    const-string/jumbo v0, "LOW"

    #@2a
    return-object v0

    #@2b
    .line 1925
    :pswitch_2
    const-string/jumbo v0, "DEFAULT"

    #@2e
    return-object v0

    #@2f
    .line 1927
    :pswitch_3
    const-string/jumbo v0, "HIGH"

    #@32
    return-object v0

    #@33
    .line 1929
    :pswitch_4
    const-string/jumbo v0, "MAX"

    #@36
    return-object v0

    #@37
    .line 1919
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

.method public static safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "cs"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/16 v1, 0x1400

    #@2
    .line 1619
    if-nez p0, :cond_0

    #@4
    return-object p0

    #@5
    .line 1620
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@8
    move-result v0

    #@9
    if-le v0, v1, :cond_1

    #@b
    .line 1621
    const/4 v0, 0x0

    #@c
    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@f
    move-result-object p0

    #@10
    .line 1623
    :cond_1
    instance-of v0, p0, Landroid/os/Parcelable;

    #@12
    if-eqz v0, :cond_2

    #@14
    .line 1624
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
    .line 1625
    const-string/jumbo v2, " instance is a custom Parcelable and not allowed in Notification"

    #@32
    .line 1624
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
    .line 1626
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    return-object v0

    #@42
    .line 1629
    :cond_2
    return-object p0
.end method

.method public static visibilityToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "vis"    # I

    #@0
    .prologue
    .line 1903
    packed-switch p0, :pswitch_data_0

    #@3
    .line 1911
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
    .line 1905
    :pswitch_0
    const-string/jumbo v0, "PRIVATE"

    #@26
    return-object v0

    #@27
    .line 1907
    :pswitch_1
    const-string/jumbo v0, "PUBLIC"

    #@2a
    return-object v0

    #@2b
    .line 1909
    :pswitch_2
    const-string/jumbo v0, "SECRET"

    #@2e
    return-object v0

    #@2f
    .line 1903
    nop

    #@30
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public clone()Landroid/app/Notification;
    .locals 2

    #@0
    .prologue
    .line 1491
    new-instance v0, Landroid/app/Notification;

    #@2
    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    #@5
    .line 1492
    .local v0, "that":Landroid/app/Notification;
    const/4 v1, 0x1

    #@6
    invoke-virtual {p0, v0, v1}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    #@9
    .line 1493
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
    .line 1490
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
    .line 1502
    iget-wide v6, p0, Landroid/app/Notification;->when:J

    #@4
    iput-wide v6, p1, Landroid/app/Notification;->when:J

    #@6
    .line 1503
    iget-object v5, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    #@8
    iput-object v5, p1, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    #@a
    .line 1504
    iget v5, p0, Landroid/app/Notification;->number:I

    #@c
    iput v5, p1, Landroid/app/Notification;->number:I

    #@e
    .line 1507
    iget-object v5, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    #@10
    iput-object v5, p1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    #@12
    .line 1508
    iget-object v5, p0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    #@14
    iput-object v5, p1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    #@16
    .line 1509
    iget-object v5, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    #@18
    iput-object v5, p1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    #@1a
    .line 1511
    iget-object v5, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    #@1c
    if-eqz v5, :cond_0

    #@1e
    .line 1512
    iget-object v5, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    #@20
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@23
    move-result-object v5

    #@24
    iput-object v5, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    #@26
    .line 1514
    :cond_0
    if-eqz p2, :cond_1

    #@28
    iget-object v5, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    #@2a
    if-eqz v5, :cond_1

    #@2c
    .line 1515
    iget-object v5, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    #@2e
    invoke-virtual {v5}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    #@31
    move-result-object v5

    #@32
    iput-object v5, p1, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    #@34
    .line 1517
    :cond_1
    if-eqz p2, :cond_2

    #@36
    iget-object v5, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    #@38
    if-eqz v5, :cond_2

    #@3a
    .line 1518
    iget-object v5, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    #@3c
    invoke-virtual {v5}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    #@3f
    move-result-object v5

    #@40
    iput-object v5, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    #@42
    .line 1520
    :cond_2
    if-eqz p2, :cond_3

    #@44
    iget-object v5, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    #@46
    if-eqz v5, :cond_3

    #@48
    .line 1521
    iget-object v5, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    #@4a
    iput-object v5, p1, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    #@4c
    .line 1523
    :cond_3
    iget v5, p0, Landroid/app/Notification;->iconLevel:I

    #@4e
    iput v5, p1, Landroid/app/Notification;->iconLevel:I

    #@50
    .line 1524
    iget-object v5, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    #@52
    iput-object v5, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    #@54
    .line 1525
    iget v5, p0, Landroid/app/Notification;->audioStreamType:I

    #@56
    iput v5, p1, Landroid/app/Notification;->audioStreamType:I

    #@58
    .line 1526
    iget-object v5, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    #@5a
    if-eqz v5, :cond_4

    #@5c
    .line 1527
    new-instance v5, Landroid/media/AudioAttributes$Builder;

    #@5e
    iget-object v6, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    #@60
    invoke-direct {v5, v6}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    #@63
    invoke-virtual {v5}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    #@66
    move-result-object v5

    #@67
    iput-object v5, p1, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    #@69
    .line 1530
    :cond_4
    iget-object v4, p0, Landroid/app/Notification;->vibrate:[J

    #@6b
    .line 1531
    .local v4, "vibrate":[J
    if-eqz v4, :cond_5

    #@6d
    .line 1532
    array-length v0, v4

    #@6e
    .line 1533
    .local v0, "N":I
    new-array v3, v0, [J

    #@70
    iput-object v3, p1, Landroid/app/Notification;->vibrate:[J

    #@72
    .line 1534
    .local v3, "vib":[J
    invoke-static {v4, v9, v3, v9, v0}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@75
    .line 1537
    .end local v0    # "N":I
    .end local v3    # "vib":[J
    :cond_5
    iget v5, p0, Landroid/app/Notification;->ledARGB:I

    #@77
    iput v5, p1, Landroid/app/Notification;->ledARGB:I

    #@79
    .line 1538
    iget v5, p0, Landroid/app/Notification;->ledOnMS:I

    #@7b
    iput v5, p1, Landroid/app/Notification;->ledOnMS:I

    #@7d
    .line 1539
    iget v5, p0, Landroid/app/Notification;->ledOffMS:I

    #@7f
    iput v5, p1, Landroid/app/Notification;->ledOffMS:I

    #@81
    .line 1540
    iget v5, p0, Landroid/app/Notification;->defaults:I

    #@83
    iput v5, p1, Landroid/app/Notification;->defaults:I

    #@85
    .line 1542
    iget v5, p0, Landroid/app/Notification;->flags:I

    #@87
    iput v5, p1, Landroid/app/Notification;->flags:I

    #@89
    .line 1544
    iget v5, p0, Landroid/app/Notification;->priority:I

    #@8b
    iput v5, p1, Landroid/app/Notification;->priority:I

    #@8d
    .line 1546
    iget-object v5, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    #@8f
    iput-object v5, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    #@91
    .line 1548
    iget-object v5, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    #@93
    iput-object v5, p1, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    #@95
    .line 1550
    iget-object v5, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    #@97
    iput-object v5, p1, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    #@99
    .line 1552
    iget-object v5, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@9b
    if-eqz v5, :cond_6

    #@9d
    .line 1554
    :try_start_0
    new-instance v5, Landroid/os/Bundle;

    #@9f
    iget-object v6, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@a1
    invoke-direct {v5, v6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@a4
    iput-object v5, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@a6
    .line 1556
    iget-object v5, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@a8
    invoke-virtual {v5}, Landroid/os/Bundle;->size()I
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    #@ab
    .line 1563
    :cond_6
    :goto_0
    iget-object v5, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    #@ad
    if-eqz v5, :cond_7

    #@af
    .line 1564
    iget-object v5, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    #@b1
    array-length v5, v5

    #@b2
    new-array v5, v5, [Landroid/app/Notification$Action;

    #@b4
    iput-object v5, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    #@b6
    .line 1565
    const/4 v2, 0x0

    #@b7
    .local v2, "i":I
    :goto_1
    iget-object v5, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    #@b9
    array-length v5, v5

    #@ba
    if-ge v2, v5, :cond_7

    #@bc
    .line 1566
    iget-object v5, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    #@be
    iget-object v6, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    #@c0
    aget-object v6, v6, v2

    #@c2
    invoke-virtual {v6}, Landroid/app/Notification$Action;->clone()Landroid/app/Notification$Action;

    #@c5
    move-result-object v6

    #@c6
    aput-object v6, v5, v2

    #@c8
    .line 1565
    add-int/lit8 v2, v2, 0x1

    #@ca
    goto :goto_1

    #@cb
    .line 1557
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    #@cc
    .line 1558
    .local v1, "e":Landroid/os/BadParcelableException;
    const-string/jumbo v5, "Notification"

    #@cf
    new-instance v6, Ljava/lang/StringBuilder;

    #@d1
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@d4
    const-string/jumbo v7, "could not unparcel extras from notification: "

    #@d7
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v6

    #@db
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v6

    #@df
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e2
    move-result-object v6

    #@e3
    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@e6
    .line 1559
    iput-object v8, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@e8
    goto :goto_0

    #@e9
    .line 1570
    .end local v1    # "e":Landroid/os/BadParcelableException;
    :cond_7
    if-eqz p2, :cond_8

    #@eb
    iget-object v5, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    #@ed
    if-eqz v5, :cond_8

    #@ef
    .line 1571
    iget-object v5, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    #@f1
    invoke-virtual {v5}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    #@f4
    move-result-object v5

    #@f5
    iput-object v5, p1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    #@f7
    .line 1574
    :cond_8
    if-eqz p2, :cond_9

    #@f9
    iget-object v5, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    #@fb
    if-eqz v5, :cond_9

    #@fd
    .line 1575
    iget-object v5, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    #@ff
    invoke-virtual {v5}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    #@102
    move-result-object v5

    #@103
    iput-object v5, p1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    #@105
    .line 1578
    :cond_9
    iget v5, p0, Landroid/app/Notification;->visibility:I

    #@107
    iput v5, p1, Landroid/app/Notification;->visibility:I

    #@109
    .line 1580
    iget-object v5, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    #@10b
    if-eqz v5, :cond_a

    #@10d
    .line 1581
    new-instance v5, Landroid/app/Notification;

    #@10f
    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    #@112
    iput-object v5, p1, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    #@114
    .line 1582
    iget-object v5, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    #@116
    iget-object v6, p1, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    #@118
    invoke-virtual {v5, v6, p2}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    #@11b
    .line 1585
    :cond_a
    iget v5, p0, Landroid/app/Notification;->color:I

    #@11d
    iput v5, p1, Landroid/app/Notification;->color:I

    #@11f
    .line 1587
    if-nez p2, :cond_b

    #@121
    .line 1588
    invoke-virtual {p1}, Landroid/app/Notification;->lightenPayload()V

    #@124
    .line 1501
    :cond_b
    return-void
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 1633
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getGroup()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 672
    iget-object v0, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getLargeIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    #@0
    .prologue
    .line 1961
    iget-object v0, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    #@2
    return-object v0
.end method

.method public getSmallIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    #@0
    .prologue
    .line 1944
    iget-object v0, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    #@2
    return-object v0
.end method

.method public getSortKey()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 690
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
    .line 1984
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
    .line 1977
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

.method public isValid()Z
    .locals 2

    #@0
    .prologue
    .line 1970
    iget-object v0, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    #@2
    if-nez v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@6
    const-string/jumbo v1, "android.rebuild.contentView"

    #@9
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@c
    move-result v0

    #@d
    :goto_0
    return v0

    #@e
    :cond_0
    const/4 v0, 0x1

    #@f
    goto :goto_0
.end method

.method public final lightenPayload()V
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1598
    iput-object v0, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    #@3
    .line 1599
    iput-object v0, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    #@5
    .line 1600
    iput-object v0, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    #@7
    .line 1601
    iput-object v0, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    #@9
    .line 1602
    iput-object v0, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    #@b
    .line 1603
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 1604
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@11
    const-string/jumbo v1, "android.largeIcon"

    #@14
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@17
    .line 1605
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@19
    const-string/jumbo v1, "android.largeIcon.big"

    #@1c
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@1f
    .line 1606
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@21
    const-string/jumbo v1, "android.picture"

    #@24
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@27
    .line 1607
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@29
    const-string/jumbo v1, "android.bigText"

    #@2c
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@2f
    .line 1609
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@31
    const-string/jumbo v1, "android.rebuild"

    #@34
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@37
    .line 1597
    :cond_0
    return-void
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
    .line 1800
    new-instance v0, Landroid/app/Notification$Builder;

    #@2
    invoke-direct {v0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@5
    .line 1804
    .local v0, "builder":Landroid/app/Notification$Builder;
    iget-wide v2, p0, Landroid/app/Notification;->when:J

    #@7
    invoke-virtual {v0, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    #@a
    .line 1805
    iget v1, p0, Landroid/app/Notification;->icon:I

    #@c
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@f
    .line 1806
    iget v1, p0, Landroid/app/Notification;->priority:I

    #@11
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    #@14
    .line 1807
    iget-object v1, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    #@16
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@19
    .line 1808
    iget v1, p0, Landroid/app/Notification;->number:I

    #@1b
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    #@1e
    .line 1809
    iget v1, p0, Landroid/app/Notification;->color:I

    #@20
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    #@23
    .line 1810
    iget v1, p0, Landroid/app/Notification;->flags:I

    #@25
    invoke-static {v0, v1}, Landroid/app/Notification$Builder;->-set2(Landroid/app/Notification$Builder;I)I

    #@28
    .line 1811
    iget-object v1, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    #@2a
    iget v2, p0, Landroid/app/Notification;->audioStreamType:I

    #@2c
    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;

    #@2f
    .line 1812
    iget v1, p0, Landroid/app/Notification;->defaults:I

    #@31
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    #@34
    .line 1813
    iget-object v1, p0, Landroid/app/Notification;->vibrate:[J

    #@36
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    #@39
    .line 1814
    iget-object v1, p0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    #@3b
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@3e
    .line 1817
    if-eqz p2, :cond_0

    #@40
    .line 1818
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@43
    .line 1820
    :cond_0
    if-eqz p3, :cond_1

    #@45
    .line 1821
    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@48
    .line 1823
    :cond_1
    invoke-virtual {v0, p4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@4b
    .line 1824
    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->buildInto(Landroid/app/Notification;)Landroid/app/Notification;

    #@4e
    .line 1799
    return-void
.end method

.method public setSmallIcon(Landroid/graphics/drawable/Icon;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    #@0
    .prologue
    .line 1952
    iput-object p1, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    #@2
    .line 1951
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1829
    new-instance v2, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    .line 1830
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "Notification(pri="

    #@9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    .line 1831
    iget v3, p0, Landroid/app/Notification;->priority:I

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    .line 1832
    const-string/jumbo v3, " contentView="

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    .line 1833
    iget-object v3, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    #@19
    if-eqz v3, :cond_6

    #@1b
    .line 1834
    iget-object v3, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    #@1d
    invoke-virtual {v3}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    .line 1835
    const-string/jumbo v3, "/0x"

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    .line 1836
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
    .line 1840
    :goto_0
    const-string/jumbo v3, " vibrate="

    #@3a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    .line 1841
    iget v3, p0, Landroid/app/Notification;->defaults:I

    #@3f
    and-int/lit8 v3, v3, 0x2

    #@41
    if-eqz v3, :cond_7

    #@43
    .line 1842
    const-string/jumbo v3, "default"

    #@46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    .line 1857
    :goto_1
    const-string/jumbo v3, " sound="

    #@4c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    .line 1858
    iget v3, p0, Landroid/app/Notification;->defaults:I

    #@51
    and-int/lit8 v3, v3, 0x1

    #@53
    if-eqz v3, :cond_b

    #@55
    .line 1859
    const-string/jumbo v3, "default"

    #@58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    .line 1865
    :goto_2
    iget-object v3, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    #@5d
    if-eqz v3, :cond_0

    #@5f
    .line 1866
    const-string/jumbo v3, " tick"

    #@62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    .line 1868
    :cond_0
    const-string/jumbo v3, " defaults=0x"

    #@68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    .line 1869
    iget v3, p0, Landroid/app/Notification;->defaults:I

    #@6d
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@70
    move-result-object v3

    #@71
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    .line 1870
    const-string/jumbo v3, " flags=0x"

    #@77
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    .line 1871
    iget v3, p0, Landroid/app/Notification;->flags:I

    #@7c
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@7f
    move-result-object v3

    #@80
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    .line 1872
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
    .line 1873
    iget-object v3, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    #@9a
    if-eqz v3, :cond_1

    #@9c
    .line 1874
    const-string/jumbo v3, " category="

    #@9f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    .line 1875
    iget-object v3, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    #@a4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    .line 1877
    :cond_1
    iget-object v3, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    #@a9
    if-eqz v3, :cond_2

    #@ab
    .line 1878
    const-string/jumbo v3, " groupKey="

    #@ae
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    .line 1879
    iget-object v3, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    #@b3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    .line 1881
    :cond_2
    iget-object v3, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    #@b8
    if-eqz v3, :cond_3

    #@ba
    .line 1882
    const-string/jumbo v3, " sortKey="

    #@bd
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    .line 1883
    iget-object v3, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    #@c2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    .line 1885
    :cond_3
    iget-object v3, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    #@c7
    if-eqz v3, :cond_4

    #@c9
    .line 1886
    const-string/jumbo v3, " actions="

    #@cc
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf
    .line 1887
    iget-object v3, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    #@d1
    array-length v3, v3

    #@d2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d5
    .line 1889
    :cond_4
    const-string/jumbo v3, " vis="

    #@d8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    .line 1890
    iget v3, p0, Landroid/app/Notification;->visibility:I

    #@dd
    invoke-static {v3}, Landroid/app/Notification;->visibilityToString(I)Ljava/lang/String;

    #@e0
    move-result-object v3

    #@e1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e4
    .line 1891
    iget-object v3, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    #@e6
    if-eqz v3, :cond_5

    #@e8
    .line 1892
    const-string/jumbo v3, " publicVersion="

    #@eb
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    .line 1893
    iget-object v3, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    #@f0
    invoke-virtual {v3}, Landroid/app/Notification;->toString()Ljava/lang/String;

    #@f3
    move-result-object v3

    #@f4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f7
    .line 1895
    :cond_5
    const-string/jumbo v3, ")"

    #@fa
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fd
    .line 1896
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@100
    move-result-object v3

    #@101
    return-object v3

    #@102
    .line 1838
    :cond_6
    const-string/jumbo v3, "null"

    #@105
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@108
    goto/16 :goto_0

    #@10a
    .line 1843
    :cond_7
    iget-object v3, p0, Landroid/app/Notification;->vibrate:[J

    #@10c
    if-eqz v3, :cond_a

    #@10e
    .line 1844
    iget-object v3, p0, Landroid/app/Notification;->vibrate:[J

    #@110
    array-length v3, v3

    #@111
    add-int/lit8 v0, v3, -0x1

    #@113
    .line 1845
    .local v0, "N":I
    const-string/jumbo v3, "["

    #@116
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@119
    .line 1846
    const/4 v1, 0x0

    #@11a
    .local v1, "i":I
    :goto_3
    if-ge v1, v0, :cond_8

    #@11c
    .line 1847
    iget-object v3, p0, Landroid/app/Notification;->vibrate:[J

    #@11e
    aget-wide v4, v3, v1

    #@120
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@123
    .line 1848
    const/16 v3, 0x2c

    #@125
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@128
    .line 1846
    add-int/lit8 v1, v1, 0x1

    #@12a
    goto :goto_3

    #@12b
    .line 1850
    :cond_8
    const/4 v3, -0x1

    #@12c
    if-eq v0, v3, :cond_9

    #@12e
    .line 1851
    iget-object v3, p0, Landroid/app/Notification;->vibrate:[J

    #@130
    aget-wide v4, v3, v0

    #@132
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@135
    .line 1853
    :cond_9
    const-string/jumbo v3, "]"

    #@138
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13b
    goto/16 :goto_1

    #@13d
    .line 1855
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_a
    const-string/jumbo v3, "null"

    #@140
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@143
    goto/16 :goto_1

    #@145
    .line 1860
    :cond_b
    iget-object v3, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    #@147
    if-eqz v3, :cond_c

    #@149
    .line 1861
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
    .line 1863
    :cond_c
    const-string/jumbo v3, "null"

    #@157
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15a
    goto/16 :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1641
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 1643
    iget-wide v0, p0, Landroid/app/Notification;->when:J

    #@7
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@a
    .line 1644
    iget-object v0, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    #@c
    if-nez v0, :cond_0

    #@e
    iget v0, p0, Landroid/app/Notification;->icon:I

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 1646
    const-string/jumbo v0, ""

    #@15
    iget v1, p0, Landroid/app/Notification;->icon:I

    #@17
    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    #@1a
    move-result-object v0

    #@1b
    iput-object v0, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    #@1d
    .line 1648
    :cond_0
    iget-object v0, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    #@1f
    if-eqz v0, :cond_1

    #@21
    .line 1649
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 1650
    iget-object v0, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    #@26
    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    #@29
    .line 1654
    :goto_0
    iget v0, p0, Landroid/app/Notification;->number:I

    #@2b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2e
    .line 1655
    iget-object v0, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    #@30
    if-eqz v0, :cond_2

    #@32
    .line 1656
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@35
    .line 1657
    iget-object v0, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    #@37
    invoke-virtual {v0, p1, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    #@3a
    .line 1661
    :goto_1
    iget-object v0, p0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    #@3c
    if-eqz v0, :cond_3

    #@3e
    .line 1662
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@41
    .line 1663
    iget-object v0, p0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    #@43
    invoke-virtual {v0, p1, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    #@46
    .line 1667
    :goto_2
    iget-object v0, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    #@48
    if-eqz v0, :cond_4

    #@4a
    .line 1668
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@4d
    .line 1669
    iget-object v0, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    #@4f
    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@52
    .line 1673
    :goto_3
    iget-object v0, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    #@54
    if-eqz v0, :cond_5

    #@56
    .line 1674
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@59
    .line 1675
    iget-object v0, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    #@5b
    invoke-virtual {v0, p1, v2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    #@5e
    .line 1679
    :goto_4
    iget-object v0, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    #@60
    if-eqz v0, :cond_6

    #@62
    .line 1680
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@65
    .line 1681
    iget-object v0, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    #@67
    invoke-virtual {v0, p1, v2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    #@6a
    .line 1685
    :goto_5
    iget-object v0, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    #@6c
    if-eqz v0, :cond_7

    #@6e
    .line 1686
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@71
    .line 1687
    iget-object v0, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    #@73
    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    #@76
    .line 1692
    :goto_6
    iget v0, p0, Landroid/app/Notification;->defaults:I

    #@78
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@7b
    .line 1693
    iget v0, p0, Landroid/app/Notification;->flags:I

    #@7d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@80
    .line 1695
    iget-object v0, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    #@82
    if-eqz v0, :cond_8

    #@84
    .line 1696
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@87
    .line 1697
    iget-object v0, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    #@89
    invoke-virtual {v0, p1, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@8c
    .line 1701
    :goto_7
    iget v0, p0, Landroid/app/Notification;->audioStreamType:I

    #@8e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@91
    .line 1703
    iget-object v0, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    #@93
    if-eqz v0, :cond_9

    #@95
    .line 1704
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@98
    .line 1705
    iget-object v0, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    #@9a
    invoke-virtual {v0, p1, v2}, Landroid/media/AudioAttributes;->writeToParcel(Landroid/os/Parcel;I)V

    #@9d
    .line 1710
    :goto_8
    iget-object v0, p0, Landroid/app/Notification;->vibrate:[J

    #@9f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    #@a2
    .line 1711
    iget v0, p0, Landroid/app/Notification;->ledARGB:I

    #@a4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a7
    .line 1712
    iget v0, p0, Landroid/app/Notification;->ledOnMS:I

    #@a9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@ac
    .line 1713
    iget v0, p0, Landroid/app/Notification;->ledOffMS:I

    #@ae
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@b1
    .line 1714
    iget v0, p0, Landroid/app/Notification;->iconLevel:I

    #@b3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@b6
    .line 1716
    iget-object v0, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    #@b8
    if-eqz v0, :cond_a

    #@ba
    .line 1717
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@bd
    .line 1718
    iget-object v0, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    #@bf
    invoke-virtual {v0, p1, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    #@c2
    .line 1723
    :goto_9
    iget v0, p0, Landroid/app/Notification;->priority:I

    #@c4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@c7
    .line 1725
    iget-object v0, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    #@c9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@cc
    .line 1727
    iget-object v0, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    #@ce
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d1
    .line 1729
    iget-object v0, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    #@d3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d6
    .line 1731
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@d8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@db
    .line 1733
    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    #@dd
    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@e0
    .line 1735
    iget-object v0, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    #@e2
    if-eqz v0, :cond_b

    #@e4
    .line 1736
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@e7
    .line 1737
    iget-object v0, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    #@e9
    invoke-virtual {v0, p1, v2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    #@ec
    .line 1742
    :goto_a
    iget-object v0, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    #@ee
    if-eqz v0, :cond_c

    #@f0
    .line 1743
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@f3
    .line 1744
    iget-object v0, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    #@f5
    invoke-virtual {v0, p1, v2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    #@f8
    .line 1749
    :goto_b
    iget v0, p0, Landroid/app/Notification;->visibility:I

    #@fa
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@fd
    .line 1751
    iget-object v0, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    #@ff
    if-eqz v0, :cond_d

    #@101
    .line 1752
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@104
    .line 1753
    iget-object v0, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    #@106
    invoke-virtual {v0, p1, v2}, Landroid/app/Notification;->writeToParcel(Landroid/os/Parcel;I)V

    #@109
    .line 1758
    :goto_c
    iget v0, p0, Landroid/app/Notification;->color:I

    #@10b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@10e
    .line 1639
    return-void

    #@10f
    .line 1652
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@112
    goto/16 :goto_0

    #@114
    .line 1659
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@117
    goto/16 :goto_1

    #@119
    .line 1665
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@11c
    goto/16 :goto_2

    #@11e
    .line 1671
    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@121
    goto/16 :goto_3

    #@123
    .line 1677
    :cond_5
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@126
    goto/16 :goto_4

    #@128
    .line 1683
    :cond_6
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@12b
    goto/16 :goto_5

    #@12d
    .line 1689
    :cond_7
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@130
    goto/16 :goto_6

    #@132
    .line 1699
    :cond_8
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@135
    goto/16 :goto_7

    #@137
    .line 1707
    :cond_9
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@13a
    goto/16 :goto_8

    #@13c
    .line 1720
    :cond_a
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@13f
    goto :goto_9

    #@140
    .line 1739
    :cond_b
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@143
    goto :goto_a

    #@144
    .line 1746
    :cond_c
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@147
    goto :goto_b

    #@148
    .line 1755
    :cond_d
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14b
    goto :goto_c
.end method
