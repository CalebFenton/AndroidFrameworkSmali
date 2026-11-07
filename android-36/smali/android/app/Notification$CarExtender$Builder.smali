.class public Landroid/app/Notification$CarExtender$Builder;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification$CarExtender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mLatestTimestamp:J

.field private final greylist-max-o mMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mParticipant:Ljava/lang/String;

.field private greylist-max-o mReadPendingIntent:Landroid/app/PendingIntent;

.field private greylist-max-o mRemoteInput:Landroid/app/RemoteInput;

.field private greylist-max-o mReplyPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 14391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14379
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$CarExtender$Builder;->mMessages:Ljava/util/List;

    .line 14392
    iput-object p1, p0, Landroid/app/Notification$CarExtender$Builder;->mParticipant:Ljava/lang/String;

    .line 14393
    return-void
.end method


# virtual methods
.method public whitelist addMessage(Ljava/lang/String;)Landroid/app/Notification$CarExtender$Builder;
    .registers 3
    .param p1, "message"    # Ljava/lang/String;

    .line 14404
    iget-object v0, p0, Landroid/app/Notification$CarExtender$Builder;->mMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14405
    return-object p0
.end method

.method public whitelist build()Landroid/app/Notification$CarExtender$UnreadConversation;
    .registers 10

    .line 14461
    iget-object v0, p0, Landroid/app/Notification$CarExtender$Builder;->mMessages:Ljava/util/List;

    iget-object v1, p0, Landroid/app/Notification$CarExtender$Builder;->mMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, [Ljava/lang/String;

    .line 14462
    .local v2, "messages":[Ljava/lang/String;
    iget-object v0, p0, Landroid/app/Notification$CarExtender$Builder;->mParticipant:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    .line 14463
    .local v6, "participants":[Ljava/lang/String;
    new-instance v1, Landroid/app/Notification$CarExtender$UnreadConversation;

    iget-object v3, p0, Landroid/app/Notification$CarExtender$Builder;->mRemoteInput:Landroid/app/RemoteInput;

    iget-object v4, p0, Landroid/app/Notification$CarExtender$Builder;->mReplyPendingIntent:Landroid/app/PendingIntent;

    iget-object v5, p0, Landroid/app/Notification$CarExtender$Builder;->mReadPendingIntent:Landroid/app/PendingIntent;

    iget-wide v7, p0, Landroid/app/Notification$CarExtender$Builder;->mLatestTimestamp:J

    invoke-direct/range {v1 .. v8}, Landroid/app/Notification$CarExtender$UnreadConversation;-><init>([Ljava/lang/String;Landroid/app/RemoteInput;Landroid/app/PendingIntent;Landroid/app/PendingIntent;[Ljava/lang/String;J)V

    return-object v1
.end method

.method public whitelist setLatestTimestamp(J)Landroid/app/Notification$CarExtender$Builder;
    .registers 3
    .param p1, "timestamp"    # J

    .line 14451
    iput-wide p1, p0, Landroid/app/Notification$CarExtender$Builder;->mLatestTimestamp:J

    .line 14452
    return-object p0
.end method

.method public whitelist setReadPendingIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$CarExtender$Builder;
    .registers 2
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 14435
    iput-object p1, p0, Landroid/app/Notification$CarExtender$Builder;->mReadPendingIntent:Landroid/app/PendingIntent;

    .line 14436
    return-object p0
.end method

.method public whitelist setReplyAction(Landroid/app/PendingIntent;Landroid/app/RemoteInput;)Landroid/app/Notification$CarExtender$Builder;
    .registers 3
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "remoteInput"    # Landroid/app/RemoteInput;

    .line 14421
    iput-object p2, p0, Landroid/app/Notification$CarExtender$Builder;->mRemoteInput:Landroid/app/RemoteInput;

    .line 14422
    iput-object p1, p0, Landroid/app/Notification$CarExtender$Builder;->mReplyPendingIntent:Landroid/app/PendingIntent;

    .line 14424
    return-object p0
.end method
