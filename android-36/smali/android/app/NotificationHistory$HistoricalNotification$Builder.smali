.class public final Landroid/app/NotificationHistory$HistoricalNotification$Builder;
.super Ljava/lang/Object;
.source "NotificationHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/NotificationHistory$HistoricalNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mChannelId:Ljava/lang/String;

.field private blacklist mChannelName:Ljava/lang/String;

.field private blacklist mConversationId:Ljava/lang/String;

.field private blacklist mIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mPackage:Ljava/lang/String;

.field private blacklist mPostedTimeMs:J

.field private blacklist mText:Ljava/lang/String;

.field private blacklist mTitle:Ljava/lang/String;

.field private blacklist mUid:I

.field private blacklist mUserId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmPackage(Landroid/app/NotificationHistory$HistoricalNotification$Builder;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mPackage:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/app/NotificationHistory$HistoricalNotification;
    .registers 4

    .line 210
    new-instance v0, Landroid/app/NotificationHistory$HistoricalNotification;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification;-><init>(Landroid/app/NotificationHistory-IA;)V

    .line 211
    .local v0, "n":Landroid/app/NotificationHistory$HistoricalNotification;
    iget-object v1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mPackage:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification;->-$$Nest$fputmPackage(Landroid/app/NotificationHistory$HistoricalNotification;Ljava/lang/String;)V

    .line 212
    iget-object v1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mChannelName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification;->-$$Nest$fputmChannelName(Landroid/app/NotificationHistory$HistoricalNotification;Ljava/lang/String;)V

    .line 213
    iget-object v1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mChannelId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification;->-$$Nest$fputmChannelId(Landroid/app/NotificationHistory$HistoricalNotification;Ljava/lang/String;)V

    .line 214
    iget v1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mUid:I

    invoke-static {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification;->-$$Nest$fputmUid(Landroid/app/NotificationHistory$HistoricalNotification;I)V

    .line 215
    iget v1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mUserId:I

    invoke-static {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification;->-$$Nest$fputmUserId(Landroid/app/NotificationHistory$HistoricalNotification;I)V

    .line 216
    iget-wide v1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mPostedTimeMs:J

    invoke-static {v0, v1, v2}, Landroid/app/NotificationHistory$HistoricalNotification;->-$$Nest$fputmPostedTimeMs(Landroid/app/NotificationHistory$HistoricalNotification;J)V

    .line 217
    iget-object v1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mTitle:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification;->-$$Nest$fputmTitle(Landroid/app/NotificationHistory$HistoricalNotification;Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mText:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification;->-$$Nest$fputmText(Landroid/app/NotificationHistory$HistoricalNotification;Ljava/lang/String;)V

    .line 219
    iget-object v1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-static {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification;->-$$Nest$fputmIcon(Landroid/app/NotificationHistory$HistoricalNotification;Landroid/graphics/drawable/Icon;)V

    .line 220
    iget-object v1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mConversationId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification;->-$$Nest$fputmConversationId(Landroid/app/NotificationHistory$HistoricalNotification;Ljava/lang/String;)V

    .line 221
    return-object v0
.end method

.method public blacklist setChannelId(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    .registers 2
    .param p1, "channelId"    # Ljava/lang/String;

    .line 170
    iput-object p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mChannelId:Ljava/lang/String;

    .line 171
    return-object p0
.end method

.method public blacklist setChannelName(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    .registers 2
    .param p1, "channelName"    # Ljava/lang/String;

    .line 165
    iput-object p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mChannelName:Ljava/lang/String;

    .line 166
    return-object p0
.end method

.method public blacklist setConversationId(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    .registers 2
    .param p1, "conversationId"    # Ljava/lang/String;

    .line 205
    iput-object p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mConversationId:Ljava/lang/String;

    .line 206
    return-object p0
.end method

.method public blacklist setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    .registers 2
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 200
    iput-object p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    .line 201
    return-object p0
.end method

.method public blacklist setPackage(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    .registers 2
    .param p1, "aPackage"    # Ljava/lang/String;

    .line 160
    iput-object p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mPackage:Ljava/lang/String;

    .line 161
    return-object p0
.end method

.method public blacklist setPostedTimeMs(J)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    .registers 3
    .param p1, "postedTimeMs"    # J

    .line 185
    iput-wide p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mPostedTimeMs:J

    .line 186
    return-object p0
.end method

.method public blacklist setText(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    .registers 2
    .param p1, "text"    # Ljava/lang/String;

    .line 195
    iput-object p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mText:Ljava/lang/String;

    .line 196
    return-object p0
.end method

.method public blacklist setTitle(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    .registers 2
    .param p1, "title"    # Ljava/lang/String;

    .line 190
    iput-object p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mTitle:Ljava/lang/String;

    .line 191
    return-object p0
.end method

.method public blacklist setUid(I)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    .registers 2
    .param p1, "uid"    # I

    .line 175
    iput p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mUid:I

    .line 176
    return-object p0
.end method

.method public blacklist setUserId(I)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    .registers 2
    .param p1, "userId"    # I

    .line 180
    iput p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mUserId:I

    .line 181
    return-object p0
.end method
