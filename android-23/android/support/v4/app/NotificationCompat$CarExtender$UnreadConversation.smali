.class public Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;
.super Landroid/support/v4/app/NotificationCompatBase$UnreadConversation;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat$CarExtender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnreadConversation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation$Builder;,
        Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation$1;
    }
.end annotation


# static fields
.field static final FACTORY:Landroid/support/v4/app/NotificationCompatBase$UnreadConversation$Factory;


# instance fields
.field private final mLatestTimestamp:J

.field private final mMessages:[Ljava/lang/String;

.field private final mParticipants:[Ljava/lang/String;

.field private final mReadPendingIntent:Landroid/app/PendingIntent;

.field private final mRemoteInput:Landroid/support/v4/app/RemoteInput;

.field private final mReplyPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 3157
    new-instance v0, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation$1;

    #@2
    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation$1;-><init>()V

    #@5
    sput-object v0, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;->FACTORY:Landroid/support/v4/app/NotificationCompatBase$UnreadConversation$Factory;

    #@7
    .line 3078
    return-void
.end method

.method constructor <init>([Ljava/lang/String;Landroid/support/v4/app/RemoteInput;Landroid/app/PendingIntent;Landroid/app/PendingIntent;[Ljava/lang/String;J)V
    .locals 0
    .param p1, "messages"    # [Ljava/lang/String;
    .param p2, "remoteInput"    # Landroid/support/v4/app/RemoteInput;
    .param p3, "replyPendingIntent"    # Landroid/app/PendingIntent;
    .param p4, "readPendingIntent"    # Landroid/app/PendingIntent;
    .param p5, "participants"    # [Ljava/lang/String;
    .param p6, "latestTimestamp"    # J

    #@0
    .prologue
    .line 3086
    invoke-direct {p0}, Landroid/support/v4/app/NotificationCompatBase$UnreadConversation;-><init>()V

    #@3
    .line 3089
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;->mMessages:[Ljava/lang/String;

    #@5
    .line 3090
    iput-object p2, p0, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;->mRemoteInput:Landroid/support/v4/app/RemoteInput;

    #@7
    .line 3091
    iput-object p4, p0, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;->mReadPendingIntent:Landroid/app/PendingIntent;

    #@9
    .line 3092
    iput-object p3, p0, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;->mReplyPendingIntent:Landroid/app/PendingIntent;

    #@b
    .line 3093
    iput-object p5, p0, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    #@d
    .line 3094
    iput-wide p6, p0, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;->mLatestTimestamp:J

    #@f
    .line 3088
    return-void
.end method


# virtual methods
.method public getLatestTimestamp()J
    .locals 2

    #@0
    .prologue
    .line 3153
    iget-wide v0, p0, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;->mLatestTimestamp:J

    #@2
    return-wide v0
.end method

.method public getMessages()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 3102
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;->mMessages:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getParticipant()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 3145
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    #@3
    array-length v0, v0

    #@4
    if-lez v0, :cond_0

    #@6
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

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
    .line 3137
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getReadPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    #@0
    .prologue
    .line 3129
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;->mReadPendingIntent:Landroid/app/PendingIntent;

    #@2
    return-object v0
.end method

.method public getRemoteInput()Landroid/support/v4/app/RemoteInput;
    .locals 1

    #@0
    .prologue
    .line 3111
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;->mRemoteInput:Landroid/support/v4/app/RemoteInput;

    #@2
    return-object v0
.end method

.method public bridge synthetic getRemoteInput()Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
    .locals 1

    #@0
    .prologue
    .line 3110
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;->getRemoteInput()Landroid/support/v4/app/RemoteInput;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getReplyPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    #@0
    .prologue
    .line 3120
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;->mReplyPendingIntent:Landroid/app/PendingIntent;

    #@2
    return-object v0
.end method
