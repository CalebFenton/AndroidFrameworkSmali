.class public Landroid/support/v4/app/NotificationCompatIceCreamSandwich$Builder;
.super Ljava/lang/Object;
.source "NotificationCompatIceCreamSandwich.java"

# interfaces
.implements Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompatIceCreamSandwich;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private b:Landroid/app/Notification$Builder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZ)V
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

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 35
    new-instance v4, Landroid/app/Notification$Builder;

    #@5
    invoke-direct {v4, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@8
    .line 36
    iget-wide v6, p2, Landroid/app/Notification;->when:J

    #@a
    .line 35
    invoke-virtual {v4, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    #@d
    move-result-object v4

    #@e
    .line 37
    iget v5, p2, Landroid/app/Notification;->icon:I

    #@10
    iget v6, p2, Landroid/app/Notification;->iconLevel:I

    #@12
    .line 35
    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    #@15
    move-result-object v4

    #@16
    .line 38
    iget-object v5, p2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    #@18
    .line 35
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    #@1b
    move-result-object v4

    #@1c
    .line 39
    iget-object v5, p2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    #@1e
    .line 35
    invoke-virtual {v4, v5, p6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    #@21
    move-result-object v4

    #@22
    .line 40
    iget-object v5, p2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    #@24
    iget v6, p2, Landroid/app/Notification;->audioStreamType:I

    #@26
    .line 35
    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;

    #@29
    move-result-object v4

    #@2a
    .line 41
    iget-object v5, p2, Landroid/app/Notification;->vibrate:[J

    #@2c
    .line 35
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    #@2f
    move-result-object v4

    #@30
    .line 42
    iget v5, p2, Landroid/app/Notification;->ledARGB:I

    #@32
    iget v6, p2, Landroid/app/Notification;->ledOnMS:I

    #@34
    iget v7, p2, Landroid/app/Notification;->ledOffMS:I

    #@36
    .line 35
    invoke-virtual {v4, v5, v6, v7}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    #@39
    move-result-object v5

    #@3a
    .line 43
    iget v4, p2, Landroid/app/Notification;->flags:I

    #@3c
    and-int/lit8 v4, v4, 0x2

    #@3e
    if-eqz v4, :cond_0

    #@40
    const/4 v4, 0x1

    #@41
    .line 35
    :goto_0
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    #@44
    move-result-object v5

    #@45
    .line 44
    iget v4, p2, Landroid/app/Notification;->flags:I

    #@47
    and-int/lit8 v4, v4, 0x8

    #@49
    if-eqz v4, :cond_1

    #@4b
    const/4 v4, 0x1

    #@4c
    .line 35
    :goto_1
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    #@4f
    move-result-object v5

    #@50
    .line 45
    iget v4, p2, Landroid/app/Notification;->flags:I

    #@52
    and-int/lit8 v4, v4, 0x10

    #@54
    if-eqz v4, :cond_2

    #@56
    const/4 v4, 0x1

    #@57
    .line 35
    :goto_2
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    #@5a
    move-result-object v4

    #@5b
    .line 46
    iget v5, p2, Landroid/app/Notification;->defaults:I

    #@5d
    .line 35
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    #@60
    move-result-object v4

    #@61
    invoke-virtual {v4, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@64
    move-result-object v4

    #@65
    invoke-virtual {v4, p4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@68
    move-result-object v4

    #@69
    invoke-virtual {v4, p5}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@6c
    move-result-object v4

    #@6d
    move-object/from16 v0, p8

    #@6f
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@72
    move-result-object v4

    #@73
    .line 51
    iget-object v5, p2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    #@75
    .line 35
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@78
    move-result-object v5

    #@79
    .line 53
    iget v4, p2, Landroid/app/Notification;->flags:I

    #@7b
    and-int/lit16 v4, v4, 0x80

    #@7d
    if-eqz v4, :cond_3

    #@7f
    const/4 v4, 0x1

    #@80
    .line 35
    :goto_3
    move-object/from16 v0, p9

    #@82
    invoke-virtual {v5, v0, v4}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    #@85
    move-result-object v4

    #@86
    move-object/from16 v0, p10

    #@88
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    #@8b
    move-result-object v4

    #@8c
    invoke-virtual {v4, p7}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    #@8f
    move-result-object v4

    #@90
    move/from16 v0, p11

    #@92
    move/from16 v1, p12

    #@94
    move/from16 v2, p13

    #@96
    invoke-virtual {v4, v0, v1, v2}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    #@99
    move-result-object v4

    #@9a
    iput-object v4, p0, Landroid/support/v4/app/NotificationCompatIceCreamSandwich$Builder;->b:Landroid/app/Notification$Builder;

    #@9c
    .line 34
    return-void

    #@9d
    .line 43
    :cond_0
    const/4 v4, 0x0

    #@9e
    goto :goto_0

    #@9f
    .line 44
    :cond_1
    const/4 v4, 0x0

    #@a0
    goto :goto_1

    #@a1
    .line 45
    :cond_2
    const/4 v4, 0x0

    #@a2
    goto :goto_2

    #@a3
    .line 53
    :cond_3
    const/4 v4, 0x0

    #@a4
    goto :goto_3
.end method


# virtual methods
.method public build()Landroid/app/Notification;
    .locals 1

    #@0
    .prologue
    .line 66
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatIceCreamSandwich$Builder;->b:Landroid/app/Notification$Builder;

    #@2
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getBuilder()Landroid/app/Notification$Builder;
    .locals 1

    #@0
    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatIceCreamSandwich$Builder;->b:Landroid/app/Notification$Builder;

    #@2
    return-object v0
.end method
