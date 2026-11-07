.class public final Landroid/app/people/ConversationChannel;
.super Ljava/lang/Object;
.source "ConversationChannel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/people/ConversationChannel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mHasActiveNotifications:Z

.field private blacklist mHasBirthdayToday:Z

.field private blacklist mLastEventTimestamp:J

.field private blacklist mNotificationChannel:Landroid/app/NotificationChannel;

.field private blacklist mNotificationChannelGroup:Landroid/app/NotificationChannelGroup;

.field private blacklist mShortcutInfo:Landroid/content/pm/ShortcutInfo;

.field private blacklist mStatuses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/people/ConversationStatus;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mUid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 46
    new-instance v0, Landroid/app/people/ConversationChannel$1;

    invoke-direct {v0}, Landroid/app/people/ConversationChannel$1;-><init>()V

    sput-object v0, Landroid/app/people/ConversationChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/pm/ShortcutInfo;ILandroid/app/NotificationChannel;Landroid/app/NotificationChannelGroup;JZ)V
    .registers 8
    .param p1, "shortcutInfo"    # Landroid/content/pm/ShortcutInfo;
    .param p2, "uid"    # I
    .param p3, "parentNotificationChannel"    # Landroid/app/NotificationChannel;
    .param p4, "parentNotificationChannelGroup"    # Landroid/app/NotificationChannelGroup;
    .param p5, "lastEventTimestamp"    # J
    .param p7, "hasActiveNotifications"    # Z

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Landroid/app/people/ConversationChannel;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 63
    iput p2, p0, Landroid/app/people/ConversationChannel;->mUid:I

    .line 64
    iput-object p3, p0, Landroid/app/people/ConversationChannel;->mNotificationChannel:Landroid/app/NotificationChannel;

    .line 65
    iput-object p4, p0, Landroid/app/people/ConversationChannel;->mNotificationChannelGroup:Landroid/app/NotificationChannelGroup;

    .line 66
    iput-wide p5, p0, Landroid/app/people/ConversationChannel;->mLastEventTimestamp:J

    .line 67
    iput-boolean p7, p0, Landroid/app/people/ConversationChannel;->mHasActiveNotifications:Z

    .line 68
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/pm/ShortcutInfo;ILandroid/app/NotificationChannel;Landroid/app/NotificationChannelGroup;JZZLjava/util/List;)V
    .registers 10
    .param p1, "shortcutInfo"    # Landroid/content/pm/ShortcutInfo;
    .param p2, "uid"    # I
    .param p3, "parentNotificationChannel"    # Landroid/app/NotificationChannel;
    .param p4, "parentNotificationChannelGroup"    # Landroid/app/NotificationChannelGroup;
    .param p5, "lastEventTimestamp"    # J
    .param p7, "hasActiveNotifications"    # Z
    .param p8, "hasBirthdayToday"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ShortcutInfo;",
            "I",
            "Landroid/app/NotificationChannel;",
            "Landroid/app/NotificationChannelGroup;",
            "JZZ",
            "Ljava/util/List<",
            "Landroid/app/people/ConversationStatus;",
            ">;)V"
        }
    .end annotation

    .line 74
    .local p9, "statuses":Ljava/util/List;, "Ljava/util/List<Landroid/app/people/ConversationStatus;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Landroid/app/people/ConversationChannel;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 76
    iput p2, p0, Landroid/app/people/ConversationChannel;->mUid:I

    .line 77
    iput-object p3, p0, Landroid/app/people/ConversationChannel;->mNotificationChannel:Landroid/app/NotificationChannel;

    .line 78
    iput-object p4, p0, Landroid/app/people/ConversationChannel;->mNotificationChannelGroup:Landroid/app/NotificationChannelGroup;

    .line 79
    iput-wide p5, p0, Landroid/app/people/ConversationChannel;->mLastEventTimestamp:J

    .line 80
    iput-boolean p7, p0, Landroid/app/people/ConversationChannel;->mHasActiveNotifications:Z

    .line 81
    iput-boolean p8, p0, Landroid/app/people/ConversationChannel;->mHasBirthdayToday:Z

    .line 82
    iput-object p9, p0, Landroid/app/people/ConversationChannel;->mStatuses:Ljava/util/List;

    .line 83
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const-class v0, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    iput-object v0, p0, Landroid/app/people/ConversationChannel;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/people/ConversationChannel;->mUid:I

    .line 88
    const-class v0, Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/app/NotificationChannel;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationChannel;

    iput-object v0, p0, Landroid/app/people/ConversationChannel;->mNotificationChannel:Landroid/app/NotificationChannel;

    .line 89
    const-class v0, Landroid/app/NotificationChannelGroup;

    .line 90
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/app/NotificationChannelGroup;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationChannelGroup;

    iput-object v0, p0, Landroid/app/people/ConversationChannel;->mNotificationChannelGroup:Landroid/app/NotificationChannelGroup;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/people/ConversationChannel;->mLastEventTimestamp:J

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/people/ConversationChannel;->mHasActiveNotifications:Z

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/people/ConversationChannel;->mHasBirthdayToday:Z

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/people/ConversationChannel;->mStatuses:Ljava/util/List;

    .line 95
    iget-object v0, p0, Landroid/app/people/ConversationChannel;->mStatuses:Ljava/util/List;

    const-class v1, Landroid/app/people/ConversationStatus;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/app/people/ConversationStatus;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    .line 96
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getLastEventTimestamp()J
    .registers 3

    .line 132
    iget-wide v0, p0, Landroid/app/people/ConversationChannel;->mLastEventTimestamp:J

    return-wide v0
.end method

.method public blacklist getNotificationChannel()Landroid/app/NotificationChannel;
    .registers 2

    .line 124
    iget-object v0, p0, Landroid/app/people/ConversationChannel;->mNotificationChannel:Landroid/app/NotificationChannel;

    return-object v0
.end method

.method public blacklist getNotificationChannelGroup()Landroid/app/NotificationChannelGroup;
    .registers 2

    .line 128
    iget-object v0, p0, Landroid/app/people/ConversationChannel;->mNotificationChannelGroup:Landroid/app/NotificationChannelGroup;

    return-object v0
.end method

.method public blacklist getShortcutInfo()Landroid/content/pm/ShortcutInfo;
    .registers 2

    .line 116
    iget-object v0, p0, Landroid/app/people/ConversationChannel;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    return-object v0
.end method

.method public blacklist getStatuses()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/people/ConversationStatus;",
            ">;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Landroid/app/people/ConversationChannel;->mStatuses:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getUid()I
    .registers 2

    .line 120
    iget v0, p0, Landroid/app/people/ConversationChannel;->mUid:I

    return v0
.end method

.method public blacklist hasActiveNotifications()Z
    .registers 2

    .line 140
    iget-boolean v0, p0, Landroid/app/people/ConversationChannel;->mHasActiveNotifications:Z

    return v0
.end method

.method public blacklist hasBirthdayToday()Z
    .registers 2

    .line 145
    iget-boolean v0, p0, Landroid/app/people/ConversationChannel;->mHasBirthdayToday:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConversationChannel{mShortcutInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/people/ConversationChannel;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/people/ConversationChannel;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNotificationChannel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/people/ConversationChannel;->mNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNotificationChannelGroup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/people/ConversationChannel;->mNotificationChannelGroup:Landroid/app/NotificationChannelGroup;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLastEventTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/app/people/ConversationChannel;->mLastEventTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHasActiveNotifications="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/people/ConversationChannel;->mHasActiveNotifications:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHasBirthdayToday="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/people/ConversationChannel;->mHasBirthdayToday:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStatuses="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/people/ConversationChannel;->mStatuses:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 105
    iget-object v0, p0, Landroid/app/people/ConversationChannel;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 106
    iget v0, p0, Landroid/app/people/ConversationChannel;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget-object v0, p0, Landroid/app/people/ConversationChannel;->mNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 108
    iget-object v0, p0, Landroid/app/people/ConversationChannel;->mNotificationChannelGroup:Landroid/app/NotificationChannelGroup;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 109
    iget-wide v0, p0, Landroid/app/people/ConversationChannel;->mLastEventTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 110
    iget-boolean v0, p0, Landroid/app/people/ConversationChannel;->mHasActiveNotifications:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 111
    iget-boolean v0, p0, Landroid/app/people/ConversationChannel;->mHasBirthdayToday:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 112
    iget-object v0, p0, Landroid/app/people/ConversationChannel;->mStatuses:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 113
    return-void
.end method
