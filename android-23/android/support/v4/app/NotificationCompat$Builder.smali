.class public Landroid/support/v4/app/NotificationCompat$Builder;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final MAX_CHARSEQUENCE_LENGTH:I = 0x1400


# instance fields
.field public mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/NotificationCompat$Action;",
            ">;"
        }
    .end annotation
.end field

.field mCategory:Ljava/lang/String;

.field mColor:I

.field public mContentInfo:Ljava/lang/CharSequence;

.field mContentIntent:Landroid/app/PendingIntent;

.field public mContentText:Ljava/lang/CharSequence;

.field public mContentTitle:Ljava/lang/CharSequence;

.field public mContext:Landroid/content/Context;

.field mExtras:Landroid/os/Bundle;

.field mFullScreenIntent:Landroid/app/PendingIntent;

.field mGroupKey:Ljava/lang/String;

.field mGroupSummary:Z

.field public mLargeIcon:Landroid/graphics/Bitmap;

.field mLocalOnly:Z

.field public mNotification:Landroid/app/Notification;

.field public mNumber:I

.field public mPeople:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPriority:I

.field mProgress:I

.field mProgressIndeterminate:Z

.field mProgressMax:I

.field mPublicVersion:Landroid/app/Notification;

.field mShowWhen:Z

.field mSortKey:Ljava/lang/String;

.field public mStyle:Landroid/support/v4/app/NotificationCompat$Style;

.field public mSubText:Ljava/lang/CharSequence;

.field mTickerView:Landroid/widget/RemoteViews;

.field public mUseChronometer:Z

.field mVisibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 935
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 898
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mShowWhen:Z

    #@7
    .line 912
    new-instance v0, Ljava/util/ArrayList;

    #@9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@c
    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    #@e
    .line 913
    iput-boolean v4, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mLocalOnly:Z

    #@10
    .line 916
    iput v4, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mColor:I

    #@12
    .line 917
    iput v4, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mVisibility:I

    #@14
    .line 921
    new-instance v0, Landroid/app/Notification;

    #@16
    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    #@19
    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #@1b
    .line 936
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    #@1d
    .line 939
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #@1f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@22
    move-result-wide v2

    #@23
    iput-wide v2, v0, Landroid/app/Notification;->when:J

    #@25
    .line 940
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #@27
    const/4 v1, -0x1

    #@28
    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    #@2a
    .line 941
    iput v4, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mPriority:I

    #@2c
    .line 942
    new-instance v0, Ljava/util/ArrayList;

    #@2e
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@31
    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mPeople:Ljava/util/ArrayList;

    #@33
    .line 935
    return-void
.end method

.method protected static limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "cs"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/16 v1, 0x1400

    #@2
    .line 1572
    if-nez p0, :cond_0

    #@4
    return-object p0

    #@5
    .line 1573
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@8
    move-result v0

    #@9
    if-le v0, v1, :cond_1

    #@b
    .line 1574
    const/4 v0, 0x0

    #@c
    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@f
    move-result-object p0

    #@10
    .line 1576
    :cond_1
    return-object p0
.end method

.method private setFlag(IZ)V
    .locals 3
    .param p1, "mask"    # I
    .param p2, "value"    # Z

    #@0
    .prologue
    .line 1291
    if-eqz p2, :cond_0

    #@2
    .line 1292
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #@4
    iget v1, v0, Landroid/app/Notification;->flags:I

    #@6
    or-int/2addr v1, p1

    #@7
    iput v1, v0, Landroid/app/Notification;->flags:I

    #@9
    .line 1290
    :goto_0
    return-void

    #@a
    .line 1294
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #@c
    iget v1, v0, Landroid/app/Notification;->flags:I

    #@e
    not-int v2, p1

    #@f
    and-int/2addr v1, v2

    #@10
    iput v1, v0, Landroid/app/Notification;->flags:I

    #@12
    goto :goto_0
.end method


# virtual methods
.method public addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 2
    .param p1, "icon"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 1461
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    #@2
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Action;

    #@4
    invoke-direct {v1, p1, p2, p3}, Landroid/support/v4/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    #@7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a
    .line 1462
    return-object p0
.end method

.method public addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1
    .param p1, "action"    # Landroid/support/v4/app/NotificationCompat$Action;

    #@0
    .prologue
    .line 1480
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 1481
    return-object p0
.end method

.method public addExtras(Landroid/os/Bundle;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1400
    if-eqz p1, :cond_0

    #@2
    .line 1401
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    #@4
    if-nez v0, :cond_1

    #@6
    .line 1402
    new-instance v0, Landroid/os/Bundle;

    #@8
    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@b
    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    #@d
    .line 1407
    :cond_0
    :goto_0
    return-object p0

    #@e
    .line 1404
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    #@10
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    #@13
    goto :goto_0
.end method

.method public addPerson(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1343
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mPeople:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 1344
    return-object p0
.end method

.method public build()Landroid/app/Notification;
    .locals 2

    #@0
    .prologue
    .line 1561
    invoke-static {}, Landroid/support/v4/app/NotificationCompat;->-get0()Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$Builder;->getExtender()Landroid/support/v4/app/NotificationCompat$BuilderExtender;

    #@7
    move-result-object v1

    #@8
    invoke-interface {v0, p0, v1}, Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;->build(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/support/v4/app/NotificationCompat$BuilderExtender;)Landroid/app/Notification;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public extend(Landroid/support/v4/app/NotificationCompat$Extender;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0
    .param p1, "extender"    # Landroid/support/v4/app/NotificationCompat$Extender;

    #@0
    .prologue
    .line 1544
    invoke-interface {p1, p0}, Landroid/support/v4/app/NotificationCompat$Extender;->extend(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/support/v4/app/NotificationCompat$Builder;

    #@3
    .line 1545
    return-object p0
.end method

.method protected getExtender()Landroid/support/v4/app/NotificationCompat$BuilderExtender;
    .locals 1

    #@0
    .prologue
    .line 1568
    new-instance v0, Landroid/support/v4/app/NotificationCompat$BuilderExtender;

    #@2
    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$BuilderExtender;-><init>()V

    #@5
    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 1438
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1439
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    #@b
    .line 1441
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    #@d
    return-object v0
.end method

.method public getNotification()Landroid/app/Notification;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1553
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1
    .param p1, "autoCancel"    # Z

    #@0
    .prologue
    .line 1245
    const/16 v0, 0x10

    #@2
    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setFlag(IZ)V

    #@5
    .line 1246
    return-object p0
.end method

.method public setCategory(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0
    .param p1, "category"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1268
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mCategory:Ljava/lang/String;

    #@2
    .line 1269
    return-object p0
.end method

.method public setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0
    .param p1, "argb"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    #@0
    .prologue
    .line 1510
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mColor:I

    #@2
    .line 1511
    return-object p0
.end method

.method public setContent(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1
    .param p1, "views"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    .line 1070
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #@2
    iput-object p1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    #@4
    .line 1071
    return-object p0
.end method

.method public setContentInfo(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1
    .param p1, "info"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 1051
    invoke-static {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    #@6
    .line 1052
    return-object p0
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 1083
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    #@2
    .line 1084
    return-object p0
.end method

.method public setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 1019
    invoke-static {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    #@6
    .line 1020
    return-object p0
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 1011
    invoke-static {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    #@6
    .line 1012
    return-object p0
.end method

.method public setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 2
    .param p1, "defaults"    # I

    #@0
    .prologue
    .line 1283
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #@2
    iput p1, v0, Landroid/app/Notification;->defaults:I

    #@4
    .line 1284
    and-int/lit8 v0, p1, 0x4

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1285
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #@a
    iget v1, v0, Landroid/app/Notification;->flags:I

    #@c
    or-int/lit8 v1, v1, 0x1

    #@e
    iput v1, v0, Landroid/app/Notification;->flags:I

    #@10
    .line 1287
    :cond_0
    return-object p0
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 1095
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #@2
    iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    #@4
    .line 1096
    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1423
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    #@2
    .line 1424
    return-object p0
.end method

.method public setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "highPriority"    # Z

    #@0
    .prologue
    .line 1118
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    #@2
    .line 1119
    const/16 v0, 0x80

    #@4
    invoke-direct {p0, v0, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setFlag(IZ)V

    #@7
    .line 1120
    return-object p0
.end method

.method public setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0
    .param p1, "groupKey"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1359
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mGroupKey:Ljava/lang/String;

    #@2
    .line 1360
    return-object p0
.end method

.method public setGroupSummary(Z)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0
    .param p1, "isGroupSummary"    # Z

    #@0
    .prologue
    .line 1371
    iput-boolean p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mGroupSummary:Z

    #@2
    .line 1372
    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 1147
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    #@2
    .line 1148
    return-object p0
.end method

.method public setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 4
    .param p1, "argb"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p2, "onMs"    # I
    .param p3, "offMs"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1204
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #@3
    iput p1, v2, Landroid/app/Notification;->ledARGB:I

    #@5
    .line 1205
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #@7
    iput p2, v2, Landroid/app/Notification;->ledOnMS:I

    #@9
    .line 1206
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #@b
    iput p3, v2, Landroid/app/Notification;->ledOffMS:I

    #@d
    .line 1207
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #@f
    iget v2, v2, Landroid/app/Notification;->ledOnMS:I

    #@11
    if-eqz v2, :cond_1

    #@13
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #@15
    iget v2, v2, Landroid/app/Notification;->ledOffMS:I

    #@17
    if-eqz v2, :cond_1

    #@19
    const/4 v0, 0x1

    #@1a
    .line 1208
    .local v0, "showLights":Z
    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #@1c
    iget-object v3, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #@1e
    iget v3, v3, Landroid/app/Notification;->flags:I

    #@20
    and-int/lit8 v3, v3, -0x2

    #@22
    .line 1209
    if-eqz v0, :cond_0

    #@24
    const/4 v1, 0x1

    #@25
    .line 1208
    :cond_0
    or-int/2addr v1, v3

    #@26
    iput v1, v2, Landroid/app/Notification;->flags:I

    #@28
    .line 1210
    return-object p0

    #@29
    .line 1207
    .end local v0    # "showLights":Z
    :cond_1
    const/4 v0, 0x0

    #@2a
    .restart local v0    # "showLights":Z
    goto :goto_0
.end method

.method public setLocalOnly(Z)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0
    .param p1, "b"    # Z

    #@0
    .prologue
    .line 1256
    iput-boolean p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mLocalOnly:Z

    #@2
    .line 1257
    return-object p0
.end method

.method public setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0
    .param p1, "number"    # I

    #@0
    .prologue
    .line 1043
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNumber:I

    #@2
    .line 1044
    return-object p0
.end method

.method public setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1
    .param p1, "ongoing"    # Z

    #@0
    .prologue
    .line 1225
    const/4 v0, 0x2

    #@1
    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setFlag(IZ)V

    #@4
    .line 1226
    return-object p0
.end method

.method public setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1
    .param p1, "onlyAlertOnce"    # Z

    #@0
    .prologue
    .line 1234
    const/16 v0, 0x8

    #@2
    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setFlag(IZ)V

    #@5
    .line 1235
    return-object p0
.end method

.method public setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0
    .param p1, "pri"    # I

    #@0
    .prologue
    .line 1316
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mPriority:I

    #@2
    .line 1317
    return-object p0
.end method

.method public setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0
    .param p1, "max"    # I
    .param p2, "progress"    # I
    .param p3, "indeterminate"    # Z

    #@0
    .prologue
    .line 1060
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mProgressMax:I

    #@2
    .line 1061
    iput p2, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mProgress:I

    #@4
    .line 1062
    iput-boolean p3, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mProgressIndeterminate:Z

    #@6
    .line 1063
    return-object p0
.end method

.method public setPublicVersion(Landroid/app/Notification;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0
    .param p1, "n"    # Landroid/app/Notification;

    #@0
    .prologue
    .line 1535
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mPublicVersion:Landroid/app/Notification;

    #@2
    .line 1536
    return-object p0
.end method

.method public setShowWhen(Z)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0
    .param p1, "show"    # Z

    #@0
    .prologue
    .line 959
    iput-boolean p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mShowWhen:Z

    #@2
    .line 960
    return-object p0
.end method

.method public setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1
    .param p1, "icon"    # I

    #@0
    .prologue
    .line 987
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #@2
    iput p1, v0, Landroid/app/Notification;->icon:I

    #@4
    .line 988
    return-object p0
.end method

.method public setSmallIcon(II)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1
    .param p1, "icon"    # I
    .param p2, "level"    # I

    #@0
    .prologue
    .line 1002
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #@2
    iput p1, v0, Landroid/app/Notification;->icon:I

    #@4
    .line 1003
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #@6
    iput p2, v0, Landroid/app/Notification;->iconLevel:I

    #@8
    .line 1004
    return-object p0
.end method

.method public setSortKey(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0
    .param p1, "sortKey"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1388
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mSortKey:Ljava/lang/String;

    #@2
    .line 1389
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 2
    .param p1, "sound"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 1160
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #@2
    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    #@4
    .line 1161
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #@6
    const/4 v1, -0x1

    #@7
    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    #@9
    .line 1162
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;I)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1
    .param p1, "sound"    # Landroid/net/Uri;
    .param p2, "streamType"    # I

    #@0
    .prologue
    .line 1177
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #@2
    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    #@4
    .line 1178
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #@6
    iput p2, v0, Landroid/app/Notification;->audioStreamType:I

    #@8
    .line 1179
    return-object p0
.end method

.method public setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1
    .param p1, "style"    # Landroid/support/v4/app/NotificationCompat$Style;

    #@0
    .prologue
    .line 1493
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 1494
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    #@6
    .line 1495
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 1496
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    #@c
    invoke-virtual {v0, p0}, Landroid/support/v4/app/NotificationCompat$Style;->setBuilder(Landroid/support/v4/app/NotificationCompat$Builder;)V

    #@f
    .line 1499
    :cond_0
    return-object p0
.end method

.method public setSubText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 1033
    invoke-static {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    #@6
    .line 1034
    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 2
    .param p1, "tickerText"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 1128
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #@2
    invoke-static {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@5
    move-result-object v1

    #@6
    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    #@8
    .line 1129
    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 2
    .param p1, "tickerText"    # Ljava/lang/CharSequence;
    .param p2, "views"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    .line 1138
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #@2
    invoke-static {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@5
    move-result-object v1

    #@6
    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    #@8
    .line 1139
    iput-object p2, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mTickerView:Landroid/widget/RemoteViews;

    #@a
    .line 1140
    return-object p0
.end method

.method public setUsesChronometer(Z)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0
    .param p1, "b"    # Z

    #@0
    .prologue
    .line 975
    iput-boolean p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mUseChronometer:Z

    #@2
    .line 976
    return-object p0
.end method

.method public setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1
    .param p1, "pattern"    # [J

    #@0
    .prologue
    .line 1194
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #@2
    iput-object p1, v0, Landroid/app/Notification;->vibrate:[J

    #@4
    .line 1195
    return-object p0
.end method

.method public setVisibility(I)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0
    .param p1, "visibility"    # I

    #@0
    .prologue
    .line 1522
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mVisibility:I

    #@2
    .line 1523
    return-object p0
.end method

.method public setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1
    .param p1, "when"    # J

    #@0
    .prologue
    .line 950
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #@2
    iput-wide p1, v0, Landroid/app/Notification;->when:J

    #@4
    .line 951
    return-object p0
.end method
