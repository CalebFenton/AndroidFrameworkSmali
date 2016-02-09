.class public Landroid/service/notification/StatusBarNotification;
.super Ljava/lang/Object;
.source "StatusBarNotification.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/StatusBarNotification$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final groupKey:Ljava/lang/String;

.field private final id:I

.field private final initialPid:I

.field private final key:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final notification:Landroid/app/Notification;

.field private final opPkg:Ljava/lang/String;

.field private final pkg:Ljava/lang/String;

.field private final postTime:J

.field private final score:I

.field private final tag:Ljava/lang/String;

.field private final uid:I

.field private final user:Landroid/os/UserHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 135
    new-instance v0, Landroid/service/notification/StatusBarNotification$1;

    #@2
    invoke-direct {v0}, Landroid/service/notification/StatusBarNotification$1;-><init>()V

    #@5
    .line 134
    sput-object v0, Landroid/service/notification/StatusBarNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    #@9
    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->opPkg:Ljava/lang/String;

    #@f
    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/service/notification/StatusBarNotification;->id:I

    #@15
    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_0

    #@1b
    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    #@21
    .line 84
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@24
    move-result v0

    #@25
    iput v0, p0, Landroid/service/notification/StatusBarNotification;->uid:I

    #@27
    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2a
    move-result v0

    #@2b
    iput v0, p0, Landroid/service/notification/StatusBarNotification;->initialPid:I

    #@2d
    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@30
    move-result v0

    #@31
    iput v0, p0, Landroid/service/notification/StatusBarNotification;->score:I

    #@33
    .line 87
    new-instance v0, Landroid/app/Notification;

    #@35
    invoke-direct {v0, p1}, Landroid/app/Notification;-><init>(Landroid/os/Parcel;)V

    #@38
    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    #@3a
    .line 88
    invoke-static {p1}, Landroid/os/UserHandle;->readFromParcel(Landroid/os/Parcel;)Landroid/os/UserHandle;

    #@3d
    move-result-object v0

    #@3e
    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    #@40
    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@43
    move-result-wide v0

    #@44
    iput-wide v0, p0, Landroid/service/notification/StatusBarNotification;->postTime:J

    #@46
    .line 90
    invoke-direct {p0}, Landroid/service/notification/StatusBarNotification;->key()Ljava/lang/String;

    #@49
    move-result-object v0

    #@4a
    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->key:Ljava/lang/String;

    #@4c
    .line 91
    invoke-direct {p0}, Landroid/service/notification/StatusBarNotification;->groupKey()Ljava/lang/String;

    #@4f
    move-result-object v0

    #@50
    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->groupKey:Ljava/lang/String;

    #@52
    .line 75
    return-void

    #@53
    .line 82
    :cond_0
    const/4 v0, 0x0

    #@54
    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    #@56
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILandroid/app/Notification;Landroid/os/UserHandle;)V
    .locals 12
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "initialPid"    # I
    .param p7, "score"    # I
    .param p8, "notification"    # Landroid/app/Notification;
    .param p9, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v10

    #@4
    move-object v0, p0

    #@5
    move-object v1, p1

    #@6
    move-object v2, p2

    #@7
    move v3, p3

    #@8
    move-object/from16 v4, p4

    #@a
    move/from16 v5, p5

    #@c
    move/from16 v6, p6

    #@e
    move/from16 v7, p7

    #@10
    move-object/from16 v8, p8

    #@12
    move-object/from16 v9, p9

    #@14
    .line 51
    invoke-direct/range {v0 .. v11}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILandroid/app/Notification;Landroid/os/UserHandle;J)V

    #@17
    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILandroid/app/Notification;Landroid/os/UserHandle;J)V
    .locals 2
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

    #@0
    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 58
    if-nez p1, :cond_0

    #@5
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@a
    throw v0

    #@b
    .line 59
    :cond_0
    if-nez p8, :cond_1

    #@d
    new-instance v0, Ljava/lang/NullPointerException;

    #@f
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@12
    throw v0

    #@13
    .line 61
    :cond_1
    iput-object p1, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    #@15
    .line 62
    iput-object p2, p0, Landroid/service/notification/StatusBarNotification;->opPkg:Ljava/lang/String;

    #@17
    .line 63
    iput p3, p0, Landroid/service/notification/StatusBarNotification;->id:I

    #@19
    .line 64
    iput-object p4, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    #@1b
    .line 65
    iput p5, p0, Landroid/service/notification/StatusBarNotification;->uid:I

    #@1d
    .line 66
    iput p6, p0, Landroid/service/notification/StatusBarNotification;->initialPid:I

    #@1f
    .line 67
    iput p7, p0, Landroid/service/notification/StatusBarNotification;->score:I

    #@21
    .line 68
    iput-object p8, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    #@23
    .line 69
    iput-object p9, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    #@25
    .line 70
    iput-wide p10, p0, Landroid/service/notification/StatusBarNotification;->postTime:J

    #@27
    .line 71
    invoke-direct {p0}, Landroid/service/notification/StatusBarNotification;->key()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->key:Ljava/lang/String;

    #@2d
    .line 72
    invoke-direct {p0}, Landroid/service/notification/StatusBarNotification;->groupKey()Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->groupKey:Ljava/lang/String;

    #@33
    .line 57
    return-void
.end method

.method private groupKey()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 99
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 100
    .local v0, "group":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2}, Landroid/app/Notification;->getSortKey()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    .line 101
    .local v1, "sortKey":Ljava/lang/String;
    if-nez v0, :cond_0

    #@12
    if-nez v1, :cond_0

    #@14
    .line 103
    iget-object v2, p0, Landroid/service/notification/StatusBarNotification;->key:Ljava/lang/String;

    #@16
    return-object v2

    #@17
    .line 105
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    iget-object v3, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    #@1e
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    #@21
    move-result v3

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    const-string/jumbo v3, "|"

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    iget-object v3, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    #@2f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    const-string/jumbo v3, "|"

    #@36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    .line 106
    if-nez v0, :cond_1

    #@3c
    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v4, "p:"

    #@44
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v2

    #@48
    iget-object v4, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    #@4a
    iget v4, v4, Landroid/app/Notification;->priority:I

    #@4c
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v2

    #@50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v2

    #@54
    .line 105
    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v2

    #@58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v2

    #@5c
    return-object v2

    #@5d
    .line 108
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    const-string/jumbo v4, "g:"

    #@65
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v2

    #@69
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v2

    #@6d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v2

    #@71
    goto :goto_0
.end method

.method private key()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    #@7
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    #@a
    move-result v1

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    const-string/jumbo v1, "|"

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    iget-object v1, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    const-string/jumbo v1, "|"

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    iget v1, p0, Landroid/service/notification/StatusBarNotification;->id:I

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    const-string/jumbo v1, "|"

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    iget-object v1, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    #@32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    const-string/jumbo v1, "|"

    #@39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    iget v1, p0, Landroid/service/notification/StatusBarNotification;->uid:I

    #@3f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@42
    move-result-object v0

    #@43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v0

    #@47
    return-object v0
.end method


# virtual methods
.method public clone()Landroid/service/notification/StatusBarNotification;
    .locals 12

    #@0
    .prologue
    .line 161
    new-instance v0, Landroid/service/notification/StatusBarNotification;

    #@2
    iget-object v1, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    #@4
    iget-object v2, p0, Landroid/service/notification/StatusBarNotification;->opPkg:Ljava/lang/String;

    #@6
    .line 162
    iget v3, p0, Landroid/service/notification/StatusBarNotification;->id:I

    #@8
    iget-object v4, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    #@a
    iget v5, p0, Landroid/service/notification/StatusBarNotification;->uid:I

    #@c
    iget v6, p0, Landroid/service/notification/StatusBarNotification;->initialPid:I

    #@e
    .line 163
    iget v7, p0, Landroid/service/notification/StatusBarNotification;->score:I

    #@10
    iget-object v8, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    #@12
    invoke-virtual {v8}, Landroid/app/Notification;->clone()Landroid/app/Notification;

    #@15
    move-result-object v8

    #@16
    iget-object v9, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    #@18
    iget-wide v10, p0, Landroid/service/notification/StatusBarNotification;->postTime:J

    #@1a
    .line 161
    invoke-direct/range {v0 .. v11}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILandroid/app/Notification;Landroid/os/UserHandle;J)V

    #@1d
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 160
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->clone()Landroid/service/notification/StatusBarNotification;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public cloneLight()Landroid/service/notification/StatusBarNotification;
    .locals 12

    #@0
    .prologue
    .line 152
    new-instance v8, Landroid/app/Notification;

    #@2
    invoke-direct {v8}, Landroid/app/Notification;-><init>()V

    #@5
    .line 153
    .local v8, "no":Landroid/app/Notification;
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    #@7
    const/4 v1, 0x0

    #@8
    invoke-virtual {v0, v8, v1}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    #@b
    .line 154
    new-instance v0, Landroid/service/notification/StatusBarNotification;

    #@d
    iget-object v1, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    #@f
    iget-object v2, p0, Landroid/service/notification/StatusBarNotification;->opPkg:Ljava/lang/String;

    #@11
    .line 155
    iget v3, p0, Landroid/service/notification/StatusBarNotification;->id:I

    #@13
    iget-object v4, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    #@15
    iget v5, p0, Landroid/service/notification/StatusBarNotification;->uid:I

    #@17
    iget v6, p0, Landroid/service/notification/StatusBarNotification;->initialPid:I

    #@19
    .line 156
    iget v7, p0, Landroid/service/notification/StatusBarNotification;->score:I

    #@1b
    iget-object v9, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    #@1d
    iget-wide v10, p0, Landroid/service/notification/StatusBarNotification;->postTime:J

    #@1f
    .line 154
    invoke-direct/range {v0 .. v11}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILandroid/app/Notification;Landroid/os/UserHandle;J)V

    #@22
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 131
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getGroupKey()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 266
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->groupKey:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getId()I
    .locals 1

    #@0
    .prologue
    .line 206
    iget v0, p0, Landroid/service/notification/StatusBarNotification;->id:I

    #@2
    return v0
.end method

.method public getInitialPid()I
    .locals 1

    #@0
    .prologue
    .line 227
    iget v0, p0, Landroid/service/notification/StatusBarNotification;->initialPid:I

    #@2
    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 259
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->key:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getNotification()Landroid/app/Notification;
    .locals 1

    #@0
    .prologue
    .line 233
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    #@2
    return-object v0
.end method

.method public getOpPkg()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 222
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->opPkg:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPackageContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 273
    iget-object v2, p0, Landroid/service/notification/StatusBarNotification;->mContext:Landroid/content/Context;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 275
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@8
    move-result-object v2

    #@9
    .line 276
    iget-object v3, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    #@b
    const/16 v4, 0x2000

    #@d
    .line 275
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@10
    move-result-object v0

    #@11
    .line 278
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    const/4 v2, 0x4

    #@12
    .line 277
    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;

    #@15
    move-result-object v2

    #@16
    iput-object v2, p0, Landroid/service/notification/StatusBarNotification;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    .line 283
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/service/notification/StatusBarNotification;->mContext:Landroid/content/Context;

    #@1a
    if-nez v2, :cond_1

    #@1c
    .line 284
    iput-object p1, p0, Landroid/service/notification/StatusBarNotification;->mContext:Landroid/content/Context;

    #@1e
    .line 286
    :cond_1
    iget-object v2, p0, Landroid/service/notification/StatusBarNotification;->mContext:Landroid/content/Context;

    #@20
    return-object v2

    #@21
    .line 279
    :catch_0
    move-exception v1

    #@22
    .line 280
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iput-object v5, p0, Landroid/service/notification/StatusBarNotification;->mContext:Landroid/content/Context;

    #@24
    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 201
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPostTime()J
    .locals 2

    #@0
    .prologue
    .line 247
    iget-wide v0, p0, Landroid/service/notification/StatusBarNotification;->postTime:J

    #@2
    return-wide v0
.end method

.method public getScore()I
    .locals 1

    #@0
    .prologue
    .line 252
    iget v0, p0, Landroid/service/notification/StatusBarNotification;->score:I

    #@2
    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 212
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getUid()I
    .locals 1

    #@0
    .prologue
    .line 217
    iget v0, p0, Landroid/service/notification/StatusBarNotification;->uid:I

    #@2
    return v0
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 1

    #@0
    .prologue
    .line 240
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    #@2
    return-object v0
.end method

.method public getUserId()I
    .locals 1

    #@0
    .prologue
    .line 196
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    #@2
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isClearable()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 186
    iget-object v1, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    #@3
    iget v1, v1, Landroid/app/Notification;->flags:I

    #@5
    and-int/lit8 v1, v1, 0x2

    #@7
    if-nez v1, :cond_0

    #@9
    .line 187
    iget-object v1, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    #@b
    iget v1, v1, Landroid/app/Notification;->flags:I

    #@d
    and-int/lit8 v1, v1, 0x20

    #@f
    if-nez v1, :cond_0

    #@11
    const/4 v0, 0x1

    #@12
    .line 186
    :cond_0
    return v0
.end method

.method public isOngoing()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 178
    iget-object v1, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    #@3
    iget v1, v1, Landroid/app/Notification;->flags:I

    #@5
    and-int/lit8 v1, v1, 0x2

    #@7
    if-eqz v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 169
    const-string/jumbo v0, "StatusBarNotification(pkg=%s user=%s id=%d tag=%s score=%d key=%s: %s)"

    #@3
    .line 168
    const/4 v1, 0x7

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    .line 170
    iget-object v2, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    #@8
    const/4 v3, 0x0

    #@9
    aput-object v2, v1, v3

    #@b
    iget-object v2, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    #@d
    const/4 v3, 0x1

    #@e
    aput-object v2, v1, v3

    #@10
    iget v2, p0, Landroid/service/notification/StatusBarNotification;->id:I

    #@12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@15
    move-result-object v2

    #@16
    const/4 v3, 0x2

    #@17
    aput-object v2, v1, v3

    #@19
    iget-object v2, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    #@1b
    const/4 v3, 0x3

    #@1c
    aput-object v2, v1, v3

    #@1e
    .line 171
    iget v2, p0, Landroid/service/notification/StatusBarNotification;->score:I

    #@20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@23
    move-result-object v2

    #@24
    const/4 v3, 0x4

    #@25
    aput-object v2, v1, v3

    #@27
    iget-object v2, p0, Landroid/service/notification/StatusBarNotification;->key:Ljava/lang/String;

    #@29
    const/4 v3, 0x5

    #@2a
    aput-object v2, v1, v3

    #@2c
    iget-object v2, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    #@2e
    const/4 v3, 0x6

    #@2f
    aput-object v2, v1, v3

    #@31
    .line 168
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 112
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 113
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->opPkg:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 114
    iget v0, p0, Landroid/service/notification/StatusBarNotification;->id:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 115
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 116
    const/4 v0, 0x1

    #@14
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 117
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    #@19
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1c
    .line 121
    :goto_0
    iget v0, p0, Landroid/service/notification/StatusBarNotification;->uid:I

    #@1e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 122
    iget v0, p0, Landroid/service/notification/StatusBarNotification;->initialPid:I

    #@23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@26
    .line 123
    iget v0, p0, Landroid/service/notification/StatusBarNotification;->score:I

    #@28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2b
    .line 124
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    #@2d
    invoke-virtual {v0, p1, p2}, Landroid/app/Notification;->writeToParcel(Landroid/os/Parcel;I)V

    #@30
    .line 125
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    #@32
    invoke-virtual {v0, p1, p2}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    #@35
    .line 127
    iget-wide v0, p0, Landroid/service/notification/StatusBarNotification;->postTime:J

    #@37
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@3a
    .line 111
    return-void

    #@3b
    .line 119
    :cond_0
    const/4 v0, 0x0

    #@3c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@3f
    goto :goto_0
.end method
