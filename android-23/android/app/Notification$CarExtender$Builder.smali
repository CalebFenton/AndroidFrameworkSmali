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
.field private mLatestTimestamp:J

.field private final mMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mParticipant:Ljava/lang/String;

.field private mReadPendingIntent:Landroid/app/PendingIntent;

.field private mRemoteInput:Landroid/app/RemoteInput;

.field private mReplyPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 5586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 5574
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/app/Notification$CarExtender$Builder;->mMessages:Ljava/util/List;

    #@a
    .line 5587
    iput-object p1, p0, Landroid/app/Notification$CarExtender$Builder;->mParticipant:Ljava/lang/String;

    #@c
    .line 5586
    return-void
.end method


# virtual methods
.method public addMessage(Ljava/lang/String;)Landroid/app/Notification$CarExtender$Builder;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 5599
    iget-object v0, p0, Landroid/app/Notification$CarExtender$Builder;->mMessages:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5
    .line 5600
    return-object p0
.end method

.method public build()Landroid/app/Notification$CarExtender$UnreadConversation;
    .locals 8

    #@0
    .prologue
    .line 5656
    iget-object v0, p0, Landroid/app/Notification$CarExtender$Builder;->mMessages:Ljava/util/List;

    #@2
    iget-object v2, p0, Landroid/app/Notification$CarExtender$Builder;->mMessages:Ljava/util/List;

    #@4
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@7
    move-result v2

    #@8
    new-array v2, v2, [Ljava/lang/String;

    #@a
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, [Ljava/lang/String;

    #@10
    .line 5657
    .local v1, "messages":[Ljava/lang/String;
    const/4 v0, 0x1

    #@11
    new-array v5, v0, [Ljava/lang/String;

    #@13
    iget-object v0, p0, Landroid/app/Notification$CarExtender$Builder;->mParticipant:Ljava/lang/String;

    #@15
    const/4 v2, 0x0

    #@16
    aput-object v0, v5, v2

    #@18
    .line 5658
    .local v5, "participants":[Ljava/lang/String;
    new-instance v0, Landroid/app/Notification$CarExtender$UnreadConversation;

    #@1a
    iget-object v2, p0, Landroid/app/Notification$CarExtender$Builder;->mRemoteInput:Landroid/app/RemoteInput;

    #@1c
    iget-object v3, p0, Landroid/app/Notification$CarExtender$Builder;->mReplyPendingIntent:Landroid/app/PendingIntent;

    #@1e
    .line 5659
    iget-object v4, p0, Landroid/app/Notification$CarExtender$Builder;->mReadPendingIntent:Landroid/app/PendingIntent;

    #@20
    iget-wide v6, p0, Landroid/app/Notification$CarExtender$Builder;->mLatestTimestamp:J

    #@22
    .line 5658
    invoke-direct/range {v0 .. v7}, Landroid/app/Notification$CarExtender$UnreadConversation;-><init>([Ljava/lang/String;Landroid/app/RemoteInput;Landroid/app/PendingIntent;Landroid/app/PendingIntent;[Ljava/lang/String;J)V

    #@25
    return-object v0
.end method

.method public setLatestTimestamp(J)Landroid/app/Notification$CarExtender$Builder;
    .locals 1
    .param p1, "timestamp"    # J

    #@0
    .prologue
    .line 5646
    iput-wide p1, p0, Landroid/app/Notification$CarExtender$Builder;->mLatestTimestamp:J

    #@2
    .line 5647
    return-object p0
.end method

.method public setReadPendingIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$CarExtender$Builder;
    .locals 0
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 5630
    iput-object p1, p0, Landroid/app/Notification$CarExtender$Builder;->mReadPendingIntent:Landroid/app/PendingIntent;

    #@2
    .line 5631
    return-object p0
.end method

.method public setReplyAction(Landroid/app/PendingIntent;Landroid/app/RemoteInput;)Landroid/app/Notification$CarExtender$Builder;
    .locals 0
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "remoteInput"    # Landroid/app/RemoteInput;

    #@0
    .prologue
    .line 5616
    iput-object p2, p0, Landroid/app/Notification$CarExtender$Builder;->mRemoteInput:Landroid/app/RemoteInput;

    #@2
    .line 5617
    iput-object p1, p0, Landroid/app/Notification$CarExtender$Builder;->mReplyPendingIntent:Landroid/app/PendingIntent;

    #@4
    .line 5619
    return-object p0
.end method
