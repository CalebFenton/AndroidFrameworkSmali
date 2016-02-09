.class Landroid/support/v4/app/NotificationCompat$NotificationCompatImplApi21;
.super Landroid/support/v4/app/NotificationCompat$NotificationCompatImplApi20;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotificationCompatImplApi21"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 758
    invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$NotificationCompatImplApi20;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public build(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/support/v4/app/NotificationCompat$BuilderExtender;)Landroid/app/Notification;
    .locals 30
    .param p1, "b"    # Landroid/support/v4/app/NotificationCompat$Builder;
    .param p2, "extender"    # Landroid/support/v4/app/NotificationCompat$BuilderExtender;

    #@0
    .prologue
    .line 761
    new-instance v2, Landroid/support/v4/app/NotificationCompatApi21$Builder;

    #@2
    .line 762
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
    .line 763
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
    .line 764
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
    move-object/from16 v0, p1

    #@38
    iget-boolean v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mShowWhen:Z

    #@3a
    move/from16 v16, v0

    #@3c
    .line 765
    move-object/from16 v0, p1

    #@3e
    iget-boolean v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mUseChronometer:Z

    #@40
    move/from16 v17, v0

    #@42
    move-object/from16 v0, p1

    #@44
    iget v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mPriority:I

    #@46
    move/from16 v18, v0

    #@48
    move-object/from16 v0, p1

    #@4a
    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    #@4c
    move-object/from16 v19, v0

    #@4e
    move-object/from16 v0, p1

    #@50
    iget-boolean v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mLocalOnly:Z

    #@52
    move/from16 v20, v0

    #@54
    move-object/from16 v0, p1

    #@56
    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mCategory:Ljava/lang/String;

    #@58
    move-object/from16 v21, v0

    #@5a
    .line 766
    move-object/from16 v0, p1

    #@5c
    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mPeople:Ljava/util/ArrayList;

    #@5e
    move-object/from16 v22, v0

    #@60
    move-object/from16 v0, p1

    #@62
    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    #@64
    move-object/from16 v23, v0

    #@66
    move-object/from16 v0, p1

    #@68
    iget v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mColor:I

    #@6a
    move/from16 v24, v0

    #@6c
    move-object/from16 v0, p1

    #@6e
    iget v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mVisibility:I

    #@70
    move/from16 v25, v0

    #@72
    move-object/from16 v0, p1

    #@74
    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mPublicVersion:Landroid/app/Notification;

    #@76
    move-object/from16 v26, v0

    #@78
    .line 767
    move-object/from16 v0, p1

    #@7a
    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mGroupKey:Ljava/lang/String;

    #@7c
    move-object/from16 v27, v0

    #@7e
    move-object/from16 v0, p1

    #@80
    iget-boolean v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mGroupSummary:Z

    #@82
    move/from16 v28, v0

    #@84
    move-object/from16 v0, p1

    #@86
    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mSortKey:Ljava/lang/String;

    #@88
    move-object/from16 v29, v0

    #@8a
    .line 761
    invoke-direct/range {v2 .. v29}, Landroid/support/v4/app/NotificationCompatApi21$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZZILjava/lang/CharSequence;ZLjava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;IILandroid/app/Notification;Ljava/lang/String;ZLjava/lang/String;)V

    #@8d
    .line 768
    .local v2, "builder":Landroid/support/v4/app/NotificationCompatApi21$Builder;
    move-object/from16 v0, p1

    #@8f
    iget-object v3, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    #@91
    invoke-static {v2, v3}, Landroid/support/v4/app/NotificationCompat;->-wrap1(Landroid/support/v4/app/NotificationBuilderWithActions;Ljava/util/ArrayList;)V

    #@94
    .line 769
    move-object/from16 v0, p1

    #@96
    iget-object v3, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    #@98
    invoke-static {v2, v3}, Landroid/support/v4/app/NotificationCompat;->-wrap2(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Style;)V

    #@9b
    .line 770
    move-object/from16 v0, p2

    #@9d
    move-object/from16 v1, p1

    #@9f
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/NotificationCompat$BuilderExtender;->build(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/app/Notification;

    #@a2
    move-result-object v3

    #@a3
    return-object v3
.end method

.method public getBundleForUnreadConversation(Landroid/support/v4/app/NotificationCompatBase$UnreadConversation;)Landroid/os/Bundle;
    .locals 1
    .param p1, "uc"    # Landroid/support/v4/app/NotificationCompatBase$UnreadConversation;

    #@0
    .prologue
    .line 780
    invoke-static {p1}, Landroid/support/v4/app/NotificationCompatApi21;->getBundleForUnreadConversation(Landroid/support/v4/app/NotificationCompatBase$UnreadConversation;)Landroid/os/Bundle;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getCategory(Landroid/app/Notification;)Ljava/lang/String;
    .locals 1
    .param p1, "notif"    # Landroid/app/Notification;

    #@0
    .prologue
    .line 775
    invoke-static {p1}, Landroid/support/v4/app/NotificationCompatApi21;->getCategory(Landroid/app/Notification;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getUnreadConversationFromBundle(Landroid/os/Bundle;Landroid/support/v4/app/NotificationCompatBase$UnreadConversation$Factory;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)Landroid/support/v4/app/NotificationCompatBase$UnreadConversation;
    .locals 1
    .param p1, "b"    # Landroid/os/Bundle;
    .param p2, "factory"    # Landroid/support/v4/app/NotificationCompatBase$UnreadConversation$Factory;
    .param p3, "remoteInputFactory"    # Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;

    #@0
    .prologue
    .line 787
    invoke-static {p1, p2, p3}, Landroid/support/v4/app/NotificationCompatApi21;->getUnreadConversationFromBundle(Landroid/os/Bundle;Landroid/support/v4/app/NotificationCompatBase$UnreadConversation$Factory;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)Landroid/support/v4/app/NotificationCompatBase$UnreadConversation;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
