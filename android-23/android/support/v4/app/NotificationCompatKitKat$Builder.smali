.class public Landroid/support/v4/app/NotificationCompatKitKat$Builder;
.super Ljava/lang/Object;
.source "NotificationCompatKitKat.java"

# interfaces
.implements Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;
.implements Landroid/support/v4/app/NotificationBuilderWithActions;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompatKitKat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private b:Landroid/app/Notification$Builder;

.field private mActionExtrasList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mExtras:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZZILjava/lang/CharSequence;ZLjava/util/ArrayList;Landroid/os/Bundle;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "n"    # Landroid/app/Notification;
    .param p3, "contentTitle"    # Ljava/lang/CharSequence;
    .param p4, "contentText"    # Ljava/lang/CharSequence;
    .param p5, "contentInfo"    # Ljava/lang/CharSequence;
    .param p6, "tickerView"    # Landroid/widget/RemoteViews;
    .param p7, "number"    # I
    .param p8, "contentIntent"    # Landroid/app/PendingIntent;
    .param p9, "fullScreenIntent"    # Landroid/app/PendingIntent;
    .param p10, "largeIcon"    # Landroid/graphics/Bitmap;
    .param p11, "progressMax"    # I
    .param p12, "progress"    # I
    .param p13, "progressIndeterminate"    # Z
    .param p14, "showWhen"    # Z
    .param p15, "useChronometer"    # Z
    .param p16, "priority"    # I
    .param p17, "subText"    # Ljava/lang/CharSequence;
    .param p18, "localOnly"    # Z
    .param p20, "extras"    # Landroid/os/Bundle;
    .param p21, "groupKey"    # Ljava/lang/String;
    .param p22, "groupSummary"    # Z
    .param p23, "sortKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/Notification;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Landroid/widget/RemoteViews;",
            "I",
            "Landroid/app/PendingIntent;",
            "Landroid/app/PendingIntent;",
            "Landroid/graphics/Bitmap;",
            "IIZZZI",
            "Ljava/lang/CharSequence;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 37
    .local p19, "people":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 35
    new-instance v4, Ljava/util/ArrayList;

    #@5
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v4, p0, Landroid/support/v4/app/NotificationCompatKitKat$Builder;->mActionExtrasList:Ljava/util/List;

    #@a
    .line 45
    new-instance v4, Landroid/app/Notification$Builder;

    #@c
    invoke-direct {v4, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@f
    .line 46
    iget-wide v6, p2, Landroid/app/Notification;->when:J

    #@11
    .line 45
    invoke-virtual {v4, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    #@14
    move-result-object v4

    #@15
    move/from16 v0, p14

    #@17
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    #@1a
    move-result-object v4

    #@1b
    .line 48
    iget v5, p2, Landroid/app/Notification;->icon:I

    #@1d
    iget v6, p2, Landroid/app/Notification;->iconLevel:I

    #@1f
    .line 45
    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    #@22
    move-result-object v4

    #@23
    .line 49
    iget-object v5, p2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    #@25
    .line 45
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    #@28
    move-result-object v4

    #@29
    .line 50
    iget-object v5, p2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    #@2b
    .line 45
    invoke-virtual {v4, v5, p6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    #@2e
    move-result-object v4

    #@2f
    .line 51
    iget-object v5, p2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    #@31
    iget v6, p2, Landroid/app/Notification;->audioStreamType:I

    #@33
    .line 45
    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;

    #@36
    move-result-object v4

    #@37
    .line 52
    iget-object v5, p2, Landroid/app/Notification;->vibrate:[J

    #@39
    .line 45
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    #@3c
    move-result-object v4

    #@3d
    .line 53
    iget v5, p2, Landroid/app/Notification;->ledARGB:I

    #@3f
    iget v6, p2, Landroid/app/Notification;->ledOnMS:I

    #@41
    iget v7, p2, Landroid/app/Notification;->ledOffMS:I

    #@43
    .line 45
    invoke-virtual {v4, v5, v6, v7}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    #@46
    move-result-object v5

    #@47
    .line 54
    iget v4, p2, Landroid/app/Notification;->flags:I

    #@49
    and-int/lit8 v4, v4, 0x2

    #@4b
    if-eqz v4, :cond_5

    #@4d
    const/4 v4, 0x1

    #@4e
    .line 45
    :goto_0
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    #@51
    move-result-object v5

    #@52
    .line 55
    iget v4, p2, Landroid/app/Notification;->flags:I

    #@54
    and-int/lit8 v4, v4, 0x8

    #@56
    if-eqz v4, :cond_6

    #@58
    const/4 v4, 0x1

    #@59
    .line 45
    :goto_1
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    #@5c
    move-result-object v5

    #@5d
    .line 56
    iget v4, p2, Landroid/app/Notification;->flags:I

    #@5f
    and-int/lit8 v4, v4, 0x10

    #@61
    if-eqz v4, :cond_7

    #@63
    const/4 v4, 0x1

    #@64
    .line 45
    :goto_2
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    #@67
    move-result-object v4

    #@68
    .line 57
    iget v5, p2, Landroid/app/Notification;->defaults:I

    #@6a
    .line 45
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    #@6d
    move-result-object v4

    #@6e
    invoke-virtual {v4, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@71
    move-result-object v4

    #@72
    invoke-virtual {v4, p4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@75
    move-result-object v4

    #@76
    move-object/from16 v0, p17

    #@78
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@7b
    move-result-object v4

    #@7c
    invoke-virtual {v4, p5}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@7f
    move-result-object v4

    #@80
    move-object/from16 v0, p8

    #@82
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@85
    move-result-object v4

    #@86
    .line 63
    iget-object v5, p2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    #@88
    .line 45
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@8b
    move-result-object v5

    #@8c
    .line 65
    iget v4, p2, Landroid/app/Notification;->flags:I

    #@8e
    and-int/lit16 v4, v4, 0x80

    #@90
    if-eqz v4, :cond_8

    #@92
    const/4 v4, 0x1

    #@93
    .line 45
    :goto_3
    move-object/from16 v0, p9

    #@95
    invoke-virtual {v5, v0, v4}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    #@98
    move-result-object v4

    #@99
    move-object/from16 v0, p10

    #@9b
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    #@9e
    move-result-object v4

    #@9f
    invoke-virtual {v4, p7}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    #@a2
    move-result-object v4

    #@a3
    move/from16 v0, p15

    #@a5
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    #@a8
    move-result-object v4

    #@a9
    move/from16 v0, p16

    #@ab
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    #@ae
    move-result-object v4

    #@af
    move/from16 v0, p11

    #@b1
    move/from16 v1, p12

    #@b3
    move/from16 v2, p13

    #@b5
    invoke-virtual {v4, v0, v1, v2}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    #@b8
    move-result-object v4

    #@b9
    iput-object v4, p0, Landroid/support/v4/app/NotificationCompatKitKat$Builder;->b:Landroid/app/Notification$Builder;

    #@bb
    .line 71
    new-instance v4, Landroid/os/Bundle;

    #@bd
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    #@c0
    iput-object v4, p0, Landroid/support/v4/app/NotificationCompatKitKat$Builder;->mExtras:Landroid/os/Bundle;

    #@c2
    .line 72
    if-eqz p20, :cond_0

    #@c4
    .line 73
    iget-object v4, p0, Landroid/support/v4/app/NotificationCompatKitKat$Builder;->mExtras:Landroid/os/Bundle;

    #@c6
    move-object/from16 v0, p20

    #@c8
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    #@cb
    .line 75
    :cond_0
    if-eqz p19, :cond_1

    #@cd
    invoke-virtual/range {p19 .. p19}, Ljava/util/ArrayList;->isEmpty()Z

    #@d0
    move-result v4

    #@d1
    if-eqz v4, :cond_9

    #@d3
    .line 79
    :cond_1
    :goto_4
    if-eqz p18, :cond_2

    #@d5
    .line 80
    iget-object v4, p0, Landroid/support/v4/app/NotificationCompatKitKat$Builder;->mExtras:Landroid/os/Bundle;

    #@d7
    const-string/jumbo v5, "android.support.localOnly"

    #@da
    const/4 v6, 0x1

    #@db
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@de
    .line 82
    :cond_2
    if-eqz p21, :cond_3

    #@e0
    .line 83
    iget-object v4, p0, Landroid/support/v4/app/NotificationCompatKitKat$Builder;->mExtras:Landroid/os/Bundle;

    #@e2
    const-string/jumbo v5, "android.support.groupKey"

    #@e5
    move-object/from16 v0, p21

    #@e7
    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@ea
    .line 84
    if-eqz p22, :cond_a

    #@ec
    .line 85
    iget-object v4, p0, Landroid/support/v4/app/NotificationCompatKitKat$Builder;->mExtras:Landroid/os/Bundle;

    #@ee
    const-string/jumbo v5, "android.support.isGroupSummary"

    #@f1
    const/4 v6, 0x1

    #@f2
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@f5
    .line 90
    :cond_3
    :goto_5
    if-eqz p23, :cond_4

    #@f7
    .line 91
    iget-object v4, p0, Landroid/support/v4/app/NotificationCompatKitKat$Builder;->mExtras:Landroid/os/Bundle;

    #@f9
    const-string/jumbo v5, "android.support.sortKey"

    #@fc
    move-object/from16 v0, p23

    #@fe
    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@101
    .line 44
    :cond_4
    return-void

    #@102
    .line 54
    :cond_5
    const/4 v4, 0x0

    #@103
    goto/16 :goto_0

    #@105
    .line 55
    :cond_6
    const/4 v4, 0x0

    #@106
    goto/16 :goto_1

    #@108
    .line 56
    :cond_7
    const/4 v4, 0x0

    #@109
    goto/16 :goto_2

    #@10b
    .line 65
    :cond_8
    const/4 v4, 0x0

    #@10c
    goto :goto_3

    #@10d
    .line 76
    :cond_9
    iget-object v5, p0, Landroid/support/v4/app/NotificationCompatKitKat$Builder;->mExtras:Landroid/os/Bundle;

    #@10f
    const-string/jumbo v6, "android.people"

    #@112
    .line 77
    invoke-virtual/range {p19 .. p19}, Ljava/util/ArrayList;->size()I

    #@115
    move-result v4

    #@116
    new-array v4, v4, [Ljava/lang/String;

    #@118
    move-object/from16 v0, p19

    #@11a
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@11d
    move-result-object v4

    #@11e
    check-cast v4, [Ljava/lang/String;

    #@120
    .line 76
    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    #@123
    goto :goto_4

    #@124
    .line 87
    :cond_a
    iget-object v4, p0, Landroid/support/v4/app/NotificationCompatKitKat$Builder;->mExtras:Landroid/os/Bundle;

    #@126
    const-string/jumbo v5, "android.support.useSideChannel"

    #@129
    const/4 v6, 0x1

    #@12a
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@12d
    goto :goto_5
.end method


# virtual methods
.method public addAction(Landroid/support/v4/app/NotificationCompatBase$Action;)V
    .locals 2
    .param p1, "action"    # Landroid/support/v4/app/NotificationCompatBase$Action;

    #@0
    .prologue
    .line 97
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatKitKat$Builder;->mActionExtrasList:Ljava/util/List;

    #@2
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatKitKat$Builder;->b:Landroid/app/Notification$Builder;

    #@4
    invoke-static {v1, p1}, Landroid/support/v4/app/NotificationCompatJellybean;->writeActionAndGetExtras(Landroid/app/Notification$Builder;Landroid/support/v4/app/NotificationCompatBase$Action;)Landroid/os/Bundle;

    #@7
    move-result-object v1

    #@8
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@b
    .line 96
    return-void
.end method

.method public build()Landroid/app/Notification;
    .locals 3

    #@0
    .prologue
    .line 108
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatKitKat$Builder;->mActionExtrasList:Ljava/util/List;

    #@2
    .line 107
    invoke-static {v1}, Landroid/support/v4/app/NotificationCompatJellybean;->buildActionExtrasMap(Ljava/util/List;)Landroid/util/SparseArray;

    #@5
    move-result-object v0

    #@6
    .line 109
    .local v0, "actionExtrasMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Bundle;>;"
    if-eqz v0, :cond_0

    #@8
    .line 111
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatKitKat$Builder;->mExtras:Landroid/os/Bundle;

    #@a
    .line 112
    const-string/jumbo v2, "android.support.actionExtras"

    #@d
    .line 111
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    #@10
    .line 114
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatKitKat$Builder;->b:Landroid/app/Notification$Builder;

    #@12
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompatKitKat$Builder;->mExtras:Landroid/os/Bundle;

    #@14
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    #@17
    .line 115
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatKitKat$Builder;->b:Landroid/app/Notification$Builder;

    #@19
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    #@1c
    move-result-object v1

    #@1d
    return-object v1
.end method

.method public getBuilder()Landroid/app/Notification$Builder;
    .locals 1

    #@0
    .prologue
    .line 102
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatKitKat$Builder;->b:Landroid/app/Notification$Builder;

    #@2
    return-object v0
.end method
