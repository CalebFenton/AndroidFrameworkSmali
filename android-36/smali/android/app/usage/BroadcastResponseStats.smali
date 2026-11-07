.class public final Landroid/app/usage/BroadcastResponseStats;
.super Ljava/lang/Object;
.source "BroadcastResponseStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/usage/BroadcastResponseStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mBroadcastsDispatchedCount:I

.field private final blacklist mId:J

.field private blacklist mNotificationsCancelledCount:I

.field private blacklist mNotificationsPostedCount:I

.field private blacklist mNotificationsUpdatedCount:I

.field private final blacklist mPackageName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 226
    new-instance v0, Landroid/app/usage/BroadcastResponseStats$1;

    invoke-direct {v0}, Landroid/app/usage/BroadcastResponseStats$1;-><init>()V

    sput-object v0, Landroid/app/usage/BroadcastResponseStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/usage/BroadcastResponseStats;->mPackageName:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/BroadcastResponseStats;->mId:J

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/usage/BroadcastResponseStats;->mBroadcastsDispatchedCount:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/usage/BroadcastResponseStats;->mNotificationsPostedCount:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/usage/BroadcastResponseStats;->mNotificationsUpdatedCount:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/usage/BroadcastResponseStats;->mNotificationsCancelledCount:I

    .line 67
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/usage/BroadcastResponseStats-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/usage/BroadcastResponseStats;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;J)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "id"    # J

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Landroid/app/usage/BroadcastResponseStats;->mPackageName:Ljava/lang/String;

    .line 57
    iput-wide p2, p0, Landroid/app/usage/BroadcastResponseStats;->mId:J

    .line 58
    return-void
.end method


# virtual methods
.method public blacklist addCounts(Landroid/app/usage/BroadcastResponseStats;)V
    .registers 3
    .param p1, "stats"    # Landroid/app/usage/BroadcastResponseStats;

    .line 169
    invoke-virtual {p1}, Landroid/app/usage/BroadcastResponseStats;->getBroadcastsDispatchedCount()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/usage/BroadcastResponseStats;->incrementBroadcastsDispatchedCount(I)V

    .line 170
    invoke-virtual {p1}, Landroid/app/usage/BroadcastResponseStats;->getNotificationsPostedCount()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/usage/BroadcastResponseStats;->incrementNotificationsPostedCount(I)V

    .line 171
    invoke-virtual {p1}, Landroid/app/usage/BroadcastResponseStats;->getNotificationsUpdatedCount()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/usage/BroadcastResponseStats;->incrementNotificationsUpdatedCount(I)V

    .line 172
    invoke-virtual {p1}, Landroid/app/usage/BroadcastResponseStats;->getNotificationsCancelledCount()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/usage/BroadcastResponseStats;->incrementNotificationsCancelledCount(I)V

    .line 173
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "obj"    # Ljava/lang/Object;

    .line 177
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 178
    return v0

    .line 180
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3c

    instance-of v2, p1, Landroid/app/usage/BroadcastResponseStats;

    if-nez v2, :cond_c

    goto :goto_3c

    .line 183
    :cond_c
    move-object v2, p1

    check-cast v2, Landroid/app/usage/BroadcastResponseStats;

    .line 184
    .local v2, "other":Landroid/app/usage/BroadcastResponseStats;
    iget v3, p0, Landroid/app/usage/BroadcastResponseStats;->mBroadcastsDispatchedCount:I

    iget v4, v2, Landroid/app/usage/BroadcastResponseStats;->mBroadcastsDispatchedCount:I

    if-ne v3, v4, :cond_3a

    iget v3, p0, Landroid/app/usage/BroadcastResponseStats;->mNotificationsPostedCount:I

    iget v4, v2, Landroid/app/usage/BroadcastResponseStats;->mNotificationsPostedCount:I

    if-ne v3, v4, :cond_3a

    iget v3, p0, Landroid/app/usage/BroadcastResponseStats;->mNotificationsUpdatedCount:I

    iget v4, v2, Landroid/app/usage/BroadcastResponseStats;->mNotificationsUpdatedCount:I

    if-ne v3, v4, :cond_3a

    iget v3, p0, Landroid/app/usage/BroadcastResponseStats;->mNotificationsCancelledCount:I

    iget v4, v2, Landroid/app/usage/BroadcastResponseStats;->mNotificationsCancelledCount:I

    if-ne v3, v4, :cond_3a

    iget-wide v3, p0, Landroid/app/usage/BroadcastResponseStats;->mId:J

    iget-wide v5, v2, Landroid/app/usage/BroadcastResponseStats;->mId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3a

    iget-object v3, p0, Landroid/app/usage/BroadcastResponseStats;->mPackageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/usage/BroadcastResponseStats;->mPackageName:Ljava/lang/String;

    .line 189
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    goto :goto_3b

    :cond_3a
    move v0, v1

    .line 184
    :goto_3b
    return v0

    .line 181
    .end local v2    # "other":Landroid/app/usage/BroadcastResponseStats;
    :cond_3c
    :goto_3c
    return v1
.end method

.method public whitelist getBroadcastsDispatchedCount()I
    .registers 2

    .line 96
    iget v0, p0, Landroid/app/usage/BroadcastResponseStats;->mBroadcastsDispatchedCount:I

    return v0
.end method

.method public whitelist getId()J
    .registers 3

    .line 82
    iget-wide v0, p0, Landroid/app/usage/BroadcastResponseStats;->mId:J

    return-wide v0
.end method

.method public whitelist getNotificationsCancelledCount()I
    .registers 2

    .line 144
    iget v0, p0, Landroid/app/usage/BroadcastResponseStats;->mNotificationsCancelledCount:I

    return v0
.end method

.method public whitelist getNotificationsPostedCount()I
    .registers 2

    .line 112
    iget v0, p0, Landroid/app/usage/BroadcastResponseStats;->mNotificationsPostedCount:I

    return v0
.end method

.method public whitelist getNotificationsUpdatedCount()I
    .registers 2

    .line 128
    iget v0, p0, Landroid/app/usage/BroadcastResponseStats;->mNotificationsUpdatedCount:I

    return v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 74
    iget-object v0, p0, Landroid/app/usage/BroadcastResponseStats;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 7

    .line 194
    iget-object v0, p0, Landroid/app/usage/BroadcastResponseStats;->mPackageName:Ljava/lang/String;

    iget-wide v1, p0, Landroid/app/usage/BroadcastResponseStats;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget v2, p0, Landroid/app/usage/BroadcastResponseStats;->mBroadcastsDispatchedCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/app/usage/BroadcastResponseStats;->mNotificationsPostedCount:I

    .line 195
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Landroid/app/usage/BroadcastResponseStats;->mNotificationsUpdatedCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Landroid/app/usage/BroadcastResponseStats;->mNotificationsCancelledCount:I

    .line 196
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    .line 194
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist incrementBroadcastsDispatchedCount(I)V
    .registers 3
    .param p1, "count"    # I

    .line 149
    iget v0, p0, Landroid/app/usage/BroadcastResponseStats;->mBroadcastsDispatchedCount:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/app/usage/BroadcastResponseStats;->mBroadcastsDispatchedCount:I

    .line 150
    return-void
.end method

.method public blacklist incrementNotificationsCancelledCount(I)V
    .registers 3
    .param p1, "count"    # I

    .line 164
    iget v0, p0, Landroid/app/usage/BroadcastResponseStats;->mNotificationsCancelledCount:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/app/usage/BroadcastResponseStats;->mNotificationsCancelledCount:I

    .line 165
    return-void
.end method

.method public blacklist incrementNotificationsPostedCount(I)V
    .registers 3
    .param p1, "count"    # I

    .line 154
    iget v0, p0, Landroid/app/usage/BroadcastResponseStats;->mNotificationsPostedCount:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/app/usage/BroadcastResponseStats;->mNotificationsPostedCount:I

    .line 155
    return-void
.end method

.method public blacklist incrementNotificationsUpdatedCount(I)V
    .registers 3
    .param p1, "count"    # I

    .line 159
    iget v0, p0, Landroid/app/usage/BroadcastResponseStats;->mNotificationsUpdatedCount:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/app/usage/BroadcastResponseStats;->mNotificationsUpdatedCount:I

    .line 160
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stats {package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/usage/BroadcastResponseStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/app/usage/BroadcastResponseStats;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",broadcastsSent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/usage/BroadcastResponseStats;->mBroadcastsDispatchedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",notificationsPosted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/usage/BroadcastResponseStats;->mNotificationsPostedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",notificationsUpdated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/usage/BroadcastResponseStats;->mNotificationsUpdatedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",notificationsCancelled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/usage/BroadcastResponseStats;->mNotificationsCancelledCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 218
    iget-object v0, p0, Landroid/app/usage/BroadcastResponseStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 219
    iget-wide v0, p0, Landroid/app/usage/BroadcastResponseStats;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 220
    iget v0, p0, Landroid/app/usage/BroadcastResponseStats;->mBroadcastsDispatchedCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    iget v0, p0, Landroid/app/usage/BroadcastResponseStats;->mNotificationsPostedCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    iget v0, p0, Landroid/app/usage/BroadcastResponseStats;->mNotificationsUpdatedCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    iget v0, p0, Landroid/app/usage/BroadcastResponseStats;->mNotificationsCancelledCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    return-void
.end method
