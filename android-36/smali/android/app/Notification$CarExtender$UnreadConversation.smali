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
.field private static final greylist-max-o KEY_AUTHOR:Ljava/lang/String; = "author"

.field private static final greylist-max-o KEY_MESSAGES:Ljava/lang/String; = "messages"

.field static final greylist-max-o KEY_ON_READ:Ljava/lang/String; = "on_read"

.field static final greylist-max-o KEY_ON_REPLY:Ljava/lang/String; = "on_reply"

.field private static final greylist-max-o KEY_PARTICIPANTS:Ljava/lang/String; = "participants"

.field static final greylist-max-o KEY_REMOTE_INPUT:Ljava/lang/String; = "remote_input"

.field private static final greylist-max-o KEY_TEXT:Ljava/lang/String; = "text"

.field private static final greylist-max-o KEY_TIMESTAMP:Ljava/lang/String; = "timestamp"


# instance fields
.field private final greylist-max-o mLatestTimestamp:J

.field private final greylist-max-o mMessages:[Ljava/lang/String;

.field private final greylist-max-o mParticipants:[Ljava/lang/String;

.field private final greylist-max-o mReadPendingIntent:Landroid/app/PendingIntent;

.field private final greylist-max-o mRemoteInput:Landroid/app/RemoteInput;

.field private final greylist-max-o mReplyPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method constructor greylist-max-o <init>([Ljava/lang/String;Landroid/app/RemoteInput;Landroid/app/PendingIntent;Landroid/app/PendingIntent;[Ljava/lang/String;J)V
    .registers 8
    .param p1, "messages"    # [Ljava/lang/String;
    .param p2, "remoteInput"    # Landroid/app/RemoteInput;
    .param p3, "replyPendingIntent"    # Landroid/app/PendingIntent;
    .param p4, "readPendingIntent"    # Landroid/app/PendingIntent;
    .param p5, "participants"    # [Ljava/lang/String;
    .param p6, "latestTimestamp"    # J

    .line 14244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14245
    iput-object p1, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mMessages:[Ljava/lang/String;

    .line 14246
    iput-object p2, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mRemoteInput:Landroid/app/RemoteInput;

    .line 14247
    iput-object p4, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mReadPendingIntent:Landroid/app/PendingIntent;

    .line 14248
    iput-object p3, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mReplyPendingIntent:Landroid/app/PendingIntent;

    .line 14249
    iput-object p5, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    .line 14250
    iput-wide p6, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mLatestTimestamp:J

    .line 14251
    return-void
.end method

.method static greylist-max-o getUnreadConversationFromBundle(Landroid/os/Bundle;)Landroid/app/Notification$CarExtender$UnreadConversation;
    .registers 14
    .param p0, "b"    # Landroid/os/Bundle;

    .line 14330
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 14331
    return-object v0

    .line 14333
    :cond_4
    const-string/jumbo v1, "messages"

    const-class v2, Landroid/os/Parcelable;

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/Parcelable;

    .line 14335
    .local v1, "parcelableMessages":[Landroid/os/Parcelable;
    const/4 v2, 0x0

    .line 14336
    .local v2, "messages":[Ljava/lang/String;
    if-eqz v1, :cond_3e

    .line 14337
    array-length v3, v1

    new-array v3, v3, [Ljava/lang/String;

    .line 14338
    .local v3, "tmp":[Ljava/lang/String;
    const/4 v4, 0x1

    .line 14339
    .local v4, "success":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_17
    array-length v6, v3

    if-ge v5, v6, :cond_38

    .line 14340
    aget-object v6, v1, v5

    instance-of v6, v6, Landroid/os/Bundle;

    if-nez v6, :cond_22

    .line 14341
    const/4 v4, 0x0

    .line 14342
    goto :goto_38

    .line 14344
    :cond_22
    aget-object v6, v1, v5

    check-cast v6, Landroid/os/Bundle;

    const-string/jumbo v7, "text"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    .line 14345
    aget-object v6, v3, v5

    if-nez v6, :cond_35

    .line 14346
    const/4 v4, 0x0

    .line 14347
    goto :goto_38

    .line 14339
    :cond_35
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    .line 14350
    .end local v5    # "i":I
    :cond_38
    :goto_38
    if-eqz v4, :cond_3d

    .line 14351
    move-object v2, v3

    move-object v6, v2

    goto :goto_3f

    .line 14353
    :cond_3d
    return-object v0

    .line 14336
    .end local v3    # "tmp":[Ljava/lang/String;
    .end local v4    # "success":Z
    :cond_3e
    move-object v6, v2

    .line 14357
    .end local v2    # "messages":[Ljava/lang/String;
    .local v6, "messages":[Ljava/lang/String;
    :goto_3f
    const-string/jumbo v2, "on_read"

    const-class v3, Landroid/app/PendingIntent;

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/app/PendingIntent;

    .line 14358
    .local v9, "onRead":Landroid/app/PendingIntent;
    const-string/jumbo v2, "on_reply"

    const-class v3, Landroid/app/PendingIntent;

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/app/PendingIntent;

    .line 14360
    .local v8, "onReply":Landroid/app/PendingIntent;
    const-string/jumbo v2, "remote_input"

    const-class v3, Landroid/app/RemoteInput;

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/app/RemoteInput;

    .line 14362
    .local v7, "remoteInput":Landroid/app/RemoteInput;
    const-string/jumbo v2, "participants"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 14363
    .local v10, "participants":[Ljava/lang/String;
    if-eqz v10, :cond_7e

    array-length v2, v10

    const/4 v3, 0x1

    if-eq v2, v3, :cond_71

    goto :goto_7e

    .line 14367
    :cond_71
    new-instance v5, Landroid/app/Notification$CarExtender$UnreadConversation;

    .line 14371
    const-string/jumbo v0, "timestamp"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-direct/range {v5 .. v12}, Landroid/app/Notification$CarExtender$UnreadConversation;-><init>([Ljava/lang/String;Landroid/app/RemoteInput;Landroid/app/PendingIntent;Landroid/app/PendingIntent;[Ljava/lang/String;J)V

    .line 14367
    return-object v5

    .line 14364
    :cond_7e
    :goto_7e
    return-object v0
.end method


# virtual methods
.method greylist-max-o getBundleForUnreadConversation()Landroid/os/Bundle;
    .registers 8

    .line 14306
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 14307
    .local v0, "b":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 14308
    .local v1, "author":Ljava/lang/String;
    iget-object v2, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    if-eqz v2, :cond_15

    iget-object v2, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_15

    .line 14309
    iget-object v2, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v1, v2, v3

    .line 14311
    :cond_15
    iget-object v2, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mMessages:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [Landroid/os/Parcelable;

    .line 14312
    .local v2, "messages":[Landroid/os/Parcelable;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1b
    array-length v4, v2

    if-ge v3, v4, :cond_37

    .line 14313
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 14314
    .local v4, "m":Landroid/os/Bundle;
    iget-object v5, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mMessages:[Ljava/lang/String;

    aget-object v5, v5, v3

    const-string/jumbo v6, "text"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14315
    const-string v5, "author"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14316
    aput-object v4, v2, v3

    .line 14312
    .end local v4    # "m":Landroid/os/Bundle;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 14318
    .end local v3    # "i":I
    :cond_37
    const-string/jumbo v3, "messages"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 14319
    iget-object v3, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mRemoteInput:Landroid/app/RemoteInput;

    if-eqz v3, :cond_49

    .line 14320
    const-string/jumbo v3, "remote_input"

    iget-object v4, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mRemoteInput:Landroid/app/RemoteInput;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 14322
    :cond_49
    const-string/jumbo v3, "on_reply"

    iget-object v4, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mReplyPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 14323
    const-string/jumbo v3, "on_read"

    iget-object v4, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mReadPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 14324
    const-string/jumbo v3, "participants"

    iget-object v4, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 14325
    const-string/jumbo v3, "timestamp"

    iget-wide v4, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mLatestTimestamp:J

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 14326
    return-object v0
.end method

.method public whitelist getLatestTimestamp()J
    .registers 3

    .line 14302
    iget-wide v0, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mLatestTimestamp:J

    return-wide v0
.end method

.method public whitelist getMessages()[Ljava/lang/String;
    .registers 2

    .line 14257
    iget-object v0, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mMessages:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getParticipant()Ljava/lang/String;
    .registers 3

    .line 14295
    iget-object v0, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_b

    iget-object v0, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public whitelist getParticipants()[Ljava/lang/String;
    .registers 2

    .line 14288
    iget-object v0, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getReadPendingIntent()Landroid/app/PendingIntent;
    .registers 2

    .line 14281
    iget-object v0, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mReadPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public whitelist getRemoteInput()Landroid/app/RemoteInput;
    .registers 2

    .line 14265
    iget-object v0, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mRemoteInput:Landroid/app/RemoteInput;

    return-object v0
.end method

.method public whitelist getReplyPendingIntent()Landroid/app/PendingIntent;
    .registers 2

    .line 14273
    iget-object v0, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mReplyPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method
