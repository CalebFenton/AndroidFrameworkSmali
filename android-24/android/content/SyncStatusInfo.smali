.class public Landroid/content/SyncStatusInfo;
.super Ljava/lang/Object;
.source "SyncStatusInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/SyncStatusInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/SyncStatusInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Sync"

.field static final VERSION:I = 0x2


# instance fields
.field public final authorityId:I

.field public initialFailureTime:J

.field public initialize:Z

.field public lastFailureMesg:Ljava/lang/String;

.field public lastFailureSource:I

.field public lastFailureTime:J

.field public lastSuccessSource:I

.field public lastSuccessTime:J

.field public numSourceLocal:I

.field public numSourcePeriodic:I

.field public numSourcePoll:I

.field public numSourceServer:I

.field public numSourceUser:I

.field public numSyncs:I

.field public pending:Z

.field private periodicSyncTimes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public totalElapsedTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 175
    new-instance v0, Landroid/content/SyncStatusInfo$1;

    #@2
    invoke-direct {v0}, Landroid/content/SyncStatusInfo$1;-><init>()V

    #@5
    sput-object v0, Landroid/content/SyncStatusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 26
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "authorityId"    # I

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 53
    iput p1, p0, Landroid/content/SyncStatusInfo;->authorityId:I

    #@5
    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/SyncStatusInfo;)V
    .locals 2
    .param p1, "other"    # Landroid/content/SyncStatusInfo;

    #@0
    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 133
    iget v0, p1, Landroid/content/SyncStatusInfo;->authorityId:I

    #@5
    iput v0, p0, Landroid/content/SyncStatusInfo;->authorityId:I

    #@7
    .line 134
    iget-wide v0, p1, Landroid/content/SyncStatusInfo;->totalElapsedTime:J

    #@9
    iput-wide v0, p0, Landroid/content/SyncStatusInfo;->totalElapsedTime:J

    #@b
    .line 135
    iget v0, p1, Landroid/content/SyncStatusInfo;->numSyncs:I

    #@d
    iput v0, p0, Landroid/content/SyncStatusInfo;->numSyncs:I

    #@f
    .line 136
    iget v0, p1, Landroid/content/SyncStatusInfo;->numSourcePoll:I

    #@11
    iput v0, p0, Landroid/content/SyncStatusInfo;->numSourcePoll:I

    #@13
    .line 137
    iget v0, p1, Landroid/content/SyncStatusInfo;->numSourceServer:I

    #@15
    iput v0, p0, Landroid/content/SyncStatusInfo;->numSourceServer:I

    #@17
    .line 138
    iget v0, p1, Landroid/content/SyncStatusInfo;->numSourceLocal:I

    #@19
    iput v0, p0, Landroid/content/SyncStatusInfo;->numSourceLocal:I

    #@1b
    .line 139
    iget v0, p1, Landroid/content/SyncStatusInfo;->numSourceUser:I

    #@1d
    iput v0, p0, Landroid/content/SyncStatusInfo;->numSourceUser:I

    #@1f
    .line 140
    iget v0, p1, Landroid/content/SyncStatusInfo;->numSourcePeriodic:I

    #@21
    iput v0, p0, Landroid/content/SyncStatusInfo;->numSourcePeriodic:I

    #@23
    .line 141
    iget-wide v0, p1, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    #@25
    iput-wide v0, p0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    #@27
    .line 142
    iget v0, p1, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    #@29
    iput v0, p0, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    #@2b
    .line 143
    iget-wide v0, p1, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    #@2d
    iput-wide v0, p0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    #@2f
    .line 144
    iget v0, p1, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    #@31
    iput v0, p0, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    #@33
    .line 145
    iget-object v0, p1, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    #@35
    iput-object v0, p0, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    #@37
    .line 146
    iget-wide v0, p1, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    #@39
    iput-wide v0, p0, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    #@3b
    .line 147
    iget-boolean v0, p1, Landroid/content/SyncStatusInfo;->pending:Z

    #@3d
    iput-boolean v0, p0, Landroid/content/SyncStatusInfo;->pending:Z

    #@3f
    .line 148
    iget-boolean v0, p1, Landroid/content/SyncStatusInfo;->initialize:Z

    #@41
    iput-boolean v0, p0, Landroid/content/SyncStatusInfo;->initialize:Z

    #@43
    .line 149
    iget-object v0, p1, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    #@45
    if-eqz v0, :cond_0

    #@47
    .line 150
    new-instance v0, Ljava/util/ArrayList;

    #@49
    iget-object v1, p1, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    #@4b
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@4e
    iput-object v0, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    #@50
    .line 132
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 9
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v5, 0x0

    #@3
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@9
    move-result v2

    #@a
    .line 99
    .local v2, "version":I
    const/4 v3, 0x2

    #@b
    if-eq v2, v3, :cond_0

    #@d
    if-eq v2, v4, :cond_0

    #@f
    .line 100
    const-string/jumbo v3, "SyncStatusInfo"

    #@12
    new-instance v6, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v7, "Unknown version: "

    #@1a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v6

    #@1e
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v6

    #@22
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v6

    #@26
    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 102
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2c
    move-result v3

    #@2d
    iput v3, p0, Landroid/content/SyncStatusInfo;->authorityId:I

    #@2f
    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@32
    move-result-wide v6

    #@33
    iput-wide v6, p0, Landroid/content/SyncStatusInfo;->totalElapsedTime:J

    #@35
    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@38
    move-result v3

    #@39
    iput v3, p0, Landroid/content/SyncStatusInfo;->numSyncs:I

    #@3b
    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3e
    move-result v3

    #@3f
    iput v3, p0, Landroid/content/SyncStatusInfo;->numSourcePoll:I

    #@41
    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@44
    move-result v3

    #@45
    iput v3, p0, Landroid/content/SyncStatusInfo;->numSourceServer:I

    #@47
    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4a
    move-result v3

    #@4b
    iput v3, p0, Landroid/content/SyncStatusInfo;->numSourceLocal:I

    #@4d
    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@50
    move-result v3

    #@51
    iput v3, p0, Landroid/content/SyncStatusInfo;->numSourceUser:I

    #@53
    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@56
    move-result-wide v6

    #@57
    iput-wide v6, p0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    #@59
    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@5c
    move-result v3

    #@5d
    iput v3, p0, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    #@5f
    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@62
    move-result-wide v6

    #@63
    iput-wide v6, p0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    #@65
    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@68
    move-result v3

    #@69
    iput v3, p0, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    #@6b
    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6e
    move-result-object v3

    #@6f
    iput-object v3, p0, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    #@71
    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@74
    move-result-wide v6

    #@75
    iput-wide v6, p0, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    #@77
    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7a
    move-result v3

    #@7b
    if-eqz v3, :cond_3

    #@7d
    move v3, v4

    #@7e
    :goto_0
    iput-boolean v3, p0, Landroid/content/SyncStatusInfo;->pending:Z

    #@80
    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@83
    move-result v3

    #@84
    if-eqz v3, :cond_1

    #@86
    move v5, v4

    #@87
    :cond_1
    iput-boolean v5, p0, Landroid/content/SyncStatusInfo;->initialize:Z

    #@89
    .line 117
    if-ne v2, v4, :cond_4

    #@8b
    .line 118
    iput-object v8, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    #@8d
    .line 97
    :cond_2
    :goto_1
    return-void

    #@8e
    :cond_3
    move v3, v5

    #@8f
    .line 115
    goto :goto_0

    #@90
    .line 120
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@93
    move-result v0

    #@94
    .line 121
    .local v0, "N":I
    if-gez v0, :cond_5

    #@96
    .line 122
    iput-object v8, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    #@98
    goto :goto_1

    #@99
    .line 124
    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    #@9b
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@9e
    iput-object v3, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    #@a0
    .line 125
    const/4 v1, 0x0

    #@a1
    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_2

    #@a3
    .line 126
    iget-object v3, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    #@a5
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@a8
    move-result-wide v4

    #@a9
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@ac
    move-result-object v4

    #@ad
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@b0
    .line 125
    add-int/lit8 v1, v1, 0x1

    #@b2
    goto :goto_2
.end method

.method private ensurePeriodicSyncTimeSize(I)V
    .locals 6
    .param p1, "index"    # I

    #@0
    .prologue
    .line 186
    iget-object v2, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 187
    new-instance v2, Ljava/util/ArrayList;

    #@6
    const/4 v3, 0x0

    #@7
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@a
    iput-object v2, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    #@c
    .line 190
    :cond_0
    add-int/lit8 v1, p1, 0x1

    #@e
    .line 191
    .local v1, "requiredSize":I
    iget-object v2, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@13
    move-result v2

    #@14
    if-ge v2, v1, :cond_1

    #@16
    .line 192
    iget-object v2, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    #@18
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@1b
    move-result v0

    #@1c
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@1e
    .line 193
    iget-object v2, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    #@20
    const-wide/16 v4, 0x0

    #@22
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@29
    .line 192
    add-int/lit8 v0, v0, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 185
    .end local v0    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 67
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getLastFailureMesgAsInt(I)I
    .locals 4
    .param p1, "def"    # I

    #@0
    .prologue
    .line 57
    iget-object v1, p0, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    #@2
    invoke-static {v1}, Landroid/content/ContentResolver;->syncErrorStringToInt(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    .line 58
    .local v0, "i":I
    if-lez v0, :cond_0

    #@8
    .line 59
    return v0

    #@9
    .line 61
    :cond_0
    const-string/jumbo v1, "Sync"

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "Unknown lastFailureMesg:"

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    iget-object v3, p0, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 62
    return p1
.end method

.method public getPeriodicSyncTime(I)J
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 162
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v0

    #@a
    if-ge p1, v0, :cond_0

    #@c
    .line 163
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Ljava/lang/Long;

    #@14
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@17
    move-result-wide v0

    #@18
    return-wide v0

    #@19
    .line 165
    :cond_0
    const-wide/16 v0, 0x0

    #@1b
    return-wide v0
.end method

.method public removePeriodicSyncTime(I)V
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 170
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v0

    #@a
    if-ge p1, v0, :cond_0

    #@c
    .line 171
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@11
    .line 169
    :cond_0
    return-void
.end method

.method public setPeriodicSyncTime(IJ)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "when"    # J

    #@0
    .prologue
    .line 157
    invoke-direct {p0, p1}, Landroid/content/SyncStatusInfo;->ensurePeriodicSyncTimeSize(I)V

    #@3
    .line 158
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    #@5
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 154
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 8
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 71
    const/4 v3, 0x2

    #@3
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 72
    iget v3, p0, Landroid/content/SyncStatusInfo;->authorityId:I

    #@8
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@b
    .line 73
    iget-wide v6, p0, Landroid/content/SyncStatusInfo;->totalElapsedTime:J

    #@d
    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    #@10
    .line 74
    iget v3, p0, Landroid/content/SyncStatusInfo;->numSyncs:I

    #@12
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 75
    iget v3, p0, Landroid/content/SyncStatusInfo;->numSourcePoll:I

    #@17
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 76
    iget v3, p0, Landroid/content/SyncStatusInfo;->numSourceServer:I

    #@1c
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 77
    iget v3, p0, Landroid/content/SyncStatusInfo;->numSourceLocal:I

    #@21
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 78
    iget v3, p0, Landroid/content/SyncStatusInfo;->numSourceUser:I

    #@26
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    .line 79
    iget-wide v6, p0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    #@2b
    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    #@2e
    .line 80
    iget v3, p0, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    #@30
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@33
    .line 81
    iget-wide v6, p0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    #@35
    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    #@38
    .line 82
    iget v3, p0, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    #@3a
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@3d
    .line 83
    iget-object v3, p0, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    #@3f
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@42
    .line 84
    iget-wide v6, p0, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    #@44
    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    #@47
    .line 85
    iget-boolean v3, p0, Landroid/content/SyncStatusInfo;->pending:Z

    #@49
    if-eqz v3, :cond_0

    #@4b
    move v3, v4

    #@4c
    :goto_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@4f
    .line 86
    iget-boolean v3, p0, Landroid/content/SyncStatusInfo;->initialize:Z

    #@51
    if-eqz v3, :cond_1

    #@53
    :goto_1
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@56
    .line 87
    iget-object v3, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    #@58
    if-eqz v3, :cond_2

    #@5a
    .line 88
    iget-object v3, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    #@5c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5f
    move-result v3

    #@60
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@63
    .line 89
    iget-object v3, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    #@65
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@68
    move-result-object v2

    #@69
    .local v2, "periodicSyncTime$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@6c
    move-result v3

    #@6d
    if-eqz v3, :cond_3

    #@6f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@72
    move-result-object v3

    #@73
    check-cast v3, Ljava/lang/Long;

    #@75
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    #@78
    move-result-wide v0

    #@79
    .line 90
    .local v0, "periodicSyncTime":J
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@7c
    goto :goto_2

    #@7d
    .end local v0    # "periodicSyncTime":J
    .end local v2    # "periodicSyncTime$iterator":Ljava/util/Iterator;
    :cond_0
    move v3, v5

    #@7e
    .line 85
    goto :goto_0

    #@7f
    :cond_1
    move v4, v5

    #@80
    .line 86
    goto :goto_1

    #@81
    .line 93
    :cond_2
    const/4 v3, -0x1

    #@82
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@85
    .line 70
    :cond_3
    return-void
.end method
