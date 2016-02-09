.class Landroid/support/v4/app/NotificationCompat$NotificationCompatImplApi20;
.super Landroid/support/v4/app/NotificationCompat$NotificationCompatImplKitKat;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotificationCompatImplApi20"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 704
    invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$NotificationCompatImplKitKat;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public build(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/support/v4/app/NotificationCompat$BuilderExtender;)Landroid/app/Notification;
    .locals 26
    .param p1, "b"    # Landroid/support/v4/app/NotificationCompat$Builder;
    .param p2, "extender"    # Landroid/support/v4/app/NotificationCompat$BuilderExtender;

    #@0
    .prologue
    .line 707
    new-instance v2, Landroid/support/v4/app/NotificationCompatApi20$Builder;

    #@2
    .line 708
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
    .line 709
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
    .line 710
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
    .line 711
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
    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mPeople:Ljava/util/ArrayList;

    #@58
    move-object/from16 v21, v0

    #@5a
    move-object/from16 v0, p1

    #@5c
    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    #@5e
    move-object/from16 v22, v0

    #@60
    .line 712
    move-object/from16 v0, p1

    #@62
    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mGroupKey:Ljava/lang/String;

    #@64
    move-object/from16 v23, v0

    #@66
    move-object/from16 v0, p1

    #@68
    iget-boolean v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mGroupSummary:Z

    #@6a
    move/from16 v24, v0

    #@6c
    move-object/from16 v0, p1

    #@6e
    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mSortKey:Ljava/lang/String;

    #@70
    move-object/from16 v25, v0

    #@72
    .line 707
    invoke-direct/range {v2 .. v25}, Landroid/support/v4/app/NotificationCompatApi20$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZZILjava/lang/CharSequence;ZLjava/util/ArrayList;Landroid/os/Bundle;Ljava/lang/String;ZLjava/lang/String;)V

    #@75
    .line 713
    .local v2, "builder":Landroid/support/v4/app/NotificationCompatApi20$Builder;
    move-object/from16 v0, p1

    #@77
    iget-object v3, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    #@79
    invoke-static {v2, v3}, Landroid/support/v4/app/NotificationCompat;->-wrap1(Landroid/support/v4/app/NotificationBuilderWithActions;Ljava/util/ArrayList;)V

    #@7c
    .line 714
    move-object/from16 v0, p1

    #@7e
    iget-object v3, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    #@80
    invoke-static {v2, v3}, Landroid/support/v4/app/NotificationCompat;->-wrap2(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Style;)V

    #@83
    .line 715
    move-object/from16 v0, p2

    #@85
    move-object/from16 v1, p1

    #@87
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/NotificationCompat$BuilderExtender;->build(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/app/Notification;

    #@8a
    move-result-object v3

    #@8b
    return-object v3
.end method

.method public getAction(Landroid/app/Notification;I)Landroid/support/v4/app/NotificationCompat$Action;
    .locals 2
    .param p1, "n"    # Landroid/app/Notification;
    .param p2, "actionIndex"    # I

    #@0
    .prologue
    .line 720
    sget-object v0, Landroid/support/v4/app/NotificationCompat$Action;->FACTORY:Landroid/support/v4/app/NotificationCompatBase$Action$Factory;

    #@2
    .line 721
    sget-object v1, Landroid/support/v4/app/RemoteInput;->FACTORY:Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;

    #@4
    .line 720
    invoke-static {p1, p2, v0, v1}, Landroid/support/v4/app/NotificationCompatApi20;->getAction(Landroid/app/Notification;ILandroid/support/v4/app/NotificationCompatBase$Action$Factory;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)Landroid/support/v4/app/NotificationCompatBase$Action;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/support/v4/app/NotificationCompat$Action;

    #@a
    return-object v0
.end method

.method public getActionsFromParcelableArrayList(Ljava/util/ArrayList;)[Landroid/support/v4/app/NotificationCompat$Action;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Parcelable;",
            ">;)[",
            "Landroid/support/v4/app/NotificationCompat$Action;"
        }
    .end annotation

    #@0
    .prologue
    .line 728
    .local p1, "parcelables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    sget-object v0, Landroid/support/v4/app/NotificationCompat$Action;->FACTORY:Landroid/support/v4/app/NotificationCompatBase$Action$Factory;

    #@2
    sget-object v1, Landroid/support/v4/app/RemoteInput;->FACTORY:Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;

    #@4
    .line 727
    invoke-static {p1, v0, v1}, Landroid/support/v4/app/NotificationCompatApi20;->getActionsFromParcelableArrayList(Ljava/util/ArrayList;Landroid/support/v4/app/NotificationCompatBase$Action$Factory;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)[Landroid/support/v4/app/NotificationCompatBase$Action;

    #@7
    move-result-object v0

    #@8
    check-cast v0, [Landroid/support/v4/app/NotificationCompat$Action;

    #@a
    return-object v0
.end method

.method public getGroup(Landroid/app/Notification;)Ljava/lang/String;
    .locals 1
    .param p1, "n"    # Landroid/app/Notification;

    #@0
    .prologue
    .line 744
    invoke-static {p1}, Landroid/support/v4/app/NotificationCompatApi20;->getGroup(Landroid/app/Notification;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getLocalOnly(Landroid/app/Notification;)Z
    .locals 1
    .param p1, "n"    # Landroid/app/Notification;

    #@0
    .prologue
    .line 739
    invoke-static {p1}, Landroid/support/v4/app/NotificationCompatApi20;->getLocalOnly(Landroid/app/Notification;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getParcelableArrayListForActions([Landroid/support/v4/app/NotificationCompat$Action;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "actions"    # [Landroid/support/v4/app/NotificationCompat$Action;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/support/v4/app/NotificationCompat$Action;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 734
    invoke-static {p1}, Landroid/support/v4/app/NotificationCompatApi20;->getParcelableArrayListForActions([Landroid/support/v4/app/NotificationCompatBase$Action;)Ljava/util/ArrayList;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getSortKey(Landroid/app/Notification;)Ljava/lang/String;
    .locals 1
    .param p1, "n"    # Landroid/app/Notification;

    #@0
    .prologue
    .line 754
    invoke-static {p1}, Landroid/support/v4/app/NotificationCompatApi20;->getSortKey(Landroid/app/Notification;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public isGroupSummary(Landroid/app/Notification;)Z
    .locals 1
    .param p1, "n"    # Landroid/app/Notification;

    #@0
    .prologue
    .line 749
    invoke-static {p1}, Landroid/support/v4/app/NotificationCompatApi20;->isGroupSummary(Landroid/app/Notification;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method
