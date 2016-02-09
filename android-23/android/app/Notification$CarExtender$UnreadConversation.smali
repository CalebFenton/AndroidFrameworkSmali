.class public Landroid/app/Notification$CarExtender$UnreadConversation;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification$CarExtender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnreadConversation"
.end annotation


# static fields
.field private static final KEY_AUTHOR:Ljava/lang/String; = "author"

.field private static final KEY_MESSAGES:Ljava/lang/String; = "messages"

.field private static final KEY_ON_READ:Ljava/lang/String; = "on_read"

.field private static final KEY_ON_REPLY:Ljava/lang/String; = "on_reply"

.field private static final KEY_PARTICIPANTS:Ljava/lang/String; = "participants"

.field private static final KEY_REMOTE_INPUT:Ljava/lang/String; = "remote_input"

.field private static final KEY_TEXT:Ljava/lang/String; = "text"

.field private static final KEY_TIMESTAMP:Ljava/lang/String; = "timestamp"


# instance fields
.field private final mLatestTimestamp:J

.field private final mMessages:[Ljava/lang/String;

.field private final mParticipants:[Ljava/lang/String;

.field private final mReadPendingIntent:Landroid/app/PendingIntent;

.field private final mRemoteInput:Landroid/app/RemoteInput;

.field private final mReplyPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>([Ljava/lang/String;Landroid/app/RemoteInput;Landroid/app/PendingIntent;Landroid/app/PendingIntent;[Ljava/lang/String;J)V
    .locals 0
    .param p1, "messages"    # [Ljava/lang/String;
    .param p2, "remoteInput"    # Landroid/app/RemoteInput;
    .param p3, "replyPendingIntent"    # Landroid/app/PendingIntent;
    .param p4, "readPendingIntent"    # Landroid/app/PendingIntent;
    .param p5, "participants"    # [Ljava/lang/String;
    .param p6, "latestTimestamp"    # J

    #@0
    .prologue
    .line 5438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 5441
    iput-object p1, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mMessages:[Ljava/lang/String;

    #@5
    .line 5442
    iput-object p2, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mRemoteInput:Landroid/app/RemoteInput;

    #@7
    .line 5443
    iput-object p4, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mReadPendingIntent:Landroid/app/PendingIntent;

    #@9
    .line 5444
    iput-object p3, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mReplyPendingIntent:Landroid/app/PendingIntent;

    #@b
    .line 5445
    iput-object p5, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    #@d
    .line 5446
    iput-wide p6, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mLatestTimestamp:J

    #@f
    .line 5440
    return-void
.end method

.method static getUnreadConversationFromBundle(Landroid/os/Bundle;)Landroid/app/Notification$CarExtender$UnreadConversation;
    .locals 12
    .param p0, "b"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 5526
    if-nez p0, :cond_0

    #@3
    .line 5527
    return-object v7

    #@4
    .line 5529
    :cond_0
    const-string/jumbo v0, "messages"

    #@7
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    #@a
    move-result-object v9

    #@b
    .line 5530
    .local v9, "parcelableMessages":[Landroid/os/Parcelable;
    const/4 v1, 0x0

    #@c
    .line 5531
    .local v1, "messages":[Ljava/lang/String;
    if-eqz v9, :cond_2

    #@e
    .line 5532
    array-length v0, v9

    #@f
    new-array v11, v0, [Ljava/lang/String;

    #@11
    .line 5533
    .local v11, "tmp":[Ljava/lang/String;
    const/4 v10, 0x1

    #@12
    .line 5534
    .local v10, "success":Z
    const/4 v8, 0x0

    #@13
    .local v8, "i":I
    :goto_0
    array-length v0, v11

    #@14
    if-ge v8, v0, :cond_1

    #@16
    .line 5535
    aget-object v0, v9, v8

    #@18
    instance-of v0, v0, Landroid/os/Bundle;

    #@1a
    if-nez v0, :cond_4

    #@1c
    .line 5536
    const/4 v10, 0x0

    #@1d
    .line 5545
    :cond_1
    :goto_1
    if-eqz v10, :cond_6

    #@1f
    .line 5546
    move-object v1, v11

    #@20
    .line 5552
    .end local v1    # "messages":[Ljava/lang/String;
    .end local v8    # "i":I
    .end local v10    # "success":Z
    .end local v11    # "tmp":[Ljava/lang/String;
    :cond_2
    const-string/jumbo v0, "on_read"

    #@23
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@26
    move-result-object v4

    #@27
    check-cast v4, Landroid/app/PendingIntent;

    #@29
    .line 5553
    .local v4, "onRead":Landroid/app/PendingIntent;
    const-string/jumbo v0, "on_reply"

    #@2c
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@2f
    move-result-object v3

    #@30
    check-cast v3, Landroid/app/PendingIntent;

    #@32
    .line 5555
    .local v3, "onReply":Landroid/app/PendingIntent;
    const-string/jumbo v0, "remote_input"

    #@35
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@38
    move-result-object v2

    #@39
    check-cast v2, Landroid/app/RemoteInput;

    #@3b
    .line 5557
    .local v2, "remoteInput":Landroid/app/RemoteInput;
    const-string/jumbo v0, "participants"

    #@3e
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    #@41
    move-result-object v5

    #@42
    .line 5558
    .local v5, "participants":[Ljava/lang/String;
    if-eqz v5, :cond_3

    #@44
    array-length v0, v5

    #@45
    const/4 v6, 0x1

    #@46
    if-eq v0, v6, :cond_7

    #@48
    .line 5559
    :cond_3
    return-object v7

    #@49
    .line 5539
    .end local v2    # "remoteInput":Landroid/app/RemoteInput;
    .end local v3    # "onReply":Landroid/app/PendingIntent;
    .end local v4    # "onRead":Landroid/app/PendingIntent;
    .end local v5    # "participants":[Ljava/lang/String;
    .restart local v1    # "messages":[Ljava/lang/String;
    .restart local v8    # "i":I
    .restart local v10    # "success":Z
    .restart local v11    # "tmp":[Ljava/lang/String;
    :cond_4
    aget-object v0, v9, v8

    #@4b
    check-cast v0, Landroid/os/Bundle;

    #@4d
    const-string/jumbo v6, "text"

    #@50
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@53
    move-result-object v0

    #@54
    aput-object v0, v11, v8

    #@56
    .line 5540
    aget-object v0, v11, v8

    #@58
    if-nez v0, :cond_5

    #@5a
    .line 5541
    const/4 v10, 0x0

    #@5b
    .line 5542
    goto :goto_1

    #@5c
    .line 5534
    :cond_5
    add-int/lit8 v8, v8, 0x1

    #@5e
    goto :goto_0

    #@5f
    .line 5548
    :cond_6
    return-object v7

    #@60
    .line 5562
    .end local v1    # "messages":[Ljava/lang/String;
    .end local v8    # "i":I
    .end local v10    # "success":Z
    .end local v11    # "tmp":[Ljava/lang/String;
    .restart local v2    # "remoteInput":Landroid/app/RemoteInput;
    .restart local v3    # "onReply":Landroid/app/PendingIntent;
    .restart local v4    # "onRead":Landroid/app/PendingIntent;
    .restart local v5    # "participants":[Ljava/lang/String;
    :cond_7
    new-instance v0, Landroid/app/Notification$CarExtender$UnreadConversation;

    #@62
    .line 5566
    const-string/jumbo v6, "timestamp"

    #@65
    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    #@68
    move-result-wide v6

    #@69
    .line 5562
    invoke-direct/range {v0 .. v7}, Landroid/app/Notification$CarExtender$UnreadConversation;-><init>([Ljava/lang/String;Landroid/app/RemoteInput;Landroid/app/PendingIntent;Landroid/app/PendingIntent;[Ljava/lang/String;J)V

    #@6c
    return-object v0
.end method


# virtual methods
.method getBundleForUnreadConversation()Landroid/os/Bundle;
    .locals 8

    #@0
    .prologue
    .line 5502
    new-instance v1, Landroid/os/Bundle;

    #@2
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 5503
    .local v1, "b":Landroid/os/Bundle;
    const/4 v0, 0x0

    #@6
    .line 5504
    .local v0, "author":Ljava/lang/String;
    iget-object v5, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    #@8
    if-eqz v5, :cond_0

    #@a
    iget-object v5, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    #@c
    array-length v5, v5

    #@d
    const/4 v6, 0x1

    #@e
    if-le v5, v6, :cond_0

    #@10
    .line 5505
    iget-object v5, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    #@12
    const/4 v6, 0x0

    #@13
    aget-object v0, v5, v6

    #@15
    .line 5507
    .end local v0    # "author":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mMessages:[Ljava/lang/String;

    #@17
    array-length v5, v5

    #@18
    new-array v4, v5, [Landroid/os/Parcelable;

    #@1a
    .line 5508
    .local v4, "messages":[Landroid/os/Parcelable;
    const/4 v2, 0x0

    #@1b
    .local v2, "i":I
    :goto_0
    array-length v5, v4

    #@1c
    if-ge v2, v5, :cond_1

    #@1e
    .line 5509
    new-instance v3, Landroid/os/Bundle;

    #@20
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    #@23
    .line 5510
    .local v3, "m":Landroid/os/Bundle;
    const-string/jumbo v5, "text"

    #@26
    iget-object v6, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mMessages:[Ljava/lang/String;

    #@28
    aget-object v6, v6, v2

    #@2a
    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@2d
    .line 5511
    const-string/jumbo v5, "author"

    #@30
    invoke-virtual {v3, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@33
    .line 5512
    aput-object v3, v4, v2

    #@35
    .line 5508
    add-int/lit8 v2, v2, 0x1

    #@37
    goto :goto_0

    #@38
    .line 5514
    .end local v3    # "m":Landroid/os/Bundle;
    :cond_1
    const-string/jumbo v5, "messages"

    #@3b
    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    #@3e
    .line 5515
    iget-object v5, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mRemoteInput:Landroid/app/RemoteInput;

    #@40
    if-eqz v5, :cond_2

    #@42
    .line 5516
    const-string/jumbo v5, "remote_input"

    #@45
    iget-object v6, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mRemoteInput:Landroid/app/RemoteInput;

    #@47
    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@4a
    .line 5518
    :cond_2
    const-string/jumbo v5, "on_reply"

    #@4d
    iget-object v6, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mReplyPendingIntent:Landroid/app/PendingIntent;

    #@4f
    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@52
    .line 5519
    const-string/jumbo v5, "on_read"

    #@55
    iget-object v6, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mReadPendingIntent:Landroid/app/PendingIntent;

    #@57
    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@5a
    .line 5520
    const-string/jumbo v5, "participants"

    #@5d
    iget-object v6, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    #@5f
    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    #@62
    .line 5521
    const-string/jumbo v5, "timestamp"

    #@65
    iget-wide v6, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mLatestTimestamp:J

    #@67
    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@6a
    .line 5522
    return-object v1
.end method

.method public getLatestTimestamp()J
    .locals 2

    #@0
    .prologue
    .line 5498
    iget-wide v0, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mLatestTimestamp:J

    #@2
    return-wide v0
.end method

.method public getMessages()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 5453
    iget-object v0, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mMessages:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getParticipant()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 5491
    iget-object v0, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    #@3
    array-length v0, v0

    #@4
    if-lez v0, :cond_0

    #@6
    iget-object v0, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    #@8
    aget-object v0, v0, v1

    #@a
    :goto_0
    return-object v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public getParticipants()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 5484
    iget-object v0, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getReadPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    #@0
    .prologue
    .line 5477
    iget-object v0, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mReadPendingIntent:Landroid/app/PendingIntent;

    #@2
    return-object v0
.end method

.method public getRemoteInput()Landroid/app/RemoteInput;
    .locals 1

    #@0
    .prologue
    .line 5461
    iget-object v0, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mRemoteInput:Landroid/app/RemoteInput;

    #@2
    return-object v0
.end method

.method public getReplyPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    #@0
    .prologue
    .line 5469
    iget-object v0, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mReplyPendingIntent:Landroid/app/PendingIntent;

    #@2
    return-object v0
.end method
