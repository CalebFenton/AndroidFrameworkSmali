.class Landroid/support/v4/app/NotificationCompat$NotificationCompatImplIceCreamSandwich;
.super Landroid/support/v4/app/NotificationCompat$NotificationCompatImplBase;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotificationCompatImplIceCreamSandwich"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 577
    invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$NotificationCompatImplBase;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public build(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/support/v4/app/NotificationCompat$BuilderExtender;)Landroid/app/Notification;
    .locals 16
    .param p1, "b"    # Landroid/support/v4/app/NotificationCompat$Builder;
    .param p2, "extender"    # Landroid/support/v4/app/NotificationCompat$BuilderExtender;

    #@0
    .prologue
    .line 581
    new-instance v2, Landroid/support/v4/app/NotificationCompatIceCreamSandwich$Builder;

    #@2
    .line 582
    move-object/from16 v0, p1

    #@4
    iget-object v3, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    #@6
    move-object/from16 v0, p1

    #@8
    iget-object v4, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #@a
    move-object/from16 v0, p1

    #@c
    iget-object v5, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    #@e
    move-object/from16 v0, p1

    #@10
    iget-object v6, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    #@12
    move-object/from16 v0, p1

    #@14
    iget-object v7, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    #@16
    .line 583
    move-object/from16 v0, p1

    #@18
    iget-object v8, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mTickerView:Landroid/widget/RemoteViews;

    #@1a
    move-object/from16 v0, p1

    #@1c
    iget v9, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mNumber:I

    #@1e
    move-object/from16 v0, p1

    #@20
    iget-object v10, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    #@22
    move-object/from16 v0, p1

    #@24
    iget-object v11, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    #@26
    move-object/from16 v0, p1

    #@28
    iget-object v12, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    #@2a
    .line 584
    move-object/from16 v0, p1

    #@2c
    iget v13, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mProgressMax:I

    #@2e
    move-object/from16 v0, p1

    #@30
    iget v14, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mProgress:I

    #@32
    move-object/from16 v0, p1

    #@34
    iget-boolean v15, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mProgressIndeterminate:Z

    #@36
    .line 581
    invoke-direct/range {v2 .. v15}, Landroid/support/v4/app/NotificationCompatIceCreamSandwich$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZ)V

    #@39
    .line 585
    .local v2, "builder":Landroid/support/v4/app/NotificationCompatIceCreamSandwich$Builder;
    move-object/from16 v0, p2

    #@3b
    move-object/from16 v1, p1

    #@3d
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/NotificationCompat$BuilderExtender;->build(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/app/Notification;

    #@40
    move-result-object v3

    #@41
    return-object v3
.end method
