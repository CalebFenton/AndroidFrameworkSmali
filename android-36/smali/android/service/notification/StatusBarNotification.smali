.class public Landroid/service/notification/StatusBarNotification;
.super Ljava/lang/Object;
.source "StatusBarNotification.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation
.end field

.field static final blacklist MAX_LOG_TAG_LENGTH:I = 0x24


# instance fields
.field private greylist-max-o groupKey:Ljava/lang/String;

.field private final greylist id:I

.field private final greylist-max-p initialPid:I

.field private final greylist-max-o key:Ljava/lang/String;

.field private greylist-max-o mContext:Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final blacklist mContextForDisplayId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mInstanceId:Lcom/android/internal/logging/InstanceId;

.field private final greylist-max-p notification:Landroid/app/Notification;

.field private final greylist-max-o opPkg:Ljava/lang/String;

.field private greylist-max-o overrideGroupKey:Ljava/lang/String;

.field private final greylist pkg:Ljava/lang/String;

.field private final greylist-max-p postTime:J

.field private final greylist-max-p tag:Ljava/lang/String;

.field private final greylist uid:I

.field private final greylist-max-p user:Landroid/os/UserHandle;


# direct methods
.method public static synthetic blacklist $r8$lambda$yqtKczzsguE1wf1XWsW0TWXv_40(Landroid/service/notification/StatusBarNotification;Landroid/content/Context;Ljava/lang/Integer;)Landroid/content/Context;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/notification/StatusBarNotification;->lambda$getPackageContext$0(Landroid/content/Context;Ljava/lang/Integer;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 266
    new-instance v0, Landroid/service/notification/StatusBarNotification$1;

    invoke-direct {v0}, Landroid/service/notification/StatusBarNotification$1;-><init>()V

    sput-object v0, Landroid/service/notification/StatusBarNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 87
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->mContextForDisplayId:Ljava/util/Map;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->opPkg:Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/StatusBarNotification;->id:I

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2d

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    goto :goto_30

    .line 140
    :cond_2d
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    .line 142
    :goto_30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/StatusBarNotification;->uid:I

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/StatusBarNotification;->initialPid:I

    .line 144
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0, p1}, Landroid/app/Notification;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    .line 145
    invoke-static {p1}, Landroid/os/UserHandle;->readFromParcel(Landroid/os/Parcel;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/service/notification/StatusBarNotification;->postTime:J

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5b

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->overrideGroupKey:Ljava/lang/String;

    .line 150
    :cond_5b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6b

    .line 151
    sget-object v0, Lcom/android/internal/logging/InstanceId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/logging/InstanceId;

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    .line 153
    :cond_6b
    invoke-direct {p0}, Landroid/service/notification/StatusBarNotification;->key()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->key:Ljava/lang/String;

    .line 154
    invoke-direct {p0}, Landroid/service/notification/StatusBarNotification;->groupKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->groupKey:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILandroid/app/Notification;Landroid/os/UserHandle;J)V
    .registers 13
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "initialPid"    # I
    .param p7, "score"    # I
    .param p8, "notification"    # Landroid/app/Notification;
    .param p9, "user"    # Landroid/os/UserHandle;
    .param p10, "postTime"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 87
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->mContextForDisplayId:Ljava/util/Map;

    .line 117
    if-eqz p1, :cond_37

    .line 118
    if-eqz p8, :cond_31

    .line 120
    iput-object p1, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    .line 121
    iput-object p2, p0, Landroid/service/notification/StatusBarNotification;->opPkg:Ljava/lang/String;

    .line 122
    iput p3, p0, Landroid/service/notification/StatusBarNotification;->id:I

    .line 123
    iput-object p4, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    .line 124
    iput p5, p0, Landroid/service/notification/StatusBarNotification;->uid:I

    .line 125
    iput p6, p0, Landroid/service/notification/StatusBarNotification;->initialPid:I

    .line 126
    iput-object p8, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    .line 127
    iput-object p9, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    .line 128
    iput-wide p10, p0, Landroid/service/notification/StatusBarNotification;->postTime:J

    .line 129
    invoke-direct {p0}, Landroid/service/notification/StatusBarNotification;->key()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->key:Ljava/lang/String;

    .line 130
    invoke-direct {p0}, Landroid/service/notification/StatusBarNotification;->groupKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->groupKey:Ljava/lang/String;

    .line 131
    return-void

    .line 118
    :cond_31
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 117
    :cond_37
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILandroid/app/Notification;Landroid/os/UserHandle;Ljava/lang/String;J)V
    .registers 13
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "initialPid"    # I
    .param p7, "notification"    # Landroid/app/Notification;
    .param p8, "user"    # Landroid/os/UserHandle;
    .param p9, "overrideGroupKey"    # Ljava/lang/String;
    .param p10, "postTime"    # J

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 87
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->mContextForDisplayId:Ljava/util/Map;

    .line 93
    if-eqz p1, :cond_39

    .line 94
    if-eqz p7, :cond_33

    .line 96
    iput-object p1, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    .line 97
    iput-object p2, p0, Landroid/service/notification/StatusBarNotification;->opPkg:Ljava/lang/String;

    .line 98
    iput p3, p0, Landroid/service/notification/StatusBarNotification;->id:I

    .line 99
    iput-object p4, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    .line 100
    iput p5, p0, Landroid/service/notification/StatusBarNotification;->uid:I

    .line 101
    iput p6, p0, Landroid/service/notification/StatusBarNotification;->initialPid:I

    .line 102
    iput-object p7, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    .line 103
    iput-object p8, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    .line 104
    iput-wide p10, p0, Landroid/service/notification/StatusBarNotification;->postTime:J

    .line 105
    iput-object p9, p0, Landroid/service/notification/StatusBarNotification;->overrideGroupKey:Ljava/lang/String;

    .line 106
    invoke-direct {p0}, Landroid/service/notification/StatusBarNotification;->key()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->key:Ljava/lang/String;

    .line 107
    invoke-direct {p0}, Landroid/service/notification/StatusBarNotification;->groupKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->groupKey:Ljava/lang/String;

    .line 108
    return-void

    .line 94
    :cond_33
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 93
    :cond_39
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private blacklist createPackageContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 523
    :try_start_0
    const-string v0, "StatusBarNotification#createPackageContext"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 524
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    .line 526
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNormalizedUserId()I

    move-result v2

    .line 525
    const/16 v3, 0x2000

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 527
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;

    move-result-object v1
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_1a} :catch_23
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1e

    .line 531
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 527
    return-object v1

    .line 531
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catchall_1e
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 532
    throw v0

    .line 528
    :catch_23
    move-exception v0

    .line 529
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    nop

    .line 531
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 529
    return-object p1
.end method

.method public static blacklist getPkgFromKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "key"    # Ljava/lang/String;

    .line 177
    const-string v0, "\\|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "parts":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_e

    .line 179
    const/4 v1, 0x1

    aget-object v1, v0, v1

    return-object v1

    .line 181
    :cond_e
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist getUidFromKey(Ljava/lang/String;)I
    .registers 5
    .param p0, "key"    # Ljava/lang/String;

    .line 161
    const-string v0, "\\|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "parts":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x5

    const/4 v3, -0x1

    if-lt v1, v2, :cond_15

    .line 164
    const/4 v1, 0x4

    :try_start_c
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_12} :catch_13

    .line 165
    .local v1, "uid":I
    return v1

    .line 166
    .end local v1    # "uid":I
    :catch_13
    move-exception v1

    .line 167
    .local v1, "e":Ljava/lang/NumberFormatException;
    return v3

    .line 170
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_15
    return v3
.end method

.method private greylist-max-o groupKey()Ljava/lang/String;
    .registers 6

    .line 193
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->overrideGroupKey:Ljava/lang/String;

    const-string/jumbo v1, "|"

    if-eqz v0, :cond_3b

    .line 194
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/Flags;->notificationForceGrouping()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 195
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->overrideGroupKey:Ljava/lang/String;

    return-object v0

    .line 197
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|g:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/StatusBarNotification;->overrideGroupKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 200
    :cond_3b
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "group":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->getSortKey()Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, "sortKey":Ljava/lang/String;
    if-nez v0, :cond_52

    if-nez v2, :cond_52

    .line 204
    iget-object v1, p0, Landroid/service/notification/StatusBarNotification;->key:Ljava/lang/String;

    return-object v1

    .line 206
    :cond_52
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 207
    if-nez v0, :cond_8b

    .line 208
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "c:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    invoke-virtual {v4}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_9e

    .line 209
    :cond_8b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "g:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_9e
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 206
    return-object v1
.end method

.method private greylist-max-o key()Ljava/lang/String;
    .registers 4

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/service/notification/StatusBarNotification;->id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/service/notification/StatusBarNotification;->uid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "sbnKey":Ljava/lang/String;
    iget-object v2, p0, Landroid/service/notification/StatusBarNotification;->overrideGroupKey:Ljava/lang/String;

    if-eqz v2, :cond_63

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v2

    if-eqz v2, :cond_63

    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/notification/StatusBarNotification;->overrideGroupKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    :cond_63
    return-object v0
.end method

.method private synthetic blacklist lambda$getPackageContext$0(Landroid/content/Context;Ljava/lang/Integer;)Landroid/content/Context;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "displayId"    # Ljava/lang/Integer;

    .line 500
    invoke-direct {p0, p1}, Landroid/service/notification/StatusBarNotification;->createPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private blacklist shortenTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "logTag"    # Ljava/lang/String;

    .line 602
    if-eqz p1, :cond_37

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x24

    if-gt v0, v1, :cond_b

    goto :goto_37

    .line 605
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 606
    .local v0, "hash":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x1

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 603
    .end local v0    # "hash":Ljava/lang/String;
    :cond_37
    :goto_37
    return-object p1
.end method


# virtual methods
.method public blacklist clearPackageContext()V
    .registers 2

    .line 471
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->enablePerDisplayPackageContextCacheInStatusbarNotif()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 472
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->mContextForDisplayId:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_f

    .line 474
    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->mContext:Landroid/content/Context;

    .line 476
    :goto_f
    return-void
.end method

.method public whitelist clone()Landroid/service/notification/StatusBarNotification;
    .registers 2

    .line 288
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    invoke-virtual {v0}, Landroid/app/Notification;->clone()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/service/notification/StatusBarNotification;->cloneShallow(Landroid/app/Notification;)Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->clone()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o cloneLight()Landroid/service/notification/StatusBarNotification;
    .registers 4

    .line 281
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 282
    .local v0, "no":Landroid/app/Notification;
    iget-object v1, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    .line 283
    invoke-virtual {p0, v0}, Landroid/service/notification/StatusBarNotification;->cloneShallow(Landroid/app/Notification;)Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    return-object v1
.end method

.method public blacklist cloneShallow(Landroid/app/Notification;)Landroid/service/notification/StatusBarNotification;
    .registers 14
    .param p1, "notification"    # Landroid/app/Notification;

    .line 298
    new-instance v0, Landroid/service/notification/StatusBarNotification;

    iget-object v1, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    iget-object v2, p0, Landroid/service/notification/StatusBarNotification;->opPkg:Ljava/lang/String;

    iget v3, p0, Landroid/service/notification/StatusBarNotification;->id:I

    iget-object v4, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    iget v5, p0, Landroid/service/notification/StatusBarNotification;->uid:I

    iget v6, p0, Landroid/service/notification/StatusBarNotification;->initialPid:I

    iget-object v8, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    iget-object v9, p0, Landroid/service/notification/StatusBarNotification;->overrideGroupKey:Ljava/lang/String;

    iget-wide v10, p0, Landroid/service/notification/StatusBarNotification;->postTime:J

    move-object v7, p1

    .end local p1    # "notification":Landroid/app/Notification;
    .local v7, "notification":Landroid/app/Notification;
    invoke-direct/range {v0 .. v11}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILandroid/app/Notification;Landroid/os/UserHandle;Ljava/lang/String;J)V

    .line 301
    .local v0, "result":Landroid/service/notification/StatusBarNotification;
    iget-object p1, p0, Landroid/service/notification/StatusBarNotification;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    invoke-virtual {v0, p1}, Landroid/service/notification/StatusBarNotification;->setInstanceId(Lcom/android/internal/logging/InstanceId;)V

    .line 302
    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 262
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getChannelIdLogTag()Ljava/lang/String;
    .registers 2

    .line 591
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    invoke-virtual {v0}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    .line 592
    const/4 v0, 0x0

    return-object v0

    .line 594
    :cond_a
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    invoke-virtual {v0}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/service/notification/StatusBarNotification;->shortenTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getGroup()Ljava/lang/String;
    .registers 2

    .line 446
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->overrideGroupKey:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 447
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->overrideGroupKey:Ljava/lang/String;

    return-object v0

    .line 449
    :cond_7
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getGroupKey()Ljava/lang/String;
    .registers 2

    .line 437
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->groupKey:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getGroupLogTag()Ljava/lang/String;
    .registers 2

    .line 581
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getGroup()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/service/notification/StatusBarNotification;->shortenTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getId()I
    .registers 2

    .line 370
    iget v0, p0, Landroid/service/notification/StatusBarNotification;->id:I

    return v0
.end method

.method public greylist getInitialPid()I
    .registers 2

    .line 400
    iget v0, p0, Landroid/service/notification/StatusBarNotification;->initialPid:I

    return v0
.end method

.method public blacklist getInstanceId()Lcom/android/internal/logging/InstanceId;
    .registers 2

    .line 482
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    return-object v0
.end method

.method public whitelist getKey()Ljava/lang/String;
    .registers 2

    .line 430
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->key:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getLogMaker()Landroid/metrics/LogMaker;
    .registers 6

    .line 541
    new-instance v0, Landroid/metrics/LogMaker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 542
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x31c

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 543
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x31d

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 544
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getChannelIdLogTag()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x359

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 545
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getGroupLogTag()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3b2

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 547
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 546
    const/16 v2, 0x3b3

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 549
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 548
    const/16 v2, 0x669

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 550
    .local v0, "logMaker":Landroid/metrics/LogMaker;
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_a5

    .line 553
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.template"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 554
    .local v1, "template":Ljava/lang/String;
    if-eqz v1, :cond_82

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_82

    .line 555
    nop

    .line 556
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 555
    const/16 v3, 0x6d1

    invoke-virtual {v0, v3, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 558
    :cond_82
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.people.list"

    const-class v4, Landroid/app/Person;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v2

    .line 560
    .local v2, "people":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Person;>;"
    if-eqz v2, :cond_a5

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a5

    .line 561
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x6d0

    invoke-virtual {v0, v4, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 564
    .end local v1    # "template":Ljava/lang/String;
    .end local v2    # "people":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Person;>;"
    :cond_a5
    return-object v0
.end method

.method public blacklist getNormalizedUserId()I
    .registers 3

    .line 356
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    .line 357
    .local v0, "userId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 358
    const/4 v0, 0x0

    .line 360
    :cond_8
    return v0
.end method

.method public whitelist getNotification()Landroid/app/Notification;
    .registers 2

    .line 408
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    return-object v0
.end method

.method public whitelist getOpPkg()Ljava/lang/String;
    .registers 2

    .line 394
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->opPkg:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getOverrideGroupKey()Ljava/lang/String;
    .registers 2

    .line 464
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->overrideGroupKey:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-r getPackageContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 497
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->enablePerDisplayPackageContextCacheInStatusbarNotif()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    .line 498
    if-nez p1, :cond_a

    return-object v1

    .line 499
    :cond_a
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->mContextForDisplayId:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/service/notification/StatusBarNotification$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Landroid/service/notification/StatusBarNotification$$ExternalSyntheticLambda0;-><init>(Landroid/service/notification/StatusBarNotification;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0

    .line 502
    :cond_20
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->mContext:Landroid/content/Context;

    if-nez v0, :cond_3f

    .line 504
    :try_start_24
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    .line 507
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNormalizedUserId()I

    move-result v3

    .line 505
    const/16 v4, 0x2000

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 508
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    const/4 v2, 0x4

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Landroid/service/notification/StatusBarNotification;->mContext:Landroid/content/Context;
    :try_end_3b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_24 .. :try_end_3b} :catch_3c

    .line 512
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    goto :goto_3f

    .line 510
    :catch_3c
    move-exception v0

    .line 511
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iput-object v1, p0, Landroid/service/notification/StatusBarNotification;->mContext:Landroid/content/Context;

    .line 514
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3f
    :goto_3f
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->mContext:Landroid/content/Context;

    if-nez v0, :cond_45

    .line 515
    iput-object p1, p0, Landroid/service/notification/StatusBarNotification;->mContext:Landroid/content/Context;

    .line 517
    :cond_45
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 365
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPostTime()J
    .registers 3

    .line 423
    iget-wide v0, p0, Landroid/service/notification/StatusBarNotification;->postTime:J

    return-wide v0
.end method

.method public blacklist getShortcutId()Ljava/lang/String;
    .registers 2

    .line 571
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getShortcutId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTag()Ljava/lang/String;
    .registers 2

    .line 378
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getUid()I
    .registers 2

    .line 385
    iget v0, p0, Landroid/service/notification/StatusBarNotification;->uid:I

    return v0
.end method

.method public whitelist getUser()Landroid/os/UserHandle;
    .registers 2

    .line 415
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    return-object v0
.end method

.method public whitelist getUserId()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 348
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    return v0
.end method

.method public whitelist isAppGroup()Z
    .registers 2

    .line 226
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_17

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getSortKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    goto :goto_17

    .line 229
    :cond_15
    const/4 v0, 0x0

    return v0

    .line 227
    :cond_17
    :goto_17
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isClearable()Z
    .registers 2

    .line 337
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_12

    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public whitelist isGroup()Z
    .registers 2

    .line 216
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->overrideGroupKey:Ljava/lang/String;

    if-nez v0, :cond_d

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    .line 219
    :cond_b
    const/4 v0, 0x0

    return v0

    .line 217
    :cond_d
    :goto_d
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isNonDismissable()Z
    .registers 2

    .line 328
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist isOngoing()Z
    .registers 2

    .line 318
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist setInstanceId(Lcom/android/internal/logging/InstanceId;)V
    .registers 2
    .param p1, "instanceId"    # Lcom/android/internal/logging/InstanceId;

    .line 489
    iput-object p1, p0, Landroid/service/notification/StatusBarNotification;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    .line 490
    return-void
.end method

.method public whitelist setOverrideGroupKey(Ljava/lang/String;)V
    .registers 3
    .param p1, "overrideGroupKey"    # Ljava/lang/String;

    .line 456
    iput-object p1, p0, Landroid/service/notification/StatusBarNotification;->overrideGroupKey:Ljava/lang/String;

    .line 457
    invoke-direct {p0}, Landroid/service/notification/StatusBarNotification;->groupKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->groupKey:Ljava/lang/String;

    .line 458
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 307
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    iget-object v1, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    iget v2, p0, Landroid/service/notification/StatusBarNotification;->id:I

    .line 309
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    iget-object v4, p0, Landroid/service/notification/StatusBarNotification;->key:Ljava/lang/String;

    iget-object v5, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    .line 307
    const-string v1, "StatusBarNotification(pkg=%s user=%s id=%d tag=%s key=%s: %s)"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 233
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->opPkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 235
    iget v0, p0, Landroid/service/notification/StatusBarNotification;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1e

    .line 237
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_21

    .line 240
    :cond_1e
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    :goto_21
    iget v0, p0, Landroid/service/notification/StatusBarNotification;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    iget v0, p0, Landroid/service/notification/StatusBarNotification;->initialPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    invoke-virtual {v0, p1, p2}, Landroid/app/Notification;->writeToParcel(Landroid/os/Parcel;I)V

    .line 245
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, p2}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 246
    iget-wide v3, p0, Landroid/service/notification/StatusBarNotification;->postTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 247
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->overrideGroupKey:Ljava/lang/String;

    if-eqz v0, :cond_47

    .line 248
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->overrideGroupKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_4a

    .line 251
    :cond_47
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    :goto_4a
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    if-eqz v0, :cond_57

    .line 254
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/logging/InstanceId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5a

    .line 257
    :cond_57
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    :goto_5a
    return-void
.end method
