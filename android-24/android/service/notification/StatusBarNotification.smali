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
.field private groupKey:Ljava/lang/String;

.field private final id:I

.field private final initialPid:I

.field private final key:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final notification:Landroid/app/Notification;

.field private final opPkg:Ljava/lang/String;

.field private overrideGroupKey:Ljava/lang/String;

.field private final pkg:Ljava/lang/String;

.field private final postTime:J

.field private final tag:Ljava/lang/String;

.field private final uid:I

.field private final user:Landroid/os/UserHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 192
    new-instance v0, Landroid/service/notification/StatusBarNotification$1;

    #@2
    invoke-direct {v0}, Landroid/service/notification/StatusBarNotification$1;-><init>()V

    #@5
    .line 191
    sput-object v0, Landroid/service/notification/StatusBarNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    #@a
    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->opPkg:Ljava/lang/String;

    #@10
    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@13
    move-result v0

    #@14
    iput v0, p0, Landroid/service/notification/StatusBarNotification;->id:I

    #@16
    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_0

    #@1c
    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    #@22
    .line 104
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v0

    #@26
    iput v0, p0, Landroid/service/notification/StatusBarNotification;->uid:I

    #@28
    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2b
    move-result v0

    #@2c
    iput v0, p0, Landroid/service/notification/StatusBarNotification;->initialPid:I

    #@2e
    .line 106
    new-instance v0, Landroid/app/Notification;

    #@30
    invoke-direct {v0, p1}, Landroid/app/Notification;-><init>(Landroid/os/Parcel;)V

    #@33
    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    #@35
    .line 107
    invoke-static {p1}, Landroid/os/UserHandle;->readFromParcel(Landroid/os/Parcel;)Landroid/os/UserHandle;

    #@38
    move-result-object v0

    #@39
    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    #@3b
    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@3e
    move-result-wide v0

    #@3f
    iput-wide v0, p0, Landroid/service/notification/StatusBarNotification;->postTime:J

    #@41
    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@44
    move-result v0

    #@45
    if-eqz v0, :cond_1

    #@47
    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4a
    move-result-object v0

    #@4b
    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->overrideGroupKey:Ljava/lang/String;

    #@4d
    .line 114
    :goto_1
    invoke-direct {p0}, Landroid/service/notification/StatusBarNotification;->key()Ljava/lang/String;

    #@50
    move-result-object v0

    #@51
    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->key:Ljava/lang/String;

    #@53
    .line 115
    invoke-direct {p0}, Landroid/service/notification/StatusBarNotification;->groupKey()Ljava/lang/String;

    #@56
    move-result-object v0

    #@57
    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->groupKey:Ljava/lang/String;

    #@59
    .line 95
    return-void

    #@5a
    .line 102
    :cond_0
    iput-object v2, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    #@5c
    goto :goto_0

    #@5d
    .line 112
    :cond_1
    iput-object v2, p0, Landroid/service/notification/StatusBarNotification;->overrideGroupKey:Ljava/lang/String;

    #@5f
    goto :goto_1
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
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 79
    if-nez p1, :cond_0

    #@5
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@a
    throw v0

    #@b
    .line 80
    :cond_0
    if-nez p8, :cond_1

    #@d
    new-instance v0, Ljava/lang/NullPointerException;

    #@f
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@12
    throw v0

    #@13
    .line 82
    :cond_1
    iput-object p1, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    #@15
    .line 83
    iput-object p2, p0, Landroid/service/notification/StatusBarNotification;->opPkg:Ljava/lang/String;

    #@17
    .line 84
    iput p3, p0, Landroid/service/notification/StatusBarNotification;->id:I

    #@19
    .line 85
    iput-object p4, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    #@1b
    .line 86
    iput p5, p0, Landroid/service/notification/StatusBarNotification;->uid:I

    #@1d
    .line 87
    iput p6, p0, Landroid/service/notification/StatusBarNotification;->initialPid:I

    #@1f
    .line 88
    iput-object p8, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    #@21
    .line 89
    iput-object p9, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    #@23
    .line 90
    iput-wide p10, p0, Landroid/service/notification/StatusBarNotification;->postTime:J

    #@25
    .line 91
    invoke-direct {p0}, Landroid/service/notification/StatusBarNotification;->key()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->key:Ljava/lang/String;

    #@2b
    .line 92
    invoke-direct {p0}, Landroid/service/notification/StatusBarNotification;->groupKey()Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->groupKey:Ljava/lang/String;

    #@31
    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILandroid/app/Notification;Landroid/os/UserHandle;Ljava/lang/String;J)V
    .locals 2
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

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 59
    if-nez p1, :cond_0

    #@5
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@a
    throw v0

    #@b
    .line 60
    :cond_0
    if-nez p7, :cond_1

    #@d
    new-instance v0, Ljava/lang/NullPointerException;

    #@f
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@12
    throw v0

    #@13
    .line 62
    :cond_1
    iput-object p1, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    #@15
    .line 63
    iput-object p2, p0, Landroid/service/notification/StatusBarNotification;->opPkg:Ljava/lang/String;

    #@17
    .line 64
    iput p3, p0, Landroid/service/notification/StatusBarNotification;->id:I

    #@19
    .line 65
    iput-object p4, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    #@1b
    .line 66
    iput p5, p0, Landroid/service/notification/StatusBarNotification;->uid:I

    #@1d
    .line 67
    iput p6, p0, Landroid/service/notification/StatusBarNotification;->initialPid:I

    #@1f
    .line 68
    iput-object p7, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    #@21
    .line 69
    iput-object p8, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    #@23
    .line 70
    iput-wide p10, p0, Landroid/service/notification/StatusBarNotification;->postTime:J

    #@25
    .line 71
    iput-object p9, p0, Landroid/service/notification/StatusBarNotification;->overrideGroupKey:Ljava/lang/String;

    #@27
    .line 72
    invoke-direct {p0}, Landroid/service/notification/StatusBarNotification;->key()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->key:Ljava/lang/String;

    #@2d
    .line 73
    invoke-direct {p0}, Landroid/service/notification/StatusBarNotification;->groupKey()Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->groupKey:Ljava/lang/String;

    #@33
    .line 58
    return-void
.end method

.method private groupKey()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 127
    iget-object v2, p0, Landroid/service/notification/StatusBarNotification;->overrideGroupKey:Ljava/lang/String;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    iget-object v3, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    #@b
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    #@e
    move-result v3

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    const-string/jumbo v3, "|"

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    iget-object v3, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    const-string/jumbo v3, "|"

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    const-string/jumbo v3, "g:"

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    iget-object v3, p0, Landroid/service/notification/StatusBarNotification;->overrideGroupKey:Ljava/lang/String;

    #@30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    return-object v2

    #@39
    .line 130
    :cond_0
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    #@3c
    move-result-object v2

    #@3d
    invoke-virtual {v2}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    .line 131
    .local v0, "group":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {v2}, Landroid/app/Notification;->getSortKey()Ljava/lang/String;

    #@48
    move-result-object v1

    #@49
    .line 132
    .local v1, "sortKey":Ljava/lang/String;
    if-nez v0, :cond_1

    #@4b
    if-nez v1, :cond_1

    #@4d
    .line 134
    iget-object v2, p0, Landroid/service/notification/StatusBarNotification;->key:Ljava/lang/String;

    #@4f
    return-object v2

    #@50
    .line 136
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    iget-object v3, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    #@57
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    #@5a
    move-result v3

    #@5b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v2

    #@5f
    const-string/jumbo v3, "|"

    #@62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v2

    #@66
    iget-object v3, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    #@68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v2

    #@6c
    const-string/jumbo v3, "|"

    #@6f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v3

    #@73
    .line 137
    if-nez v0, :cond_2

    #@75
    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    #@77
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@7a
    const-string/jumbo v4, "p:"

    #@7d
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v2

    #@81
    iget-object v4, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    #@83
    iget v4, v4, Landroid/app/Notification;->priority:I

    #@85
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@88
    move-result-object v2

    #@89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8c
    move-result-object v2

    #@8d
    .line 136
    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v2

    #@91
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v2

    #@95
    return-object v2

    #@96
    .line 139
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    #@98
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9b
    const-string/jumbo v4, "g:"

    #@9e
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v2

    #@a2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v2

    #@a6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a9
    move-result-object v2

    #@aa
    goto :goto_0
.end method

.method private key()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v2, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    #@7
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    #@a
    move-result v2

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    const-string/jumbo v2, "|"

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    iget-object v2, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    const-string/jumbo v2, "|"

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    iget v2, p0, Landroid/service/notification/StatusBarNotification;->id:I

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    const-string/jumbo v2, "|"

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    iget-object v2, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    #@32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    const-string/jumbo v2, "|"

    #@39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    iget v2, p0, Landroid/service/notification/StatusBarNotification;->uid:I

    #@3f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v0

    #@47
    .line 120
    .local v0, "sbnKey":Ljava/lang/String;
    iget-object v1, p0, Landroid/service/notification/StatusBarNotification;->overrideGroupKey:Ljava/lang/String;

    #@49
    if-eqz v1, :cond_0

    #@4b
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    #@4e
    move-result-object v1

    #@4f
    invoke-virtual {v1}, Landroid/app/Notification;->isGroupSummary()Z

    #@52
    move-result v1

    #@53
    if-eqz v1, :cond_0

    #@55
    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v1

    #@5e
    const-string/jumbo v2, "|"

    #@61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v1

    #@65
    iget-object v2, p0, Landroid/service/notification/StatusBarNotification;->overrideGroupKey:Ljava/lang/String;

    #@67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v1

    #@6b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v0

    #@6f
    .line 123
    :cond_0
    return-object v0
.end method


# virtual methods
.method public clone()Landroid/service/notification/StatusBarNotification;
    .locals 12

    #@0
    .prologue
    .line 218
    new-instance v0, Landroid/service/notification/StatusBarNotification;

    #@2
    iget-object v1, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    #@4
    iget-object v2, p0, Landroid/service/notification/StatusBarNotification;->opPkg:Ljava/lang/String;

    #@6
    .line 219
    iget v3, p0, Landroid/service/notification/StatusBarNotification;->id:I

    #@8
    iget-object v4, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    #@a
    iget v5, p0, Landroid/service/notification/StatusBarNotification;->uid:I

    #@c
    iget v6, p0, Landroid/service/notification/StatusBarNotification;->initialPid:I

    #@e
    .line 220
    iget-object v7, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    #@10
    invoke-virtual {v7}, Landroid/app/Notification;->clone()Landroid/app/Notification;

    #@13
    move-result-object v7

    #@14
    iget-object v8, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    #@16
    iget-object v9, p0, Landroid/service/notification/StatusBarNotification;->overrideGroupKey:Ljava/lang/String;

    #@18
    iget-wide v10, p0, Landroid/service/notification/StatusBarNotification;->postTime:J

    #@1a
    .line 218
    invoke-direct/range {v0 .. v11}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILandroid/app/Notification;Landroid/os/UserHandle;Ljava/lang/String;J)V

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
    .line 217
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
    .line 209
    new-instance v7, Landroid/app/Notification;

    #@2
    invoke-direct {v7}, Landroid/app/Notification;-><init>()V

    #@5
    .line 210
    .local v7, "no":Landroid/app/Notification;
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    #@7
    const/4 v1, 0x0

    #@8
    invoke-virtual {v0, v7, v1}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    #@b
    .line 211
    new-instance v0, Landroid/service/notification/StatusBarNotification;

    #@d
    iget-object v1, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    #@f
    iget-object v2, p0, Landroid/service/notification/StatusBarNotification;->opPkg:Ljava/lang/String;

    #@11
    .line 212
    iget v3, p0, Landroid/service/notification/StatusBarNotification;->id:I

    #@13
    iget-object v4, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    #@15
    iget v5, p0, Landroid/service/notification/StatusBarNotification;->uid:I

    #@17
    iget v6, p0, Landroid/service/notification/StatusBarNotification;->initialPid:I

    #@19
    .line 213
    iget-object v8, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    #@1b
    iget-object v9, p0, Landroid/service/notification/StatusBarNotification;->overrideGroupKey:Ljava/lang/String;

    #@1d
    iget-wide v10, p0, Landroid/service/notification/StatusBarNotification;->postTime:J

    #@1f
    .line 211
    invoke-direct/range {v0 .. v11}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILandroid/app/Notification;Landroid/os/UserHandle;Ljava/lang/String;J)V

    #@22
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 188
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getGroupKey()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 318
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->groupKey:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getId()I
    .locals 1

    #@0
    .prologue
    .line 263
    iget v0, p0, Landroid/service/notification/StatusBarNotification;->id:I

    #@2
    return v0
.end method

.method public getInitialPid()I
    .locals 1

    #@0
    .prologue
    .line 284
    iget v0, p0, Landroid/service/notification/StatusBarNotification;->initialPid:I

    #@2
    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 311
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->key:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getNotification()Landroid/app/Notification;
    .locals 1

    #@0
    .prologue
    .line 290
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    #@2
    return-object v0
.end method

.method public getOpPkg()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 279
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->opPkg:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getOverrideGroupKey()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 333
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->overrideGroupKey:Ljava/lang/String;

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
    .line 340
    iget-object v2, p0, Landroid/service/notification/StatusBarNotification;->mContext:Landroid/content/Context;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 342
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@8
    move-result-object v2

    #@9
    .line 343
    iget-object v3, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    #@b
    const/16 v4, 0x2000

    #@d
    .line 342
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@10
    move-result-object v0

    #@11
    .line 345
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    const/4 v2, 0x4

    #@12
    .line 344
    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;

    #@15
    move-result-object v2

    #@16
    iput-object v2, p0, Landroid/service/notification/StatusBarNotification;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    .line 350
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/service/notification/StatusBarNotification;->mContext:Landroid/content/Context;

    #@1a
    if-nez v2, :cond_1

    #@1c
    .line 351
    iput-object p1, p0, Landroid/service/notification/StatusBarNotification;->mContext:Landroid/content/Context;

    #@1e
    .line 353
    :cond_1
    iget-object v2, p0, Landroid/service/notification/StatusBarNotification;->mContext:Landroid/content/Context;

    #@20
    return-object v2

    #@21
    .line 346
    :catch_0
    move-exception v1

    #@22
    .line 347
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iput-object v5, p0, Landroid/service/notification/StatusBarNotification;->mContext:Landroid/content/Context;

    #@24
    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 258
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPostTime()J
    .locals 2

    #@0
    .prologue
    .line 304
    iget-wide v0, p0, Landroid/service/notification/StatusBarNotification;->postTime:J

    #@2
    return-wide v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 269
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getUid()I
    .locals 1

    #@0
    .prologue
    .line 274
    iget v0, p0, Landroid/service/notification/StatusBarNotification;->uid:I

    #@2
    return v0
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 1

    #@0
    .prologue
    .line 297
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    #@2
    return-object v0
.end method

.method public getUserId()I
    .locals 1

    #@0
    .prologue
    .line 253
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    #@2
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isAppGroup()Z
    .locals 1

    #@0
    .prologue
    .line 157
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    if-nez v0, :cond_0

    #@a
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Landroid/app/Notification;->getSortKey()Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 158
    :cond_0
    const/4 v0, 0x1

    #@15
    return v0

    #@16
    .line 160
    :cond_1
    const/4 v0, 0x0

    #@17
    return v0
.end method

.method public isClearable()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 243
    iget-object v1, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    #@3
    iget v1, v1, Landroid/app/Notification;->flags:I

    #@5
    and-int/lit8 v1, v1, 0x2

    #@7
    if-nez v1, :cond_0

    #@9
    .line 244
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
    .line 243
    :cond_0
    return v0
.end method

.method public isGroup()Z
    .locals 1

    #@0
    .prologue
    .line 146
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->overrideGroupKey:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 147
    :cond_0
    const/4 v0, 0x1

    #@b
    return v0

    #@c
    .line 149
    :cond_1
    const/4 v0, 0x0

    #@d
    return v0
.end method

.method public isOngoing()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 235
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

.method public setOverrideGroupKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "overrideGroupKey"    # Ljava/lang/String;

    #@0
    .prologue
    .line 325
    iput-object p1, p0, Landroid/service/notification/StatusBarNotification;->overrideGroupKey:Ljava/lang/String;

    #@2
    .line 326
    invoke-direct {p0}, Landroid/service/notification/StatusBarNotification;->groupKey()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->groupKey:Ljava/lang/String;

    #@8
    .line 324
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 226
    const-string/jumbo v0, "StatusBarNotification(pkg=%s user=%s id=%d tag=%s key=%s: %s)"

    #@3
    .line 225
    const/4 v1, 0x6

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    .line 227
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
    .line 228
    iget-object v2, p0, Landroid/service/notification/StatusBarNotification;->key:Ljava/lang/String;

    #@20
    const/4 v3, 0x4

    #@21
    aput-object v2, v1, v3

    #@23
    iget-object v2, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    #@25
    const/4 v3, 0x5

    #@26
    aput-object v2, v1, v3

    #@28
    .line 225
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 164
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@7
    .line 165
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->opPkg:Ljava/lang/String;

    #@9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@c
    .line 166
    iget v0, p0, Landroid/service/notification/StatusBarNotification;->id:I

    #@e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 167
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    #@13
    if-eqz v0, :cond_0

    #@15
    .line 168
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 169
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    #@1a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1d
    .line 173
    :goto_0
    iget v0, p0, Landroid/service/notification/StatusBarNotification;->uid:I

    #@1f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@22
    .line 174
    iget v0, p0, Landroid/service/notification/StatusBarNotification;->initialPid:I

    #@24
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@27
    .line 175
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    #@29
    invoke-virtual {v0, p1, p2}, Landroid/app/Notification;->writeToParcel(Landroid/os/Parcel;I)V

    #@2c
    .line 176
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    #@2e
    invoke-virtual {v0, p1, p2}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    #@31
    .line 178
    iget-wide v0, p0, Landroid/service/notification/StatusBarNotification;->postTime:J

    #@33
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@36
    .line 179
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->overrideGroupKey:Ljava/lang/String;

    #@38
    if-eqz v0, :cond_1

    #@3a
    .line 180
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@3d
    .line 181
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->overrideGroupKey:Ljava/lang/String;

    #@3f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@42
    .line 163
    :goto_1
    return-void

    #@43
    .line 171
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@46
    goto :goto_0

    #@47
    .line 183
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@4a
    goto :goto_1
.end method
